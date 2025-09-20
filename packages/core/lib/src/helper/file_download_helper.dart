import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'url_launcher_helper.dart';
import 'application_share_helper.dart';
import 'permission_handler_helper/permission_handler_helper.dart';
import 'permission_handler_helper/models/permission_models.dart';
import 'device_info_helper.dart';

/// Enum representing different storage locations for downloaded files
/// 
/// This enum allows users to choose between app-private storage and
/// public system directories that are visible to other apps and file managers.
enum StorageLocation {
  /// App's private storage directory (default behavior)
  /// 
  /// Files stored here are only accessible to the app and won't appear
  /// in system file managers or Documents/Downloads apps.
  /// - No special permissions required
  /// - Files are automatically cleaned up when app is uninstalled
  /// - Suitable for app-specific data, cache files, temporary files
  appPrivate,
  
  /// Public Documents directory visible to system file managers
  /// 
  /// Files stored here appear in the system's Documents folder and
  /// are accessible to other apps and file managers.
  /// - Requires storage permissions on Android
  /// - Files persist even after app uninstallation
  /// - Suitable for user documents, PDFs, text files
  publicDocuments,
  
  /// Public Downloads directory visible to system file managers
  /// 
  /// Files stored here appear in the system's Downloads folder and
  /// are accessible to other apps and file managers.
  /// - Requires storage permissions on Android
  /// - Files persist even after app uninstallation
  /// - Suitable for downloaded content, media files, archives
  publicDownloads,
}

/// 📁 File Download Helper for handling file downloads with progress tracking
/// 
/// This helper provides a unified API for downloading files from URLs with
/// features like progress tracking, custom storage paths, error handling,
/// and retry logic.
/// 
/// ## Example Usage
/// 
/// ### Basic Download
/// ```dart
/// final file = await FileDownloadHelper.downloadFile(
///   url: 'https://example.com/document.pdf',
///   fileName: 'my_document.pdf',
///   onProgress: (received, total) {
///     final progress = (received / total * 100).toInt();
///     print('Download progress: $progress%');
///   },
/// );
/// print('Downloaded to: ${file.path}');
/// ```
/// 
/// ### Download to Specific Locations
/// ```dart
/// // Download to temporary directory
/// final tempFile = await FileDownloadHelper.downloadToTemp(
///   url: 'https://api.com/data.json',
///   fileName: 'temp_data.json',
/// );
/// 
/// // Download to documents directory
/// final docFile = await FileDownloadHelper.downloadToDocuments(
///   url: 'https://example.com/report.pdf',
///   fileName: 'monthly_report.pdf',
/// );
/// 
/// // Download to app support directory
/// final appFile = await FileDownloadHelper.downloadToAppSupport(
///   url: 'https://api.com/config.json',
///   fileName: 'app_config.json',
/// );
/// ```
/// 
/// ### Advanced Configuration
/// ```dart
/// try {
///   final file = await FileDownloadHelper.downloadFile(
///     url: 'https://example.com/large_file.zip',
///     fileName: 'large_file.zip',
///     directory: '/custom/path',
///     maxRetries: 5,
///     retryDelay: Duration(seconds: 3),
///     timeout: Duration(minutes: 5),
///     onProgress: (received, total) {
///       final progress = (received / total * 100).toStringAsFixed(1);
///       print('Progress: $progress% ($received/$total bytes)');
///     },
///   );
///   print('Success: ${file.path}');
/// } on FileDownloadException catch (e) {
///   print('Download failed: ${e.message}');
/// } on DirectoryException catch (e) {
///   print('Directory error: ${e.message}');
/// }
/// ```
/// 
/// ### Utility Functions
/// ```dart
/// // Validate URL
/// if (FileDownloadHelper.isValidUrl('https://example.com/file.pdf')) {
///   print('URL is valid');
/// }
/// 
/// // Get file extension
/// final extension = FileDownloadHelper.getFileExtension('document.pdf');
/// print('Extension: $extension'); // Output: pdf
/// 
/// // Generate unique filename
/// final uniqueName = await FileDownloadHelper.generateUniqueFileName(
///   '/path/to/directory',
///   'document.pdf',
/// );
/// print('Unique name: $uniqueName'); // Output: document_1641234567890.pdf
/// 
/// // Cancel all downloads
/// FileDownloadHelper.cancelAllDownloads();
/// ```
class FileDownloadHelper {
  static late Dio _dio = Dio();
  
