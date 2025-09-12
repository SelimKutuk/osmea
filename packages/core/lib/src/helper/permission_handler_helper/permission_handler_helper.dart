library permission_handler_helper;

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:permission_handler/permission_handler.dart' as ph;
import '../device_info_helper.dart';
import '../local_storage/local_storage_helper.dart';
import 'abstract/permission_handler_base.dart';
import 'models/permission_models.dart';

/// 🔐 Permission Handler Helper for managing runtime permissions
/// 
/// This helper provides a unified API for managing runtime permissions across
/// different platforms (Android/iOS) with features like:
/// - Centralized permission management
/// - Consistent user experience
/// - Cross-platform support
/// - Extensible permission types
/// - Safe defaults and error handling
/// 
/// ## Supported Permissions
/// 
/// - **Camera**: Access to device camera for photo/video capture
/// - **Microphone**: Access to device microphone for audio recording
/// - **Location**: Access to device location services
/// - **Storage**: Access to device storage for file operations
/// - **Photos**: Access to photo library (iOS) / Media files (Android)
/// - **Notifications**: Permission to send push notifications
/// - **Contacts**: Access to device contacts
/// - **Calendar**: Access to device calendar
/// 
/// ## Usage Examples
/// 
/// ### Basic Permission Request
/// ```dart
/// final permissionHelper = PermissionHandlerHelper.instance;
/// 
/// // Request camera permission
/// final granted = await permissionHelper.requestPermission(AppPermission.camera);
/// if (granted) {
///   // Camera access granted, proceed with camera operations
///   openCamera();
/// } else {
///   // Camera access denied, show alternative UI or message
///   showPermissionDeniedMessage();
/// }
/// ```
/// 
/// ### Check Permission Status
/// ```dart
/// // Check if permission is already granted
/// final hasPermission = await permissionHelper.checkPermission(AppPermission.location);
/// if (hasPermission) {
///   startLocationTracking();
/// }
/// ```
/// 
/// ### Multiple Permissions
/// ```dart
/// // Request multiple permissions at once
/// final results = await permissionHelper.requestMultiplePermissions([
///   AppPermission.camera,
///   AppPermission.microphone,
/// ]);
/// 
/// if (results[AppPermission.camera] == ph.PermissionStatus.granted &&
///     results[AppPermission.microphone] == ph.PermissionStatus.granted) {
///   // Both permissions granted
///   startVideoRecording();
/// }
/// ```
/// 
/// ### Handle Permanently Denied Permissions
/// ```dart
/// final status = await permissionHelper.getPermissionStatus(AppPermission.storage);
/// if (status == ph.PermissionStatus.permanentlyDenied) {
///   // Show dialog explaining the permission and offer to open settings
///   final shouldOpenSettings = await showPermissionDialog();
///   if (shouldOpenSettings) {
///     await permissionHelper.openAppSettings();
///   }
/// }
/// ```
/// 
/// ### Permission Rationale
/// ```dart
/// // Check if we should show rationale (Android)
/// if (await permissionHelper.shouldShowRequestPermissionRationale(AppPermission.camera)) {
///   // Show explanation before requesting permission
///   await showPermissionExplanationDialog();
/// }
/// 
/// // Then request permission
/// await permissionHelper.requestPermission(AppPermission.camera);
/// ```


/// Main PermissionHandlerHelper class implementing centralized permission management
class PermissionHandlerHelper implements IPermissionHandlerBase {
  // Singleton pattern implementation
  static final PermissionHandlerHelper _instance = PermissionHandlerHelper._internal();
  static PermissionHandlerHelper get instance => _instance;
  PermissionHandlerHelper._internal();
  
  /// Factory constructor for easy access
  factory PermissionHandlerHelper() => _instance;

  /// Local storage helper instance for caching permission states
  final LocalStorageHelper _localStorage = LocalStorageHelper();
  
