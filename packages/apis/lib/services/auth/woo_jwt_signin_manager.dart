import 'package:flutter/foundation.dart';
import 'package:apis/models/auth/woo_jwt_token.dart';
import 'package:apis/services/auth/woo_jwt_auth_service.dart';
import 'package:dio/dio.dart';

/// 🔐 JWT Sign-In Manager for WooCommerce
/// Provides easy-to-use methods for user sign-in and JWT token management
class WooJwtSignInManager {
  static WooJwtSignInManager? _instance;
  static WooJwtSignInManager get instance =>
      _instance ??= WooJwtSignInManager._internal();

  WooJwtSignInManager._internal();

  /// 🔑 Sign in user and automatically save JWT token to local storage
  Future<WooJwtSignInResult> signIn({
    required String username,
    required String password,
    String? brandName,
    Dio? customDio,
  }) async {
    try {
      debugPrint('🔐 Starting user sign-in process...');

      // Create Dio instance if not provided
      debugPrint('🔍 Creating Dio instance...');
      final dio = customDio ?? Dio();
      debugPrint('🔍 Dio instance created: $dio');

      // Create auth service
      debugPrint('🔍 Creating WooJwtAuthService...');
      final authService = WooJwtAuthService(dio);
      debugPrint('🔍 WooJwtAuthService created: $authService');

      // Authenticate user
      debugPrint('🔑 Authenticating user: $username');
      debugPrint(
          '🔍 Calling authService.authenticate with brandName: $brandName');
      debugPrint('🔍 About to call authService.authenticate...');
      final token = await authService.authenticate(
        username: username,
        password: password,
        brandName: brandName,
      );
      debugPrint('🔍 authService.authenticate completed');
      debugPrint(
          '🔍 Token received from authService: ${token.accessToken.substring(0, 20)}...');

      // Token is automatically saved by the auth service
      debugPrint('✅ User sign-in successful');
      debugPrint('📅 Token expires at: ${token.expiresAt}');

      return WooJwtSignInResult.success(
        token: token,
        message: 'Sign-in successful',
      );
    } catch (e) {
      debugPrint('❌ User sign-in failed: $e');

      return WooJwtSignInResult.failure(
        error: e.toString(),
        message: _getErrorMessage(e),
      );
    }
  }

  /// 🔄 Refresh JWT token and update local storage
  Future<WooJwtSignInResult> refreshToken({Dio? customDio}) async {
    try {
      debugPrint('🔄 Refreshing JWT token...');

      // Create Dio instance if not provided
      final dio = customDio ?? Dio();

      // Create auth service
      final authService = WooJwtAuthService(dio);

      // Refresh token
      final token = await authService.refreshToken();

      debugPrint('✅ Token refresh successful');

      return WooJwtSignInResult.success(
        token: token,
        message: 'Token refreshed successfully',
      );
    } catch (e) {
      debugPrint('❌ Token refresh failed: $e');

      return WooJwtSignInResult.failure(
        error: e.toString(),
        message: 'Token refresh failed: ${_getErrorMessage(e)}',
      );
    }
  }

  /// 🚪 Sign out user and clear JWT token from local storage
  Future<WooJwtSignOutResult> signOut({Dio? customDio}) async {
    try {
      debugPrint('🚪 Starting user sign-out process...');

      // Create Dio instance if not provided
      final dio = customDio ?? Dio();

      // Create auth service
      final authService = WooJwtAuthService(dio);

      // Logout user (clears token from storage)
      await authService.logout();

      debugPrint('✅ User sign-out successful');

      return WooJwtSignOutResult.success(
        message: 'Sign-out successful',
      );
    } catch (e) {
      debugPrint('❌ User sign-out failed: $e');

      return WooJwtSignOutResult.failure(
        error: e.toString(),
        message: 'Sign-out failed: ${_getErrorMessage(e)}',
      );
    }
  }

  /// 🔍 Check if user is currently signed in
  Future<bool> isSignedIn() async {
    try {
      final hasToken = await WooJwtTokenStorage.hasToken();
      if (!hasToken) return false;

      final isExpired = await WooJwtTokenStorage.isTokenExpired();
      return !isExpired;
    } catch (e) {
      debugPrint('❌ Error checking sign-in status: $e');
      return false;
    }
  }

  /// 📊 Get current user information from stored JWT
  Future<Map<String, dynamic>?> getCurrentUser() async {
    try {
      return await WooJwtTokenStorage.getUserData();
    } catch (e) {
      debugPrint('❌ Error getting current user: $e');
      return null;
    }
  }