  /// Permission handler instance for managing storage permissions
  static final PermissionHandlerHelper _permissionHelper = PermissionHandlerHelper.instance;
  
  /// Device info helper instance for platform-specific behavior
  static final DeviceInfoHelper _deviceInfoHelper = DeviceInfoHelper.instance;

  /// Check and request storage permissions for public storage operations
  /// 
  /// Returns true if permissions are granted, false otherwise
  static Future<bool> _checkStoragePermissions() async {
    try {
      debugPrint('🔐 Checking storage permissions...');
      
      // Android scoped storage nuances: for Android 11+ we need MANAGE_EXTERNAL_STORAGE
      if (Platform.isAndroid) {
        final apiLevel = await _deviceInfoHelper.getAndroidApiLevel();
        if (apiLevel >= 30) {
          final hasManageAllFiles = await _permissionHelper.checkPermission(AppPermission.manageExternalStorage);
          if (hasManageAllFiles) {
            debugPrint('✅ Manage External Storage already granted');
            return true;
          }
          debugPrint('📋 Requesting Manage External Storage (All files access)...');
          final grantedManage = await _permissionHelper.requestPermission(AppPermission.manageExternalStorage);
          if (grantedManage) {
            debugPrint('✅ Manage External Storage granted');
            return true;
          }
          // If not granted, fall through to rationale/status handling below
        } else {
          // Android 6-10 legacy storage permission
          final hasPermission = await _permissionHelper.checkPermission(AppPermission.storage);
          if (hasPermission) {
            debugPrint('✅ Storage permission already granted');
            return true;
          }
          debugPrint('📋 Requesting legacy Storage permission...');
          final granted = await _permissionHelper.requestPermission(AppPermission.storage);
          if (granted) {
            debugPrint('✅ Storage permission granted');
            return true;
          }
        }
      } else {
        // Non-Android platforms do not require external storage permissions
        return true;
      }
      
      // Check if we should show rationale (Android only)
      final shouldShowRationale = await _permissionHelper.shouldShowRequestPermissionRationale(
        Platform.isAndroid ? AppPermission.manageExternalStorage : AppPermission.storage,
      );
      if (shouldShowRationale) {
        debugPrint('💡 Should show storage permission rationale');
      }
      
      // Re-check status to provide better error message
      final result = await _permissionHelper.getPermissionStatus(
        Platform.isAndroid ? AppPermission.manageExternalStorage : AppPermission.storage,
      );
      if (result.isGranted) {
        return true;
      } else {
        if (result.isPermanentlyDenied) {
          debugPrint('🚫 Storage permission permanently denied');
          throw StoragePermissionException(
            'Storage access is permanently denied. Please enable "All files access" in app settings to save to public directories.'
          );
        } else {
          debugPrint('❌ Storage permission denied');
          throw StoragePermissionException(
            'Storage access is required to save files to public directories.'
          );
        }
      }
    } catch (e) {
      if (e is StoragePermissionException) {
        rethrow;
      }
      debugPrint('🔴 Error checking storage permissions: $e');
      throw StoragePermissionException('Failed to check storage permissions: $e');
    }
  }