  /// Flag to track if local storage is initialized
  bool _isStorageInitialized = false;

  /// Permission cache keys prefix
  static const String _permissionPrefix = 'permission_';
  static const String _permissionTimestampPrefix = 'permission_timestamp_';
  static const String _permissionCacheValidityHours = 'permission_cache_validity_hours';
  
  /// Default cache validity in hours
  static const int _defaultCacheValidityHours = 24;

  /// Initialize local storage for permission caching
  Future<void> _initializeStorage() async {
    if (_isStorageInitialized) return;
    
    try {
      await _localStorage.init();
      _isStorageInitialized = true;
      debugPrint('🗂️ Permission storage initialized successfully');
    } catch (e) {
      debugPrint('🔴 Failed to initialize permission storage: $e');
      _isStorageInitialized = false;
    }
  }

  /// Get cache key for permission
  String _getPermissionCacheKey(AppPermission permission) {
    return '$_permissionPrefix${permission.name}';
  }

  /// Get timestamp cache key for permission
  String _getPermissionTimestampKey(AppPermission permission) {
    return '$_permissionTimestampPrefix${permission.name}';
  }

  /// Check if cached permission is still valid
  Future<bool> _isCacheValid(AppPermission permission) async {
    if (!_isStorageInitialized) return false;

    try {
      final timestampStr = await _localStorage.getItem(_getPermissionTimestampKey(permission));
      if (timestampStr == null) return false;

      final timestamp = int.tryParse(timestampStr.toString());
      if (timestamp == null) return false;

      final cacheValidityHours = await _localStorage.getItem(_permissionCacheValidityHours) ?? _defaultCacheValidityHours;
      final validityMs = (cacheValidityHours as int) * 60 * 60 * 1000; // Convert hours to milliseconds
      final now = DateTime.now().millisecondsSinceEpoch;

      final isValid = (now - timestamp) < validityMs;
      debugPrint('📅 Cache validity for ${permission.name}: $isValid (age: ${(now - timestamp) ~/ (60 * 1000)} minutes)');
      
      return isValid;
    } catch (e) {
      debugPrint('🔴 Error checking cache validity for ${permission.name}: $e');
      return false;
    }
  }

  /// Cache permission status
  Future<void> _cachePermissionStatus(AppPermission permission, ph.PermissionStatus status) async {
    if (!_isStorageInitialized) {
      await _initializeStorage();
      if (!_isStorageInitialized) return;
    }

    try {
      final cacheKey = _getPermissionCacheKey(permission);
      final timestampKey = _getPermissionTimestampKey(permission);
      final now = DateTime.now().millisecondsSinceEpoch;

      await _localStorage.setItem(cacheKey, status.toString());
      await _localStorage.setItem(timestampKey, now.toString());
      
      debugPrint('💾 Cached permission status: ${permission.name} = ${status.toString()}');
    } catch (e) {
      debugPrint('🔴 Error caching permission status for ${permission.name}: $e');
    }
  }

  /// Get cached permission status
  Future<ph.PermissionStatus?> _getCachedPermissionStatus(AppPermission permission) async {
    if (!_isStorageInitialized) {
      await _initializeStorage();
      if (!_isStorageInitialized) return null;
    }

    try {
      if (!(await _isCacheValid(permission))) {
        debugPrint('⏰ Cache expired for ${permission.name}');
        return null;
      }

      final cacheKey = _getPermissionCacheKey(permission);
      final cachedStatusStr = await _localStorage.getItem(cacheKey);
      
      if (cachedStatusStr == null) {
        debugPrint('📭 No cached status found for ${permission.name}');
        return null;
      }

      // Parse PermissionStatus from string
      final statusString = cachedStatusStr.toString().split('.').last;
      for (final status in ph.PermissionStatus.values) {
        if (status.toString().split('.').last == statusString) {
          debugPrint('📋 Retrieved cached permission status: ${permission.name} = ${status.toString()}');
          return status;
        }
      }

      debugPrint('🔴 Failed to parse cached status for ${permission.name}: $cachedStatusStr');
      return null;
    } catch (e) {
      debugPrint('🔴 Error getting cached permission status for ${permission.name}: $e');
      return null;
    }
  }

