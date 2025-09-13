import '../models/permission_models.dart';
import 'package:permission_handler/permission_handler.dart';

/// Abstract base class for permission handling operations
/// 
/// This interface defines the contract for permission management operations
/// that must be implemented by concrete permission handler classes.
/// 
/// ## Key Features
/// - Single and multiple permission requests
/// - Permission status checking and detailed status retrieval
/// - Cache management for performance optimization
/// - Cross-platform support (Android/iOS)
/// - Settings redirection for manual permission management
/// 
/// ## Implementation Notes
/// Concrete implementations should handle:
/// - Platform-specific permission differences
/// - Android API level compatibility (especially for storage permissions)
/// - Caching mechanisms for performance
/// - Error handling and fallback scenarios
abstract class IPermissionHandlerBase {
  /// Request a single permission from the user
  /// 
  /// Returns `true` if the permission is granted, `false` otherwise.
  /// This method will show the system permission dialog if needed.
  /// 
  /// Example:
  /// ```dart
  /// final granted = await permissionHandler.requestPermission(AppPermission.camera);
  /// if (granted) {
  ///   // Permission granted, proceed with camera operations
  /// }
  /// ```
  Future<bool> requestPermission(AppPermission permission);
  
  /// Check if a permission is currently granted
  /// 
  /// Returns `true` if the permission is granted, `false` otherwise.
  /// This method does not show any dialogs, it only checks the current status.
  /// 
  /// Example:
  /// ```dart
  /// final hasPermission = await permissionHandler.checkPermission(AppPermission.location);
  /// if (hasPermission) {
  ///   // Permission already granted, start location tracking
  /// }
  /// ```
  Future<bool> checkPermission(AppPermission permission);
  
  /// Get detailed permission status information
  /// 
  /// Returns a [PermissionResult] object containing detailed information
  /// about the permission status including whether it's granted, denied,
  /// permanently denied, restricted, or has limited access.
  /// 
  /// Example:
  /// ```dart
  /// final result = await permissionHandler.getPermissionStatus(AppPermission.storage);
  /// if (result.isPermanentlyDenied) {
  ///   // Show dialog to redirect user to settings
  /// }
  /// ```
  Future<PermissionResult> getPermissionStatus(AppPermission permission);
  
  /// Request multiple permissions at once
  /// 
  /// Returns a map containing the status of each requested permission.
  /// This is more efficient than requesting permissions one by one.
  /// 
  /// Example:
  /// ```dart
  /// final results = await permissionHandler.requestMultiplePermissions([
  ///   AppPermission.camera,
  ///   AppPermission.microphone,
  /// ]);
  /// ```
  Future<Map<AppPermission, PermissionStatus>> requestMultiplePermissions(List<AppPermission> permissions);
  
  /// Open the app settings page for manual permission management
  /// 
  /// Returns `true` if the settings page was successfully opened, `false` otherwise.
  /// This is typically used when permissions are permanently denied.
  /// 
  /// Example:
  /// ```dart
  /// if (await permissionHandler.openAppSettings()) {
  ///   // Settings opened successfully
  /// }
  /// ```
  Future<bool> openAppSettings();
  
  /// Check if we should show rationale for permission request (Android only)
  /// 
  /// On Android, this method indicates whether the app should show an explanation
  /// to the user before requesting a permission. Returns `false` on iOS.
  /// 
  /// Example:
  /// ```dart
  /// if (await permissionHandler.shouldShowRequestPermissionRationale(AppPermission.camera)) {
  ///   // Show explanation dialog before requesting permission
  /// }
  /// ```
  Future<bool> shouldShowRequestPermissionRationale(AppPermission permission);
  
  /// Clear permission cache for specific permission or all permissions
  /// 
  /// This method clears cached permission statuses to force fresh checks.
  /// If [specificPermission] is null, all cached permissions are cleared.
  /// 
  /// Example:
  /// ```dart
  /// // Clear specific permission cache
  /// await permissionHandler.clearPermissionCache(AppPermission.camera);
  /// 
  /// // Clear all permission caches
  /// await permissionHandler.clearPermissionCache();
  /// ```
  Future<void> clearPermissionCache([AppPermission? specificPermission]);
  
  /// Set cache validity period in hours
  /// 
  /// Configures how long permission statuses should be cached before
  /// requiring a fresh check. Default is typically 24 hours.
  /// 
  /// Example:
  /// ```dart
  /// // Cache permissions for 12 hours
  /// await permissionHandler.setCacheValidityHours(12);
  /// ```
  Future<void> setCacheValidityHours(int hours);
}