  /// Get platform-specific public directory path
  /// 
  /// Returns the appropriate public directory path based on storage location and platform
  static Future<String> _getPublicDirectoryPath(StorageLocation location) async {
    try {
      if (Platform.isAndroid) {
        final apiLevel = await _deviceInfoHelper.getAndroidApiLevel();
        debugPrint('🤖 Android API Level: $apiLevel');
        
        if (apiLevel >= 30) {
          // Android 11+ - Use MediaStore approach or external storage directories
          switch (location) {
            case StorageLocation.publicDocuments:
              // Try to get external storage directory and append Documents
              final externalDir = await getExternalStorageDirectory();
              if (externalDir != null) {
                // Navigate to the public Documents directory
                final documentsPath = '${externalDir.path.split('/Android').first}/Documents';
                debugPrint('📁 Android 11+ Documents path: $documentsPath');
                return documentsPath;
              }
              break;
            case StorageLocation.publicDownloads:
              // Try to get external storage directory and append Download
              final externalDir = await getExternalStorageDirectory();
              if (externalDir != null) {
                // Navigate to the public Downloads directory
                final downloadsPath = '${externalDir.path.split('/Android').first}/Download';
                debugPrint('📁 Android 11+ Downloads path: $downloadsPath');
                return downloadsPath;
              }
              break;
            case StorageLocation.appPrivate:
              // This shouldn't be called for app private, but handle it
              final appDir = await getApplicationDocumentsDirectory();
              return appDir.path;
          }
        } else {
          // Android 6-10 - Use traditional external storage
          final externalDir = await getExternalStorageDirectory();
          if (externalDir != null) {
            switch (location) {
              case StorageLocation.publicDocuments:
                final documentsPath = '${externalDir.path.split('/Android').first}/Documents';
                debugPrint('📁 Legacy Android Documents path: $documentsPath');
                return documentsPath;
              case StorageLocation.publicDownloads:
                final downloadsPath = '${externalDir.path.split('/Android').first}/Download';
                debugPrint('📁 Legacy Android Downloads path: $downloadsPath');
                return downloadsPath;
              case StorageLocation.appPrivate:
                return externalDir.path;
            }
          }
        }
        
        // Fallback for Android if external storage is not available
        debugPrint('⚠️ External storage not available, using app-specific external directory');
        final externalDir = await getExternalStorageDirectory();
        if (externalDir != null) {
          final subDir = location == StorageLocation.publicDocuments ? 'Documents' : 'Downloads';
          return '${externalDir.path}/$subDir';
        }
        
      } else if (Platform.isIOS) {
        // iOS - Use Documents directory for both cases as iOS handles file sharing differently
        switch (location) {
          case StorageLocation.publicDocuments:
          case StorageLocation.publicDownloads:
            final documentsDir = await getApplicationDocumentsDirectory();
            debugPrint('📁 iOS Documents path: ${documentsDir.path}');
            return documentsDir.path;
          case StorageLocation.appPrivate:
            final documentsDir = await getApplicationDocumentsDirectory();
            return documentsDir.path;
        }
      }
      
      // Ultimate fallback
      debugPrint('⚠️ Using fallback directory path');
      final appDir = await getApplicationDocumentsDirectory();
      return appDir.path;
      
    } catch (e) {
      debugPrint('🔴 Error getting public directory path: $e');
      throw DirectoryException('Failed to get public directory path: $e');
    }
  }

  /// Private method to validate common download parameters
  static void _validateParameters({
    required String url,
    required String fileName,
    required int maxRetries,
    required Duration retryDelay,
    required Duration timeout,
  }) {
    // Assertions for development mode
    assert(url.isNotEmpty, 'URL cannot be empty');
    assert(fileName.isNotEmpty, 'File name cannot be empty');
    assert(maxRetries > 0, 'Max retries must be greater than 0');
    assert(!retryDelay.isNegative, 'Retry delay cannot be negative');
    assert(!timeout.isNegative, 'Timeout cannot be negative');
    assert(timeout.inMilliseconds > 0, 'Timeout must be greater than 0');
    assert(UrlLauncher.isValidUrl(url), 'URL must be a valid HTTP or HTTPS URL');
  }

  /// Downloads a file from the given URL
  /// 
  /// [url] → URL of the file to download
  /// [fileName] → Name to save the file as
  /// [directory] → Optional custom directory path
  /// [onProgress] → Optional progress callback (received bytes, total bytes)
  /// [maxRetries] → Maximum number of retry attempts (default: 3)
  /// [retryDelay] → Delay between retry attempts (default: 2 seconds)
  /// [timeout] → Request timeout duration (default: 30 seconds)
  /// 
  /// Returns the downloaded [File] object
  /// 
  /// Throws [FileDownloadException] on download failure
  /// Throws [DirectoryException] on directory creation failure
  static Future<File> downloadFile({
    required String url,
    required String fileName,
    String? directory,
    Function(int received, int total)? onProgress,
    int maxRetries = 3,
    Duration retryDelay = const Duration(seconds: 2),
    Duration timeout = const Duration(seconds: 30),
  }) async {
    // Parameters already validated by _validateParameters
    _validateParameters(
      url: url,
      fileName: fileName,
      maxRetries: maxRetries,
      retryDelay: retryDelay,
      timeout: timeout,
    );

    int retries = 0;
    File file;

    while (true) {
      try {
        // Mobile/Desktop platform: normal file download
        final dir = directory ?? await _getDefaultDownloadDirectory();
        
        // Ensure directory exists
        await _ensureDirectoryExists(dir);
        
        final filePath = '$dir/$fileName';

        debugPrint('📥 Starting download: $url');
        debugPrint('💾 Saving to: $filePath');

        // Configure timeouts for this specific request
        final originalConnectTimeout = _dio.options.connectTimeout;
        final originalReceiveTimeout = _dio.options.receiveTimeout;
        final originalSendTimeout = _dio.options.sendTimeout;

        try {
          _dio.options.connectTimeout = timeout;
          _dio.options.receiveTimeout = timeout;
          _dio.options.sendTimeout = timeout;

          await _dio.download(
            url,
            filePath,
            onReceiveProgress: (received, total) {
              if (total > 0) {
                final progress = (received / total * 100).toStringAsFixed(1);
                debugPrint('📊 Download progress: $progress% ($received/$total bytes)');
              }
              onProgress?.call(received, total);
            },
          );
        } finally {
          // Restore original timeouts
          _dio.options.connectTimeout = originalConnectTimeout;
          _dio.options.receiveTimeout = originalReceiveTimeout;
          _dio.options.sendTimeout = originalSendTimeout;
        }

        file = File(filePath);
        
        if (!file.existsSync()) {
          throw FileDownloadException('File was not created successfully');
        }

        debugPrint('✅ Download completed: ${file.path}');
        return file;
        
      } catch (e) {
        retries++;
        debugPrint('❌ Download attempt $retries failed: $e');
        
        if (retries >= maxRetries) {
          debugPrint('🚫 Max retries ($maxRetries) reached. Download failed.');
          
          if (e is DioException) {
            throw FileDownloadException(_getDioErrorMessage(e));
          } else {
            throw FileDownloadException('Download failed after $maxRetries attempts: $e');
          }
        }
        
        debugPrint('🔄 Retrying in ${retryDelay.inSeconds} seconds...');
        await Future.delayed(retryDelay);
      }
    }
  }