  /// Clear permission cache
  Future<void> clearPermissionCache([AppPermission? specificPermission]) async {
    if (!_isStorageInitialized) {
      await _initializeStorage();
      if (!_isStorageInitialized) return;
    }

    try {
      if (specificPermission != null) {
        // Clear specific permission cache
        await _localStorage.removeItem(_getPermissionCacheKey(specificPermission));
        await _localStorage.removeItem(_getPermissionTimestampKey(specificPermission));
        debugPrint('🗑️ Cleared cache for ${specificPermission.name}');
      } else {
        // Clear all permission caches
        final allItems = await _localStorage.getAllItems();
        for (final key in allItems.keys) {
          if (key.startsWith(_permissionPrefix) || key.startsWith(_permissionTimestampPrefix)) {
            await _localStorage.removeItem(key);
          }
        }
        debugPrint('🗑️ Cleared all permission caches');
      }
    } catch (e) {
      debugPrint('🔴 Error clearing permission cache: $e');
    }
  }

  /// Set cache validity period in hours
  Future<void> setCacheValidityHours(int hours) async {
    if (!_isStorageInitialized) {
      await _initializeStorage();
      if (!_isStorageInitialized) return;
    }

    try {
      await _localStorage.setItem(_permissionCacheValidityHours, hours);
      debugPrint('⏱️ Cache validity set to $hours hours');
    } catch (e) {
      debugPrint('🔴 Error setting cache validity: $e');
    }
  }

  /// Direct permission request without cache or smart logic (internal use)
  Future<bool> _requestPermissionDirect(AppPermission appPermission) async {
    try {
      final permissionName = _getPermissionName(appPermission);
      debugPrint('🔐 Requesting $permissionName permission (direct)...');
      
      final permission = _mapToPermission(appPermission);
      final status = await permission.request();
      
      // Cache the new status immediately after request
      await _cachePermissionStatus(appPermission, status);
      
      final isGranted = status == ph.PermissionStatus.granted;
      
      if (isGranted) {
        debugPrint('✅ $permissionName permission granted (direct)');
      } else {
        debugPrint('❌ $permissionName permission denied (direct): $status');
      }
      
      return isGranted;
    } catch (e) {
      final permissionName = _getPermissionName(appPermission);
      debugPrint('🔴 Error requesting $permissionName permission (direct): $e');
      return false;
    }
  }

  /// Direct permission check without cache or smart logic (internal use)
  Future<bool> _checkPermissionDirect(AppPermission appPermission) async {
    try {
      final permission = _mapToPermission(appPermission);
      final status = await permission.status;
      
      // Cache the result
      await _cachePermissionStatus(appPermission, status);
      
      final isGranted = status == ph.PermissionStatus.granted;
      final permissionName = _getPermissionName(appPermission);
      
      debugPrint('🔍 $permissionName permission status (direct): $status (granted: $isGranted)');
      
      return isGranted;
    } catch (e) {
      final permissionName = _getPermissionName(appPermission);
      debugPrint('🔴 Error checking $permissionName permission (direct): $e');
      return false;
    }
  }

  /// Direct permission status without cache or smart logic (internal use)
  Future<PermissionResult> _getPermissionStatusDirect(AppPermission appPermission) async {
    try {
      final permission = _mapToPermission(appPermission);
      final status = await permission.status;
      
      // Cache the result
      await _cachePermissionStatus(appPermission, status);
      
      final result = PermissionResult.fromStatus(appPermission, status);
      final permissionName = _getPermissionName(appPermission);
      
      debugPrint('📊 $permissionName permission detailed status (direct): $result');
      
      return result;
    } catch (e) {
      final permissionName = _getPermissionName(appPermission);
      final errorMsg = 'Error getting $permissionName permission status (direct): $e';
      debugPrint('🔴 $errorMsg');
      
      return PermissionResult.error(appPermission, errorMsg);
    }
  }