  /// 📋 Get comprehensive sign-in status
  Future<WooJwtSignInStatus> getSignInStatus() async {
    try {
      final tokenInfo = await WooJwtTokenStorage.getTokenInfo();
      final storageStats = await WooJwtTokenStorage.getStorageStats();

      return WooJwtSignInStatus(
        isSignedIn:
            tokenInfo?['hasToken'] == true && tokenInfo?['isExpired'] == false,
        hasToken: tokenInfo?['hasToken'] == true,
        isExpired: tokenInfo?['isExpired'] == true,
        needsRefresh: tokenInfo?['needsRefresh'] == true,
        tokenInfo: tokenInfo,
        storageStats: storageStats,
      );
    } catch (e) {
      debugPrint('❌ Error getting sign-in status: $e');
      return WooJwtSignInStatus(
        isSignedIn: false,
        hasToken: false,
        isExpired: true,
        needsRefresh: false,
        error: e.toString(),
      );
    }
  }

  /// 🔄 Auto-refresh token if needed
  Future<bool> autoRefreshIfNeeded({Dio? customDio}) async {
    try {
      final needsRefresh = await WooJwtTokenStorage.needsRefresh();
      if (!needsRefresh) return true;

      debugPrint('🔄 Auto-refreshing token...');
      final result = await refreshToken(customDio: customDio);
      return result.isSuccess;
    } catch (e) {
      debugPrint('❌ Auto-refresh failed: $e');
      return false;
    }
  }

  /// 🧹 Clean up expired tokens
  Future<void> cleanupExpiredTokens() async {
    try {
      await WooJwtTokenStorage.cleanupExpiredTokens();
    } catch (e) {
      debugPrint('❌ Error cleaning up expired tokens: $e');
    }
  }

  /// 📈 Get storage statistics
  Future<Map<String, dynamic>> getStorageStats() async {
    try {
      return await WooJwtTokenStorage.getStorageStats();
    } catch (e) {
      debugPrint('❌ Error getting storage stats: $e');
      return {'error': e.toString()};
    }
  }

  /// 🔧 Get user-friendly error message
  String _getErrorMessage(dynamic error) {
    if (error.toString().contains('401')) {
      return 'Invalid username or password';
    } else if (error.toString().contains('403')) {
      return 'JWT authentication is not enabled on this WooCommerce site';
    } else if (error.toString().contains('404')) {
      return 'JWT authentication endpoint not found. Please install JWT Authentication plugin';
    } else if (error.toString().contains('Network')) {
      return 'Network error. Please check your internet connection';
    } else {
      return 'Authentication failed. Please try again';
    }
  }
}

/// 🔐 JWT Sign-In Result
class WooJwtSignInResult {
  final bool isSuccess;
  final WooJwtToken? token;
  final String message;
  final String? error;

  WooJwtSignInResult._({
    required this.isSuccess,
    this.token,
    required this.message,
    this.error,
  });

  factory WooJwtSignInResult.success({
    required WooJwtToken token,
    required String message,
  }) {
    return WooJwtSignInResult._(
      isSuccess: true,
      token: token,
      message: message,
    );
  }

  factory WooJwtSignInResult.failure({
    required String error,
    required String message,
  }) {
    return WooJwtSignInResult._(
      isSuccess: false,
      message: message,
      error: error,
    );
  }
}

/// 🚪 JWT Sign-Out Result
class WooJwtSignOutResult {
  final bool isSuccess;
  final String message;
  final String? error;

  WooJwtSignOutResult._({
    required this.isSuccess,
    required this.message,
    this.error,
  });

  factory WooJwtSignOutResult.success({
    required String message,
  }) {
    return WooJwtSignOutResult._(
      isSuccess: true,
      message: message,
    );
  }

  factory WooJwtSignOutResult.failure({
    required String error,
    required String message,
  }) {
    return WooJwtSignOutResult._(
      isSuccess: false,
      message: message,
      error: error,
    );
  }
}

/// 📊 JWT Sign-In Status
class WooJwtSignInStatus {
  final bool isSignedIn;
  final bool hasToken;
  final bool isExpired;
  final bool needsRefresh;
  final Map<String, dynamic>? tokenInfo;
  final Map<String, dynamic>? storageStats;
  final String? error;

  WooJwtSignInStatus({
    required this.isSignedIn,
    required this.hasToken,
    required this.isExpired,
    required this.needsRefresh,
    this.tokenInfo,
    this.storageStats,
    this.error,
  });
}
