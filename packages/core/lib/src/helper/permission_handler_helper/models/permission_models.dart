import 'package:permission_handler/permission_handler.dart';

/// Enum representing different types of permissions used in the OSMEA app
/// 
/// This enum provides a unified way to reference different permission types
/// across the application, abstracting away platform-specific differences.
enum AppPermission {
  /// Camera permission for photo/video capture
  /// 
  /// Required for:
  /// - Taking photos
  /// - Recording videos
  /// - QR code scanning
  /// - Augmented reality features
  camera,
  
  /// Microphone permission for audio recording
  /// 
  /// Required for:
  /// - Voice recording
  /// - Video recording with audio
  /// - Voice calls
  /// - Audio notes
  microphone,
  
  /// Location permission for location-based services
  /// 
  /// Required for:
  /// - GPS tracking
  /// - Location-based notifications
  /// - Maps and navigation
  /// - Geofencing
  location,
  
  /// Location permission only when app is in use
  /// 
  /// More restrictive than [location], only allows access when app is active.
  /// Required for:
  /// - Basic location services
  /// - Location while using the app
  locationWhenInUse,
  
  /// Storage permission for file operations
  /// 
  /// Required for:
  /// - Reading/writing files
  /// - Accessing downloads folder
  /// - File management operations
  /// - Document storage
  /// 
  /// Note: On Android 13+, this maps to granular media permissions
  storage,
  
  /// Photos/Media permission for accessing photo library
  /// 
  /// Required for:
  /// - Accessing photo gallery
  /// - Reading image files
  /// - Media file operations
  /// - Photo editing features
  photos,
  
  /// Notification permission for push notifications
  /// 
  /// Required for:
  /// - Push notifications
  /// - Local notifications
  /// - Alert messages
  /// - Background notifications
  notifications,
  
  /// Contacts permission for accessing device contacts
  /// 
  /// Required for:
  /// - Reading contact list
  /// - Adding new contacts
  /// - Contact synchronization
  /// - Social features
  contacts,
  
  /// Calendar permission for accessing device calendar
  /// 
  /// Required for:
  /// - Reading calendar events
  /// - Creating calendar entries
  /// - Event reminders
  /// - Schedule management
  calendar,
  
  /// External storage management (Android 11+)
  /// 
  /// Special permission for Android 11+ that allows broader file system access.
  /// Required for:
  /// - Full external storage access
  /// - File manager functionality
  /// - Legacy app compatibility
  manageExternalStorage,
}

/// Result class for permission operations with detailed information
/// 
/// This class provides comprehensive information about a permission request
/// or status check, including the current status and various state flags.
class PermissionResult {
  /// The requested permission type
  final AppPermission permission;
  
  /// The current status of the permission
  final PermissionStatus status;
  
  /// Whether the permission was granted
  final bool isGranted;
  
  /// Whether the permission was permanently denied
  /// 
  /// When true, the user has denied the permission and checked "Don't ask again"
  /// on Android, or the permission is restricted by system policy.
  final bool isPermanentlyDenied;
  
  /// Whether the permission is restricted (iOS)
  /// 
  /// On iOS, this indicates the permission is restricted by parental controls
  /// or device management policies.
  final bool isRestricted;
  
  /// Whether the permission has limited access (iOS 14+)
  /// 
  /// On iOS 14+, some permissions like photo library can have limited access
  /// where only selected items are accessible.
  final bool isLimited;
  
  /// Error message if any occurred during the operation
  final String? error;

  /// Creates a new PermissionResult
  const PermissionResult({
    required this.permission,
    required this.status,
    required this.isGranted,
    required this.isPermanentlyDenied,
    required this.isRestricted,
    required this.isLimited,
    this.error,
  });

  /// Create a PermissionResult from PermissionStatus
  /// 
  /// This factory constructor converts a [PermissionStatus] from the
  /// permission_handler package into a [PermissionResult] with additional
  /// computed properties for easier use.
  /// 
  /// Example:
  /// ```dart
  /// final result = PermissionResult.fromStatus(
  ///   AppPermission.camera,
  ///   PermissionStatus.granted,
  /// );
  /// ```
  factory PermissionResult.fromStatus(AppPermission permission, PermissionStatus status, [String? error]) {
    return PermissionResult(
      permission: permission,
      status: status,
      isGranted: status == PermissionStatus.granted,
      isPermanentlyDenied: status == PermissionStatus.permanentlyDenied,
      isRestricted: status == PermissionStatus.restricted,
      isLimited: status == PermissionStatus.limited,
      error: error,
    );
  }

  /// Create an error result
  /// 
  /// This factory constructor creates a [PermissionResult] representing
  /// an error state when permission operations fail.
  /// 
  /// Example:
  /// ```dart
  /// final errorResult = PermissionResult.error(
  ///   AppPermission.camera,
  ///   'Failed to request camera permission',
  /// );
  /// ```
  factory PermissionResult.error(AppPermission permission, String error) {
    return PermissionResult(
      permission: permission,
      status: PermissionStatus.denied,
      isGranted: false,
      isPermanentlyDenied: false,
      isRestricted: false,
      isLimited: false,
      error: error,
    );
  }

  /// String representation of the permission result
  @override
  String toString() {
    return 'PermissionResult(permission: $permission, status: $status, isGranted: $isGranted, error: $error)';
  }

  /// Check if the permission can be requested again
  /// 
  /// Returns false if the permission is permanently denied or restricted,
  /// indicating that the user needs to manually enable it in settings.
  bool get canRequestAgain => !isPermanentlyDenied && !isRestricted;

  /// Get a user-friendly description of the permission status
  String get statusDescription {
    if (error != null) return 'Error: $error';
    
    switch (status) {
      case PermissionStatus.granted:
        return isLimited ? 'Limited access granted' : 'Access granted';
      case PermissionStatus.denied:
        return 'Access denied';
      case PermissionStatus.permanentlyDenied:
        return 'Access permanently denied - please enable in settings';
      case PermissionStatus.restricted:
        return 'Access restricted by system policy';
      case PermissionStatus.limited:
        return 'Limited access granted';
      case PermissionStatus.provisional:
        return 'Provisional access granted';
    }
  }
}