  /// Direct multiple permissions request without smart logic (internal use)
  Future<Map<AppPermission, ph.PermissionStatus>> _requestMultiplePermissionsDirect(List<AppPermission> appPermissions) async {
    try {
      debugPrint('🔐 Requesting multiple permissions (direct): ${appPermissions.map(_getPermissionName).join(', ')}');
      
      // Map AppPermission to Permission objects
      final permissions = appPermissions.map(_mapToPermission).toList();
      
      // Request all permissions at once
      final statuses = await permissions.request();
      
      // Map back to AppPermission enum and cache results
      final result = <AppPermission, ph.PermissionStatus>{};
      for (int i = 0; i < appPermissions.length; i++) {
        final appPermission = appPermissions[i];
        final permission = permissions[i];
        final status = statuses[permission] ?? ph.PermissionStatus.denied;
        
        result[appPermission] = status;
        
        // Cache each permission status
        await _cachePermissionStatus(appPermission, status);
        
        final permissionName = _getPermissionName(appPermission);
        if (status == ph.PermissionStatus.granted) {
          debugPrint('✅ $permissionName permission granted (direct)');
        } else {
          debugPrint('❌ $permissionName permission denied (direct): $status');
        }
      }
      
      return result;
    } catch (e) {
      debugPrint('🔴 Error requesting multiple permissions (direct): $e');
      
      // Return denied status for all permissions in case of error
      final result = <AppPermission, ph.PermissionStatus>{};
      for (final appPermission in appPermissions) {
        result[appPermission] = ph.PermissionStatus.denied;
        // Cache denied status
        await _cachePermissionStatus(appPermission, ph.PermissionStatus.denied);
      }
      return result;
    }
  }

  /// Map AppPermission enum to permission_handler Permission objects
  ph.Permission _mapToPermission(AppPermission appPermission) {
    switch (appPermission) {
      case AppPermission.camera:
        return ph.Permission.camera;
      case AppPermission.microphone:
        return ph.Permission.microphone;
      case AppPermission.location:
        return ph.Permission.location;
      case AppPermission.locationWhenInUse:
        return ph.Permission.locationWhenInUse;
      case AppPermission.storage:
        return ph.Permission.storage;
      case AppPermission.photos:
        return ph.Permission.photos;
      case AppPermission.notifications:
        return ph.Permission.notification;
      case AppPermission.contacts:
        return ph.Permission.contacts;
      case AppPermission.calendar:
        return ph.Permission.calendarFullAccess;
      case AppPermission.manageExternalStorage:
        return ph.Permission.manageExternalStorage;
    }
  }

  /// Handle storage permission based on Android API level
  Future<bool> _requestStoragePermissionSmart(AppPermission appPermission) async {
    if (!Platform.isAndroid) {
      // iOS için normal storage permission
      return _requestPermissionDirect(appPermission);
    }

    try {
      final apiLevel = await DeviceInfoHelper.instance.getAndroidApiLevel();
      
      debugPrint('🤖 Android API Level: $apiLevel');

      if (apiLevel >= 33) {
        // Android 13+ (API 33+) - Granular media permissions
        if (appPermission == AppPermission.storage) {
          debugPrint('📱 Android 13+ detected - requesting granular media permissions');
          final results = await _requestMultiplePermissionsDirect([
            AppPermission.photos, // READ_MEDIA_IMAGES, READ_MEDIA_VIDEO
            // Note: For full storage access, we might need more specific permissions
            // but photos permission should cover most image/video use cases
          ]);
          final granted = results.values.any((status) => status == ph.PermissionStatus.granted);
          debugPrint('🔍 Granular media permissions result: $granted');
          return granted;
        }
      } else if (apiLevel >= 30) {
        // Android 11-12 (API 30-32) - MANAGE_EXTERNAL_STORAGE
        if (appPermission == AppPermission.storage) {
          debugPrint('📱 Android 11-12 detected - requesting MANAGE_EXTERNAL_STORAGE');
          return _requestPermissionDirect(AppPermission.manageExternalStorage);
        }
      } else {
        // Android 6-10 (API 23-29) - Legacy storage permissions
        debugPrint('📱 Android 6-10 detected - using legacy storage permissions');
        return _requestPermissionDirect(appPermission);
      }
      
      return _requestPermissionDirect(appPermission);
    } catch (e) {
      debugPrint('🔴 Error in smart storage permission: $e');
      return _requestPermissionDirect(appPermission);
    }
  }