  /// Downloads a file to the temporary directory
  /// 
  /// Useful for temporary files that don't need permanent storage
  static Future<File> downloadToTemp({
    required String url,
    required String fileName,
    Function(int received, int total)? onProgress,
    int maxRetries = 3,
    Duration retryDelay = const Duration(seconds: 2),
    Duration timeout = const Duration(seconds: 30),
  }) async {
    // Validate all parameters
    _validateParameters(
      url: url,
      fileName: fileName,
      maxRetries: maxRetries,
      retryDelay: retryDelay,
      timeout: timeout,
    );
    
    try {
      final tempDir = await getTemporaryDirectory();
      return downloadFile(
        url: url,
        fileName: fileName,
        directory: tempDir.path,
        onProgress: onProgress,
        maxRetries: maxRetries,
        retryDelay: retryDelay,
        timeout: timeout,
      );
    } catch (e) {
      debugPrint('⚠️ Failed to get temporary directory, using fallback: $e');
      // Fallback to application support directory
      final appDir = await getApplicationSupportDirectory();
      return downloadFile(
        url: url,
        fileName: 'temp_$fileName',
        directory: appDir.path,
        onProgress: onProgress,
        maxRetries: maxRetries,
        retryDelay: retryDelay,
        timeout: timeout,
      );
    }
  }

  /// Downloads a file to the application documents directory
  /// 
  /// Files stored here persist across app updates and are backed up
  static Future<File> downloadToDocuments({
    required String url,
    required String fileName,
    Function(int received, int total)? onProgress,
    int maxRetries = 3,
    Duration retryDelay = const Duration(seconds: 2),
    Duration timeout = const Duration(seconds: 30),
  }) async {
    // Validate all parameters
    _validateParameters(
      url: url,
      fileName: fileName,
      maxRetries: maxRetries,
      retryDelay: retryDelay,
      timeout: timeout,
    );
    
    try {
      final docsDir = await getApplicationDocumentsDirectory();
      return downloadFile(
        url: url,
        fileName: fileName,
        directory: docsDir.path,
        onProgress: onProgress,
        maxRetries: maxRetries,
        retryDelay: retryDelay,
        timeout: timeout,
      );
    } catch (e) {
      debugPrint('⚠️ Failed to get documents directory, using fallback: $e');
      // Fallback to application support directory
      final appDir = await getApplicationSupportDirectory();
      return downloadFile(
        url: url,
        fileName: 'docs_$fileName',
        directory: appDir.path,
        onProgress: onProgress,
        maxRetries: maxRetries,
        retryDelay: retryDelay,
        timeout: timeout,
      );
    }
  }

