import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:apis/models/auth/woo_jwt_token.dart';
import 'package:apis/apis.dart';
import 'package:get_it/get_it.dart';
import 'package:apis/network/remote/woocommerce/auth/abstract/woo_auth_service.dart';
import 'package:apis/network/remote/woocommerce/auth/freezed_model/request/user_login_request.dart';

/// 🔐 WooCommerce JWT Authentication Service
@injectable
class WooJwtAuthService {
  final Dio _dio;

  WooJwtAuthService(this._dio);

  /// 🔑 Authenticate user and get JWT token
  Future<WooJwtToken> authenticate({
    required String username,
    required String password,
    String? brandName,
  }) async {
    try {
      debugPrint('🔐 Starting WooCommerce JWT authentication...');

      // Get WooAuthService from dependency injection
      final authService = GetIt.I<WooAuthService>();

      // Use brand name or default to 'woocomm'
      final effectiveBrandName = brandName ?? 'woocomm';

      debugPrint('🔗 Using brand name: $effectiveBrandName');

      // Create login request
      final loginRequest = UserLoginRequest(
        email: username,
        password: password,
        rememberMe: false,
      );

      // Use the API service for authentication
      final response =
          await authService.userLogin(effectiveBrandName, loginRequest);

      if (response.success && response.data != null) {
        // Convert UserLoginData to WooJwtToken
        final token = WooJwtToken(
          accessToken: response.data!.accessToken,
          tokenType: response.data!.tokenType,
          expiresIn: response.data!.expiresIn,
          refreshToken: response.data!.refreshToken,
          scope: response.data!.scope,
          issuedAt: response.data!.issuedAt ?? DateTime.now(),
          userData: response.data!.user.toJson(),
        );

        // Save token to storage
        await WooJwtTokenStorage.saveToken(token);

        debugPrint('✅ JWT authentication successful');
        return token;
      } else {
        throw Exception(response.message);
      }
    } catch (e) {
      debugPrint('❌ JWT authentication failed: $e');
      if (e is DioException) {
        if (e.response?.statusCode == 401) {
          throw Exception('Invalid username or password');
        } else if (e.response?.statusCode == 403) {
          throw Exception(
              'JWT authentication is not enabled on this WooCommerce site');
        } else if (e.response?.statusCode == 404) {
          throw Exception(
              'JWT authentication endpoint not found. Please install JWT Authentication plugin');
        }
      }
      rethrow;
    }
  }

  /// 🔄 Refresh JWT token using refresh token
  Future<WooJwtToken> refreshToken() async {
    try {
      debugPrint('🔄 Refreshing JWT token...');

      final currentToken = await WooJwtTokenStorage.loadToken();
      if (currentToken?.refreshToken == null) {
        throw Exception('No refresh token available');
      }

      final refreshData = {
        'refresh_token': currentToken!.refreshToken,
      };

      final response = await _dio.post(
        '${WooNetwork.baseUrl}/wp-json/jwt-auth/v1/token/refresh',
        data: refreshData,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );

      if (response.statusCode == 200) {
        final newToken = WooJwtToken.fromWooResponse(response.data);

        // Save new token to storage
        await WooJwtTokenStorage.saveToken(newToken);

        debugPrint('✅ JWT token refreshed successfully');
        return newToken;
      } else {
        throw Exception('Token refresh failed: ${response.statusMessage}');
      }
    } catch (e) {
      debugPrint('❌ JWT token refresh failed: $e');
      // Clear invalid token
      await WooJwtTokenStorage.clearToken();
      rethrow;
    }
  }

  /// 🚪 Logout user and clear token
  Future<void> logout() async {
    try {
      debugPrint('🚪 Logging out user...');

      final token = await WooJwtTokenStorage.loadToken();
      if (token != null) {
        // Optionally revoke token on server
        try {
          await _dio.post(
            '${WooNetwork.baseUrl}/wp-json/jwt-auth/v1/token/revoke',
            options: Options(
              headers: {
                'Authorization': token.authorizationHeader,
                'Content-Type': 'application/json',
              },
            ),
          );
        } catch (e) {
          debugPrint(
              '⚠️ Token revocation failed (server may not support it): $e');
        }
      }

      // Clear token from storage
      await WooJwtTokenStorage.clearToken();

      debugPrint('✅ User logged out successfully');
    } catch (e) {
      debugPrint('❌ Logout failed: $e');
      // Still clear token even if server request fails
      await WooJwtTokenStorage.clearToken();
    }
  }

  /// 🔍 Validate current token
  Future<bool> validateToken() async {
    try {
      final token = await WooJwtTokenStorage.loadToken();
      if (token == null) return false;

      // Check if token is expired
      if (token.isExpired) return false;

      // Optionally validate with server
      try {
        final response = await _dio.get(
          '${WooNetwork.baseUrl}/wp-json/jwt-auth/v1/token/validate',
          options: Options(
            headers: {
              'Authorization': token.authorizationHeader,
              'Accept': 'application/json',
            },
          ),
        );

        return response.statusCode == 200;
      } catch (e) {
        debugPrint('⚠️ Server token validation failed: $e');
        // Return true if we can't validate with server but token is not expired
        return !token.isExpired;
      }
    } catch (e) {
      debugPrint('❌ Token validation failed: $e');
      return false;
    }
  }

  /// 📋 Get current user info
  Future<Map<String, dynamic>?> getCurrentUser() async {
    try {
      final token = await WooJwtTokenStorage.loadToken();
      if (token == null) return null;

      final response = await _dio.get(
        '${WooNetwork.baseUrl}/wp-json/wp/v2/users/me',
        options: Options(
          headers: {
            'Authorization': token.authorizationHeader,
            'Accept': 'application/json',
          },
        ),
      );

      if (response.statusCode == 200) {
        return response.data;
      } else {
        return null;
      }
    } catch (e) {
      debugPrint('❌ Failed to get current user: $e');
      return null;
    }
  }

  /// 🔄 Auto-refresh token if needed
  Future<WooJwtToken?> autoRefreshIfNeeded() async {
    try {
      final needsRefresh = await WooJwtTokenStorage.needsRefresh();
      if (needsRefresh) {
        debugPrint('🔄 Auto-refreshing JWT token...');
        return await refreshToken();
      }

      return await WooJwtTokenStorage.loadToken();
    } catch (e) {
      debugPrint('❌ Auto-refresh failed: $e');
      return null;
    }
  }

  /// 🔐 Check if user is authenticated
  Future<bool> isAuthenticated() async {
    try {
      final token = await WooJwtTokenStorage.loadToken();
      if (token == null) return false;

      return !token.isExpired;
    } catch (e) {
      debugPrint('❌ Authentication check failed: $e');
      return false;
    }
  }

  /// 📊 Get authentication status info
  Future<Map<String, dynamic>> getAuthStatus() async {
    try {
      final token = await WooJwtTokenStorage.loadToken();
      final isAuth = await isAuthenticated();
      final needsRefresh = await WooJwtTokenStorage.needsRefresh();

      return {
        'isAuthenticated': isAuth,
        'hasToken': token != null,
        'needsRefresh': needsRefresh,
        'tokenExpiry': token?.expiresAt.toIso8601String(),
        'userData': token?.userData,
      };
    } catch (e) {
      debugPrint('❌ Failed to get auth status: $e');
      return {
        'isAuthenticated': false,
        'hasToken': false,
        'needsRefresh': false,
        'error': e.toString(),
      };
    }
  }
}