  /// Check storage permission status based on Android API level
  Future<bool> _checkStoragePermissionSmart(AppPermission appPermission) async {
    if (!Platform.isAndroid) {
      // iOS için normal storage permission check
      return _checkPermissionDirect(appPermission);
    }

    try {
      final apiLevel = await DeviceInfoHelper.instance.getAndroidApiLevel();
      
      debugPrint('🔍 Checking storage permission on API Level: $apiLevel');

      if (apiLevel >= 33) {
        // Android 13+ (API 33+) - Check granular media permissions
        debugPrint('📱 Android 13+ - checking granular media permissions');
        final photosGranted = await _checkPermissionDirect(AppPermission.photos);
        debugPrint('🖼️ Photos permission status: $photosGranted');
        return photosGranted;
      } else if (apiLevel >= 30) {
        // Android 11-12 (API 30-32) - Check MANAGE_EXTERNAL_STORAGE
        debugPrint('📱 Android 11-12 - checking MANAGE_EXTERNAL_STORAGE');
        return _checkPermissionDirect(AppPermission.manageExternalStorage);
      } else {
        // Android 6-10 (API 23-29) - Check legacy storage permissions
        debugPrint('📱 Android 6-10 - checking legacy storage permissions');
        final permission = _mapToPermission(appPermission);
        final status = await permission.status;
        return status == ph.PermissionStatus.granted;
      }
    } catch (e) {
      debugPrint('🔴 Error in smart storage permission check: $e');
      final permission = _mapToPermission(appPermission);
      final status = await permission.status;
      return status == ph.PermissionStatus.granted;
    }
  }

  /// Get storage permission status based on Android API level
  Future<PermissionResult> _getStoragePermissionStatusSmart(AppPermission appPermission) async {
    if (!Platform.isAndroid) {
      // iOS için normal storage permission status
      final permission = _mapToPermission(appPermission);
      final status = await permission.status;
      return PermissionResult.fromStatus(appPermission, status);
    }

    try {
      final apiLevel = await DeviceInfoHelper.instance.getAndroidApiLevel();
      
      debugPrint('📊 Getting storage permission status on API Level: $apiLevel');

      if (apiLevel >= 33) {
        // Android 13+ (API 33+) - Check granular media permissions
        debugPrint('📱 Android 13+ - getting granular media permission status');
        final photosResult = await _getPermissionStatusDirect(AppPermission.photos);
        
        // Storage permission status'unu photos permission'a göre ayarla
        final storageStatus = photosResult.isGranted ? ph.PermissionStatus.granted : ph.PermissionStatus.denied;
        final result = PermissionResult.fromStatus(appPermission, storageStatus);
        
        debugPrint('📊 Storage permission mapped from Photos: ${result.isGranted}');
        return result;
      } else if (apiLevel >= 30) {
        // Android 11-12 (API 30-32) - Check MANAGE_EXTERNAL_STORAGE
        debugPrint('📱 Android 11-12 - getting MANAGE_EXTERNAL_STORAGE status');
        final manageResult = await _getPermissionStatusDirect(AppPermission.manageExternalStorage);
        
        // Storage permission status'unu manage external storage'a göre ayarla
        final storageStatus = manageResult.isGranted ? ph.PermissionStatus.granted : ph.PermissionStatus.denied;
        return PermissionResult.fromStatus(appPermission, storageStatus);
      } else {
        // Android 6-10 (API 23-29) - Check legacy storage permissions
        debugPrint('📱 Android 6-10 - getting legacy storage permission status');
        final permission = _mapToPermission(appPermission);
        final status = await permission.status;
        return PermissionResult.fromStatus(appPermission, status);
      }
    } catch (e) {
      debugPrint('🔴 Error in smart storage permission status: $e');
      final permission = _mapToPermission(appPermission);
      final status = await permission.status;
      return PermissionResult.fromStatus(appPermission, status);
    }
  }