  /// Downloads a file to the application support directory
  /// 
  /// Files stored here are for app-specific data that shouldn't be visible to users
  static Future<File> downloadToAppSupport({
    required String url,
    required String fileName,
    Function(int received, int total)? onProgress,
    int maxRetries = 3,
    Duration retryDelay = const Duration(seconds: 2),
    Duration timeout = const Duration(seconds: 30),
  }) async {
    // Validate all parameters
    _validateParameters(
      url: url,
      fileName: fileName,
      maxRetries: maxRetries,
      retryDelay: retryDelay,
      timeout: timeout,
    );
    
    try {
      final supportDir = await getApplicationSupportDirectory();
      return downloadFile(
        url: url,
        fileName: fileName,
        directory: supportDir.path,
        onProgress: onProgress,
        maxRetries: maxRetries,
        retryDelay: retryDelay,
        timeout: timeout,
      );
    } catch (e) {
      debugPrint('⚠️ Failed to get app support directory, using fallback: $e');
      // Final fallback to temporary directory
      final tempDir = await getTemporaryDirectory();
      return downloadFile(
        url: url,
        fileName: 'support_$fileName',
        directory: tempDir.path,
        onProgress: onProgress,
        maxRetries: maxRetries,
        retryDelay: retryDelay,
        timeout: timeout,
      );
    }
  }

  /// Downloads a file to the public Documents directory
  /// 
  /// Files stored here are visible in the system Documents folder and accessible
  /// to other apps and file managers. Requires storage permissions on Android.
  static Future<File> downloadToPublicDocuments({
    required String url,
    required String fileName,
    Function(int received, int total)? onProgress,
    int maxRetries = 3,
    Duration retryDelay = const Duration(seconds: 2),
    Duration timeout = const Duration(seconds: 30),
  }) async {
    // Validate all parameters
    _validateParameters(
      url: url,
      fileName: fileName,
      maxRetries: maxRetries,
      retryDelay: retryDelay,
      timeout: timeout,
    );
    
    // Check and request storage permissions for public storage
    await _checkStoragePermissions();
    
    try {
      final publicDir = await _getPublicDirectoryPath(StorageLocation.publicDocuments);
      return downloadFile(
        url: url,
        fileName: fileName,
        directory: publicDir,
        onProgress: onProgress,
        maxRetries: maxRetries,
        retryDelay: retryDelay,
        timeout: timeout,
      );
    } catch (e) {
      debugPrint('⚠️ Failed to download to public documents directory: $e');
      if (e is StoragePermissionException) {
        rethrow;
      }
      // Fallback to app documents directory if public access fails
      debugPrint('📁 Falling back to app documents directory');
      final appDir = await getApplicationDocumentsDirectory();
      return downloadFile(
        url: url,
        fileName: 'public_docs_$fileName',
        directory: appDir.path,
        onProgress: onProgress,
        maxRetries: maxRetries,
        retryDelay: retryDelay,
        timeout: timeout,
      );
    }
  }

  /// Downloads a file to the public Downloads directory
  /// 
  /// Files stored here are visible in the system Downloads folder and accessible
  /// to other apps and file managers. Requires storage permissions on Android.
  static Future<File> downloadToPublicDownloads({
    required String url,
    required String fileName,
    Function(int received, int total)? onProgress,
    int maxRetries = 3,
    Duration retryDelay = const Duration(seconds: 2),
    Duration timeout = const Duration(seconds: 30),
  }) async {
    // Validate all parameters
    _validateParameters(
      url: url,
      fileName: fileName,
      maxRetries: maxRetries,
      retryDelay: retryDelay,
      timeout: timeout,
    );
    
    // Check and request storage permissions for public storage
    await _checkStoragePermissions();
    
    try {
      final publicDir = await _getPublicDirectoryPath(StorageLocation.publicDownloads);
      return downloadFile(
        url: url,
        fileName: fileName,
        directory: publicDir,
        onProgress: onProgress,
        maxRetries: maxRetries,
        retryDelay: retryDelay,
        timeout: timeout,
      );
    } catch (e) {
      debugPrint('⚠️ Failed to download to public downloads directory: $e');
      if (e is StoragePermissionException) {
        rethrow;
      }
      // Fallback to app documents directory if public access fails
      debugPrint('📁 Falling back to app documents directory');
      final appDir = await getApplicationDocumentsDirectory();
      return downloadFile(
        url: url,
        fileName: 'public_dl_$fileName',
        directory: appDir.path,
        onProgress: onProgress,
        maxRetries: maxRetries,
        retryDelay: retryDelay,
        timeout: timeout,
      );
    }
  }