  /// Get human-readable permission name for logging and debugging
  String _getPermissionName(AppPermission permission) {
    switch (permission) {
      case AppPermission.camera:
        return 'Camera';
      case AppPermission.microphone:
        return 'Microphone';
      case AppPermission.location:
        return 'Location';
      case AppPermission.locationWhenInUse:
        return 'Location (When in Use)';
      case AppPermission.storage:
        return 'Storage';
      case AppPermission.photos:
        return 'Photos';
      case AppPermission.notifications:
        return 'Notifications';
      case AppPermission.contacts:
        return 'Contacts';
      case AppPermission.calendar:
        return 'Calendar';
      case AppPermission.manageExternalStorage:
        return 'Manage External Storage';
    }
  }

  @override
  Future<bool> requestPermission(AppPermission appPermission) async {
   
    if (appPermission == AppPermission.storage) {
      final result = await _requestStoragePermissionSmart(appPermission);
      // Clear cache after request to ensure fresh status
      await clearPermissionCache(appPermission);
      return result;
    }

    try {
      final permissionName = _getPermissionName(appPermission);
      debugPrint('🔐 Requesting $permissionName permission...');
      
      final permission = _mapToPermission(appPermission);
      final status = await permission.request();
      
      // Cache the new status immediately after request
      await _cachePermissionStatus(appPermission, status);
      
      final isGranted = status == ph.PermissionStatus.granted;
      
      if (isGranted) {
        debugPrint('✅ $permissionName permission granted');
      } else {
        debugPrint('❌ $permissionName permission denied: $status');
      }
      
      return isGranted;
    } catch (e) {
      final permissionName = _getPermissionName(appPermission);
      debugPrint('🔴 Error requesting $permissionName permission: $e');
      return false;
    }
  }

  @override
  Future<bool> checkPermission(AppPermission appPermission) async {
   
    if (appPermission == AppPermission.storage) {
      return _checkStoragePermissionSmart(appPermission);
    }

    try {
      final permissionName = _getPermissionName(appPermission);
      
      // Check cache first
      final cachedStatus = await _getCachedPermissionStatus(appPermission);
      if (cachedStatus != null) {
        final isGranted = cachedStatus == ph.PermissionStatus.granted;
        debugPrint('📋 $permissionName permission status (cached): $cachedStatus (granted: $isGranted)');
        return isGranted;
      }

      // Cache miss - check actual permission
      final permission = _mapToPermission(appPermission);
      final status = await permission.status;
      
      // Cache the result
      await _cachePermissionStatus(appPermission, status);
      
      final isGranted = status == ph.PermissionStatus.granted;
      debugPrint('🔍 $permissionName permission status (fresh): $status (granted: $isGranted)');
      
      return isGranted;
    } catch (e) {
      final permissionName = _getPermissionName(appPermission);
      debugPrint('🔴 Error checking $permissionName permission: $e');
      return false;
    }
  }

  @override
  Future<PermissionResult> getPermissionStatus(AppPermission appPermission) async {
   
    if (appPermission == AppPermission.storage) {
      return _getStoragePermissionStatusSmart(appPermission);
    }

    try {
      final permissionName = _getPermissionName(appPermission);
      
      // Check cache first
      final cachedStatus = await _getCachedPermissionStatus(appPermission);
      if (cachedStatus != null) {
        final result = PermissionResult.fromStatus(appPermission, cachedStatus);
        debugPrint('📊 $permissionName permission detailed status (cached): $result');
        return result;
      }

      // Cache miss - get fresh status
      final permission = _mapToPermission(appPermission);
      final status = await permission.status;
      
      // Cache the result
      await _cachePermissionStatus(appPermission, status);
      
      final result = PermissionResult.fromStatus(appPermission, status);
      debugPrint('📊 $permissionName permission detailed status (fresh): $result');
      
      return result;
    } catch (e) {
      final permissionName = _getPermissionName(appPermission);
      final errorMsg = 'Error getting $permissionName permission status: $e';
      debugPrint('🔴 $errorMsg');
      
      return PermissionResult.error(appPermission, errorMsg);
    }
  }

  @override
  Future<Map<AppPermission, ph.PermissionStatus>> requestMultiplePermissions(List<AppPermission> appPermissions) async {
    try {
      debugPrint('🔐 Requesting multiple permissions: ${appPermissions.map(_getPermissionName).join(', ')}');
      
      // Map AppPermission to Permission objects
      final permissions = appPermissions.map(_mapToPermission).toList();
      
      // Request all permissions at once
      final statuses = await permissions.request();
      
      // Map back to AppPermission enum and cache results
      final result = <AppPermission, ph.PermissionStatus>{};
      for (int i = 0; i < appPermissions.length; i++) {
        final appPermission = appPermissions[i];
        final permission = permissions[i];
        final status = statuses[permission] ?? ph.PermissionStatus.denied;
        
        result[appPermission] = status;
        
        // Cache each permission status
        await _cachePermissionStatus(appPermission, status);
        
        final permissionName = _getPermissionName(appPermission);
        if (status == ph.PermissionStatus.granted) {
          debugPrint('✅ $permissionName permission granted');
        } else {
          debugPrint('❌ $permissionName permission denied: $status');
        }
      }
      
      return result;
    } catch (e) {
      debugPrint('🔴 Error requesting multiple permissions: $e');
      
      // Return denied status for all permissions in case of error
      final result = <AppPermission, ph.PermissionStatus>{};
      for (final appPermission in appPermissions) {
        result[appPermission] = ph.PermissionStatus.denied;
        // Cache denied status
        await _cachePermissionStatus(appPermission, ph.PermissionStatus.denied);
      }
      return result;
    }
  }

  @override
  Future<bool> openAppSettings() async {
    try {
      debugPrint('⚙️ Opening app settings for manual permission management...');
      
      // Global openAppSettings fonksiyonunu prefix ile çağır
      final opened = await ph.openAppSettings();
      
      if (opened) {
        debugPrint('✅ App settings opened successfully');
      } else {
        debugPrint('❌ Failed to open app settings');
      }
      
      return opened;
    } catch (e) {
      debugPrint('🔴 Error opening app settings: $e');
      return false;
    }
  }

  @override
  Future<bool> shouldShowRequestPermissionRationale(AppPermission appPermission) async {
    try {
      final permission = _mapToPermission(appPermission);
      final shouldShow = await permission.shouldShowRequestRationale;
      
      final permissionName = _getPermissionName(appPermission);
      debugPrint('🤔 Should show $permissionName rationale: $shouldShow');
      
      return shouldShow;
    } catch (e) {
      final permissionName = _getPermissionName(appPermission);
      debugPrint('🔴 Error checking rationale for $permissionName: $e');
      return false;
    }
  }