  /// Downloads a file with specified storage location
  /// 
  /// This is the most flexible download method that allows you to specify
  /// exactly where the file should be stored using the StorageLocation enum.
  static Future<File> downloadWithStorageLocation({
    required String url,
    required String fileName,
    required StorageLocation storageLocation,
    Function(int received, int total)? onProgress,
    int maxRetries = 3,
    Duration retryDelay = const Duration(seconds: 2),
    Duration timeout = const Duration(seconds: 30),
  }) async {
    // Validate all parameters
    _validateParameters(
      url: url,
      fileName: fileName,
      maxRetries: maxRetries,
      retryDelay: retryDelay,
      timeout: timeout,
    );
    
    switch (storageLocation) {
      case StorageLocation.appPrivate:
        return downloadFile(
          url: url,
          fileName: fileName,
          onProgress: onProgress,
          maxRetries: maxRetries,
          retryDelay: retryDelay,
          timeout: timeout,
        );
      case StorageLocation.publicDocuments:
        return downloadToPublicDocuments(
          url: url,
          fileName: fileName,
          onProgress: onProgress,
          maxRetries: maxRetries,
          retryDelay: retryDelay,
          timeout: timeout,
        );
      case StorageLocation.publicDownloads:
        return downloadToPublicDownloads(
          url: url,
          fileName: fileName,
          onProgress: onProgress,
          maxRetries: maxRetries,
          retryDelay: retryDelay,
          timeout: timeout,
        );
    }
  }