  /// Check if permission is permanently denied and needs settings redirect
  Future<bool> isPermanentlyDenied(AppPermission appPermission) async {
    try {
      final result = await getPermissionStatus(appPermission);
      return result.isPermanentlyDenied;
    } catch (e) {
      final permissionName = _getPermissionName(appPermission);
      debugPrint('🔴 Error checking if $permissionName is permanently denied: $e');
      return false;
    }
  }

  /// Get permission status as string for debugging
  Future<String> getPermissionStatusString(AppPermission appPermission) async {
    try {
      final result = await getPermissionStatus(appPermission);
      return result.status.toString().split('.').last; // Get enum name without prefix
    } catch (e) {
      return 'error';
    }
  }

  /// Convenience method to check if all permissions in a list are granted
  Future<bool> areAllPermissionsGranted(List<AppPermission> appPermissions) async {
    try {
      final results = await Future.wait(
        appPermissions.map((permission) => checkPermission(permission)),
      );
      
      final allGranted = results.every((granted) => granted);
      debugPrint('🔍 All permissions granted: $allGranted');
      
      return allGranted;
    } catch (e) {
      debugPrint('🔴 Error checking multiple permissions: $e');
      return false;
    }
  }

  /// Get a summary of all permission statuses for debugging
  Future<Map<String, String>> getPermissionsSummary() async {
    final summary = <String, String>{};
    
    for (final permission in AppPermission.values) {
      final status = await getPermissionStatusString(permission);
      final name = _getPermissionName(permission);
      
      // Check if status comes from cache
      final cachedStatus = await _getCachedPermissionStatus(permission);
      final statusWithSource = cachedStatus != null ? '$status (cached)' : '$status (fresh)';
      
      summary[name] = statusWithSource;
    }
    
    debugPrint('📋 Permissions Summary: $summary');
    return summary;
  }

  /// Get cache statistics for debugging
  Future<Map<String, dynamic>> getCacheStatistics() async {
    if (!_isStorageInitialized) {
      await _initializeStorage();
      if (!_isStorageInitialized) {
        return {'error': 'Storage not initialized'};
      }
    }

    try {
      final allItems = await _localStorage.getAllItems();
      final cacheStats = <String, dynamic>{};
      
      int cachedPermissions = 0;
      int expiredCache = 0;
      final cacheDetails = <String, dynamic>{};
      
      for (final permission in AppPermission.values) {
        final cacheKey = _getPermissionCacheKey(permission);
        final timestampKey = _getPermissionTimestampKey(permission);
        
        if (allItems.containsKey(cacheKey) && allItems.containsKey(timestampKey)) {
          cachedPermissions++;
          
          final isValid = await _isCacheValid(permission);
          if (!isValid) expiredCache++;
          
          final timestamp = int.tryParse(allItems[timestampKey].toString()) ?? 0;
          final cacheAge = DateTime.now().millisecondsSinceEpoch - timestamp;
          
          cacheDetails[permission.name] = {
            'status': allItems[cacheKey].toString(),
            'age_minutes': (cacheAge / (60 * 1000)).round(),
            'is_valid': isValid,
          };
        }
      }
      
      cacheStats['total_permissions'] = AppPermission.values.length;
      cacheStats['cached_permissions'] = cachedPermissions;
      cacheStats['expired_cache'] = expiredCache;
      cacheStats['cache_hit_rate'] = cachedPermissions > 0 ? '${((cachedPermissions - expiredCache) / cachedPermissions * 100).toStringAsFixed(1)}%' : '0%';
      cacheStats['cache_details'] = cacheDetails;
      
      final validityHours = await _localStorage.getItem(_permissionCacheValidityHours) ?? _defaultCacheValidityHours;
      cacheStats['cache_validity_hours'] = validityHours;
      
      debugPrint('📊 Permission Cache Statistics: $cacheStats');
      return cacheStats;
    } catch (e) {
      debugPrint('🔴 Error getting cache statistics: $e');
      return {'error': e.toString()};
    }
  }
}