  /// Gets the default download directory based on platform
  static Future<String> _getDefaultDownloadDirectory() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      return directory.path;
    } catch (e) {
      debugPrint('⚠️ Failed to get application documents directory: $e');
      try {
        // Fallback to temporary directory
        final tempDir = await getTemporaryDirectory();
        return tempDir.path;
      } catch (e2) {
        debugPrint('⚠️ Failed to get temporary directory: $e2');
        // Ultimate fallback for mobile - use external storage directory via path_provider
        if (Platform.isAndroid) {
          try {
            // For Android, try external storage directory via path_provider
            final externalDir = await getExternalStorageDirectory();
            if (externalDir != null && await Directory(externalDir.path).exists()) {
              return externalDir.path;
            }
          } catch (e3) {
            debugPrint('⚠️ Failed to get external storage directory: $e3');
          }
        }
        // Final fallback - create downloads folder in app directory
        final appDir = await getApplicationSupportDirectory();
        final downloadsDir = Directory('${appDir.path}/downloads');
        if (!await downloadsDir.exists()) {
          await downloadsDir.create(recursive: true);
        }
        return downloadsDir.path;
      }
    }
  }

  /// Ensures the specified directory exists, creates it if it doesn't
  static Future<void> _ensureDirectoryExists(String directoryPath) async {
    assert(directoryPath.isNotEmpty, 'Directory path cannot be empty');
    
    try {
      final directory = Directory(directoryPath);
      if (!await directory.exists()) {
        debugPrint('📁 Creating directory: $directoryPath');
        await directory.create(recursive: true);
      }
    } catch (e) {
      throw DirectoryException('Failed to create directory: $directoryPath. Error: $e');
    }
  }

  /// Converts DioException to user-friendly error message
  static String _getDioErrorMessage(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return 'Connection timeout. Please check your internet connection.';
      case DioExceptionType.sendTimeout:
        return 'Send timeout. The request took too long to send.';
      case DioExceptionType.receiveTimeout:
        return 'Receive timeout. The server took too long to respond.';
      case DioExceptionType.badResponse:
        return 'Server error: ${e.response?.statusCode} ${e.response?.statusMessage}';
      case DioExceptionType.cancel:
        return 'Download was cancelled.';
      case DioExceptionType.connectionError:
        return 'Connection error. Please check your internet connection.';
      case DioExceptionType.badCertificate:
        return 'SSL certificate error. The connection is not secure.';
      case DioExceptionType.unknown:
        return 'Unknown error occurred: ${e.message}';
    }
  }

  /// Validates if a URL is properly formatted
  /// 
  /// Uses UrlLauncher.isValidUrl for validation
  static bool isValidUrl(String url) {
    return UrlLauncher.isValidUrl(url);
  }

  /// Gets the file extension from a URL or filename
  static String getFileExtension(String urlOrFileName) {
    assert(urlOrFileName.isNotEmpty, 'URL or filename cannot be empty');
    
    try {
      final uri = Uri.parse(urlOrFileName);
      final path = uri.path;
      final lastDotIndex = path.lastIndexOf('.');
      if (lastDotIndex != -1 && lastDotIndex < path.length - 1) {
        return path.substring(lastDotIndex + 1).toLowerCase();
      }
    } catch (e) {
      debugPrint('⚠️ Error extracting file extension: $e');
    }
    return '';
  }

  /// Generates a unique filename by appending timestamp if file already exists
  static Future<String> generateUniqueFileName(String directory, String fileName) async {
    assert(directory.isNotEmpty, 'Directory cannot be empty');
    assert(fileName.isNotEmpty, 'File name cannot be empty');
    final file = File('$directory/$fileName');
    if (!await file.exists()) {
      return fileName;
    }

    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final lastDotIndex = fileName.lastIndexOf('.');
    
    if (lastDotIndex != -1) {
      final nameWithoutExtension = fileName.substring(0, lastDotIndex);
      final extension = fileName.substring(lastDotIndex);
      return '${nameWithoutExtension}_$timestamp$extension';
    } else {
      return '${fileName}_$timestamp';
    }
  }

  /// Cancels all ongoing downloads
  static void cancelAllDownloads() {
    // Close the current Dio instance to cancel all ongoing requests
    _dio.close(force: true);
    // Create a new Dio instance for future downloads
    _dio = Dio();
    debugPrint('🚫 All downloads cancelled');
  }

  /// Opens a file with the system default application
  /// 
  /// Uses OpenFilex for reliable Android FileProvider handling and broad chooser coverage,
  /// with UrlLauncher-based fallbacks.
  static Future<bool> openFile(File file) async {
    try {
      if (!file.existsSync()) {
        debugPrint('❌ File does not exist: ${file.path}');
        return false;
      }
      
      final filePath = file.path;
      debugPrint('📱 Opening file: $filePath');
      
      // Try to open using file:// URI via UrlLauncher
      final fileUri = 'file://$filePath';
      if (await UrlLauncher.openUrl(fileUri)) {
        debugPrint('✅ File opened via file:// URI');
        return true;
      }
      
      // Android: try content URI intents for common apps where possible
      if (Platform.isAndroid) {
        // Best-effort: attempt to open via generic content authority paths
        final candidates = <String>[
          'content://com.android.externalstorage.documents/document/primary:Download',
          'content://downloads/my_downloads',
          'content://com.android.externalstorage.documents/document/primary:Documents',
        ];
        for (final uri in candidates) {
          if (await UrlLauncher.openUrl(uri)) {
            debugPrint('✅ File opened via Android content URI candidate');
            return true;
          }
        }
      }
      
      // Fallback: open containing directory
      debugPrint('🔄 Opening containing directory as fallback');
      return await _openContainingDirectory(file);
    } catch (e) {
      debugPrint('🔴 Error opening file: $e');
      return await _openContainingDirectory(file);
    }
  }

  /// Helper method to open containing directory when direct file opening fails
  /// 
  /// Uses UrlLauncher for directory opening functionality.
  static Future<bool> _openContainingDirectory(File file) async {
    try {
      final directory = file.parent;
      debugPrint('📂 Opening containing directory: ${directory.path}');
      
      if (Platform.isAndroid) {
        // For Android, try to open Downloads or Documents app
        final path = file.path.toLowerCase();
        
        if (path.contains('download')) {
          // Try to open Downloads app
          final success = await UrlLauncher.openUrl('content://downloads/my_downloads');
          if (success) return true;
        } else if (path.contains('document')) {
          // Try to open Documents/Files app
          final success = await UrlLauncher.openUrl('content://com.android.externalstorage.documents/document/primary:Documents');
          if (success) return true;
        }
        
        // Generic fallback: try to open file manager
        final success = await UrlLauncher.openUrl('content://com.android.externalstorage.documents/document/primary:');
        if (success) return true;
      }
      
      // Final fallback for all platforms
      final directoryUri = 'file://${directory.path}';
      return await UrlLauncher.openUrl(directoryUri);
    } catch (e) {
      debugPrint('🔴 Error opening containing directory: $e');
      return false;
    }
  }

  /// Shares a file using the centralized ApplicationShareHelper
  /// 
  /// Delegates sharing to ApplicationShareHelper.shareFile which wraps share_plus
  /// and handles cross-platform details.
  static Future<bool> shareFile(File file, {String? text, String? subject, String? fileName}) async {
    try {
      if (!file.existsSync()) {
        debugPrint('❌ File does not exist for sharing: ${file.path}');
        return false;
      }
      debugPrint('📤 Attempting to share file via ApplicationShareHelper: ${file.path}');
      final mimeType = _inferMimeType(file.path);
      return await ApplicationShareHelper.shareFile(
        file,
        text: text,
        subject: subject,
        fileName: fileName,
        mimeType: mimeType,
      );
    } catch (e) {
      debugPrint('🔴 Error sharing file: $e');
      return false;
    }
  }

  /// Best-effort MIME type inference from file extension
  static String? _inferMimeType(String path) {
    final ext = getFileExtension(path);
    switch (ext) {
      case 'pdf':
        return 'application/pdf';
      case 'png':
        return 'image/png';
      case 'jpg':
      case 'jpeg':
        return 'image/jpeg';
      case 'gif':
        return 'image/gif';
      case 'mp4':
        return 'video/mp4';
      case 'txt':
        return 'text/plain';
      case 'json':
        return 'application/json';
      case 'zip':
        return 'application/zip';
      default:
        return null;
    }
  }

  /// Reveals a file in the system file manager
  /// 
  /// On Android, this attempts to open the file's directory in a file manager.
  /// On iOS, this attempts to reveal the file in the Files app.
  /// 
  /// Uses Android-specific content URIs for better compatibility.
  /// 
  /// Returns true if the file manager was successfully opened, false otherwise.
  static Future<bool> revealInFileManager(File file) async {
    try {
      if (!file.existsSync()) {
        debugPrint('❌ File does not exist: ${file.path}');
        return false;
      }
      
      debugPrint('📂 Revealing file in file manager: ${file.path}');
      
      if (Platform.isAndroid) {
        // Use the same directory opening logic as the helper method
        return await _openContainingDirectory(file);
      } else {
        // iOS and other platforms
        final directory = file.parent;
        final directoryUri = 'file://${directory.path}';
        
        debugPrint('📁 Directory: ${directory.path}');
        
        final success = await UrlLauncher.openUrl(directoryUri);
        if (success) {
          debugPrint('✅ File manager opened successfully');
          return true;
        } else {
          debugPrint('❌ Failed to launch file manager');
          
          // Fallback: try to open the file itself
          debugPrint('🔄 Attempting fallback: opening file directly');
          return await openFile(file);
        }
      }
    } catch (e) {
      debugPrint('🔴 Error revealing file in file manager: $e');
      return await _openContainingDirectory(file);
    }
  }

  /// Opens app settings for manual permission management
  /// 
  /// This is useful when storage permissions are permanently denied
  /// and the user needs to manually enable them in system settings.
  /// 
  /// Returns true if settings were successfully opened, false otherwise.
  static Future<bool> openAppSettings() async {
    try {
      debugPrint('⚙️ Opening app settings for permission management');
      return await _permissionHelper.openAppSettings();
    } catch (e) {
      debugPrint('🔴 Error opening app settings: $e');
      return false;
    }
  }

  /// Checks if storage permissions are granted
  /// 
  /// This is a convenience method to check storage permissions without
  /// requesting them. Useful for UI state management.
  /// 
  /// Returns true if storage permissions are granted, false otherwise.
  static Future<bool> hasStoragePermissions() async {
    try {
      return await _permissionHelper.checkPermission(AppPermission.storage);
    } catch (e) {
      debugPrint('🔴 Error checking storage permissions: $e');
      return false;
    }
  }

  /// Gets detailed storage permission status
  /// 
  /// Returns a PermissionResult with detailed information about the
  /// storage permission status including whether it's permanently denied.
  static Future<PermissionResult> getStoragePermissionStatus() async {
    try {
      return await _permissionHelper.getPermissionStatus(AppPermission.storage);
    } catch (e) {
      debugPrint('🔴 Error getting storage permission status: $e');
      return PermissionResult.error(AppPermission.storage, e.toString());
    }
  }
}

/// Exception thrown when file download fails
class FileDownloadException implements Exception {
  final String message;
  
  const FileDownloadException(this.message);
  
  @override
  String toString() => 'FileDownloadException: $message';
}

/// Exception thrown when directory operations fail
class DirectoryException implements Exception {
  final String message;
  
  const DirectoryException(this.message);
  
  @override
  String toString() => 'DirectoryException: $message';
}

/// Exception thrown when storage permission operations fail
class StoragePermissionException implements Exception {
  final String message;
  
  const StoragePermissionException(this.message);
  
  @override
  String toString() => 'StoragePermissionException: $message';
}

