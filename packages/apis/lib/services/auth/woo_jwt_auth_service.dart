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
      debugPrint('🔍 Username: $username');
      debugPrint('🔍 Brand name: $brandName');
      debugPrint('🔍 Password length: ${password.length}');
      debugPrint('🔍 Dio instance: $_dio');
      debugPrint('🔍 Dio instance type: ${_dio.runtimeType}');

      // Get WooAuthService from dependency injection
      debugPrint('🔍 Getting WooAuthService from dependency injection...');
      final authService = GetIt.I<WooAuthService>();
      debugPrint('🔍 WooAuthService obtained: $authService');
      debugPrint('🔍 WooAuthService type: ${authService.runtimeType}');

      // Use brand name or default to 'woocomm'
      final effectiveBrandName = brandName ?? 'woocomm';

      debugPrint('🔗 Using brand name: $effectiveBrandName');

      // Create login request
      debugPrint('🔍 Creating UserLoginRequest...');
      final loginRequest = UserLoginRequest(
        email: username,
        password: password,
        rememberMe: false,
      );
      debugPrint('🔍 UserLoginRequest created: ${loginRequest.toJson()}');

      // Use the API service for authentication
      debugPrint(
          '🔍 Calling authService.userLogin with brand: $effectiveBrandName');
      debugPrint('🔍 Login request: ${loginRequest.toJson()}');

      final response =
          await authService.userLogin(effectiveBrandName, loginRequest);

      debugPrint('🔍 Raw response received: $response');
      debugPrint('🔍 Response success: ${response.success}');
      debugPrint('🔍 Response data: ${response.data}');
      debugPrint('🔍 Response data type: ${response.data.runtimeType}');
      debugPrint('🔍 Response message: ${response.message}');
      debugPrint('🔍 Response error: ${response.error}');

      // Check if response.data is null
      if (response.data == null) {
        debugPrint('❌ CRITICAL: response.data is NULL!');
        throw Exception('Response data is null');
      }

      // Check individual fields
      debugPrint('🔍 JWT field: ${response.data!.jwt}');
      debugPrint('🔍 JWT field type: ${response.data!.jwt.runtimeType}');
      debugPrint('🔍 JWT field is null: ${response.data!.jwt == null}');
      debugPrint('🔍 AccessToken field: ${response.data!.accessToken}');
      debugPrint(
          '🔍 AccessToken field type: ${response.data!.accessToken.runtimeType}');
      debugPrint(
          '🔍 AccessToken field is null: ${response.data!.accessToken == null}');
      debugPrint('🔍 TokenType field: ${response.data!.tokenType}');
      debugPrint('🔍 ExpiresIn field: ${response.data!.expiresIn}');
      debugPrint('🔍 User field: ${response.data!.user}');

      // Debug raw JSON data
      debugPrint('🔍 Raw response data JSON: ${response.data!.toJson()}');

      // Debug individual field access
      debugPrint('🔍 Direct field access test:');
      debugPrint('  - response.data!.jwt: ${response.data!.jwt}');
      debugPrint(
          '  - response.data!.jwt == null: ${response.data!.jwt == null}');
      debugPrint(
          '  - response.data!.jwt.runtimeType: ${response.data!.jwt.runtimeType}');

      // Try to access via raw JSON
      final rawJson = response.data!.toJson();
      debugPrint('🔍 Raw JSON access test:');
      debugPrint('  - rawJson["jwt"]: ${rawJson["jwt"]}');
      debugPrint('  - rawJson["jwt"] == null: ${rawJson["jwt"] == null}');
      debugPrint(
          '  - rawJson["jwt"].runtimeType: ${rawJson["jwt"].runtimeType}');

      if (response.success && response.data != null) {
        // Get JWT token from response - try multiple possible field names
        String? jwtToken;

        // CRITICAL DEBUG: Print raw response before any processing
        debugPrint('🚨 CRITICAL DEBUG: Raw API response processing');
        debugPrint('🚨 response.data: ${response.data}');
        debugPrint(
            '🚨 response.data.runtimeType: ${response.data.runtimeType}');
        debugPrint('🚨 response.data == null: ${response.data == null}');

        if (response.data != null) {
          debugPrint('🚨 response.data.jwt: ${response.data!.jwt}');
          debugPrint(
              '🚨 response.data.jwt.runtimeType: ${response.data!.jwt.runtimeType}');
          debugPrint(
              '🚨 response.data.jwt == null: ${response.data!.jwt == null}');

          // Try accessing raw JSON
          final rawJson = response.data!.toJson();
          debugPrint('🚨 rawJson: $rawJson');
          debugPrint('🚨 rawJson["jwt"]: ${rawJson["jwt"]}');
          debugPrint(
              '🚨 rawJson["jwt"].runtimeType: ${rawJson["jwt"].runtimeType}');
          debugPrint('🚨 rawJson["jwt"] == null: ${rawJson["jwt"] == null}');
        }

        // Priority: jwt → accessToken → raw.jwt → raw.access_token → raw.token
        if ((response.data?.jwt ?? '').toString().isNotEmpty) {
          jwtToken = response.data!.jwt!.toString();
          debugPrint(
              '🔍 JWT token found in jwt field: ${jwtToken.length > 20 ? jwtToken.substring(0, 20) + "..." : jwtToken}');
        } else if ((response.data?.accessToken ?? '').toString().isNotEmpty) {
          jwtToken = response.data!.accessToken!.toString();
          debugPrint(
              '🔍 JWT token found in accessToken field: ${jwtToken.length > 20 ? jwtToken.substring(0, 20) + "..." : jwtToken}');
        } else {
          final rawData = response.data!.toJson();
          debugPrint('🔍 Raw response data: $rawData');

          if (rawData['jwt'] != null && rawData['jwt'].toString().isNotEmpty) {
            jwtToken = rawData['jwt'].toString();
            debugPrint(
                '🔍 JWT token found in raw jwt field: ${jwtToken.length > 20 ? jwtToken.substring(0, 20) + "..." : jwtToken}');
          } else if (rawData['access_token'] != null &&
              rawData['access_token'].toString().isNotEmpty) {
            jwtToken = rawData['access_token'].toString();
            debugPrint(
                '🔍 JWT token found in raw access_token field: ${jwtToken.length > 20 ? jwtToken.substring(0, 20) + "..." : jwtToken}');
          } else if (rawData['token'] != null &&
              rawData['token'].toString().isNotEmpty) {
            jwtToken = rawData['token'].toString();
            debugPrint(
                '🔍 JWT token found in raw token field: ${jwtToken.length > 20 ? jwtToken.substring(0, 20) + "..." : jwtToken}');
          }
        }

        debugPrint('🔍 Final JWT token: $jwtToken');
        debugPrint('🔍 JWT token type: ${jwtToken.runtimeType}');
        debugPrint('🔍 JWT token is null: ${jwtToken == null}');
        debugPrint('🔍 JWT token is empty: ${jwtToken?.isEmpty}');

        if (jwtToken == null || jwtToken.isEmpty) {
          throw Exception('No JWT token received from server');
        }

        // Ensure jwtToken is not null before proceeding
        final String validJwtToken = jwtToken;

        debugPrint(
            '🔑 JWT token received: ${validJwtToken.length > 20 ? validJwtToken.substring(0, 20) + "..." : validJwtToken}');

        // Convert UserLoginData to WooJwtToken
        debugPrint('🔍 Creating WooJwtToken...');
        debugPrint('🔍 response.data!.tokenType: ${response.data!.tokenType}');
        debugPrint('🔍 response.data!.expiresIn: ${response.data!.expiresIn}');
        debugPrint('🔍 response.data!.issuedAt: ${response.data!.issuedAt}');
        debugPrint('🔍 response.data!.user: ${response.data!.user}');
        debugPrint(
            '🔍 response.data!.user?.toJson(): ${response.data!.user?.toJson()}');

        try {
          debugPrint('🔍 Creating WooJwtToken with parameters:');
          debugPrint('  - accessToken: $validJwtToken');
          debugPrint('  - tokenType: ${response.data!.tokenType ?? 'Bearer'}');
          debugPrint('  - expiresIn: ${response.data!.expiresIn ?? 3600}');
          debugPrint('  - refreshToken: ${response.data!.refreshToken}');
          debugPrint('  - scope: ${response.data!.scope}');
          debugPrint(
              '  - issuedAt: ${response.data!.issuedAt ?? DateTime.now()}');
          debugPrint(
              '  - userData: ${response.data!.user != null ? response.data!.user!.toJson() : <String, dynamic>{}}');

          // Create token step by step to identify the issue
          debugPrint('🔍 Step 1: Creating WooJwtToken object...');

          // Safely get token type
          final tokenType = response.data!.tokenType?.toString() ?? 'Bearer';
          debugPrint('🔍 Token type: $tokenType');

          // Safely get expires in
          final expiresIn = response.data!.expiresIn ?? 3600;
          debugPrint('🔍 Expires in: $expiresIn');
          debugPrint('🔍 Expires in type: ${expiresIn.runtimeType}');

          // Ensure expiresIn is int
          if (expiresIn is! int) {
            debugPrint('❌ expiresIn is not int: ${expiresIn.runtimeType}');
            throw Exception(
                'expiresIn must be int, got ${expiresIn.runtimeType}');
          }

          // Safely get issued at
          final issuedAt = response.data!.issuedAt ?? DateTime.now();
          debugPrint('🔍 Issued at: $issuedAt');

          // Safely get refresh token
          final refreshToken = response.data!.refreshToken?.toString();
          debugPrint('🔍 Refresh token: $refreshToken');

          // Safely get scope
          final scope = response.data!.scope?.toString();
          debugPrint('🔍 Scope: $scope');

          // Safely get user data
          Map<String, dynamic> userData = <String, dynamic>{};
          if (response.data!.user != null) {
            try {
              userData = response.data!.user!.toJson();
              debugPrint('🔍 User data: $userData');
            } catch (e) {
              debugPrint('❌ Error getting user data: $e');
              userData = <String, dynamic>{};
            }
          }

          final token = WooJwtToken(
            accessToken: validJwtToken,
            tokenType: response.data?.tokenType ?? 'Bearer',
            expiresIn: (response.data?.expiresIn is int)
                ? response.data!.expiresIn!
                : int.tryParse('${response.data?.expiresIn}') ?? 3600,
            issuedAt: response.data?.issuedAt ?? DateTime.now(),
            refreshToken: response.data?.refreshToken,
            scope: response.data?.scope,
            userData: response.data?.user != null
                ? response.data!.user!.toJson()
                : <String, dynamic>{},
          );
          debugPrint('🔍 Step 2: WooJwtToken object created successfully');

          // Save token to storage
          debugPrint('🔍 Step 3: Saving token to storage...');
          await WooJwtTokenStorage.saveToken(token);
          debugPrint('🔍 Step 4: Token saved to storage successfully');

          debugPrint('✅ JWT authentication successful');
          return token;
        } catch (e, stackTrace) {
          debugPrint('❌ Error creating WooJwtToken: $e');
          debugPrint('❌ Stack trace: $stackTrace');
          debugPrint('🔍 Valid JWT token: $validJwtToken');
          debugPrint('🔍 Token type: ${response.data!.tokenType}');
          debugPrint('🔍 Expires in: ${response.data!.expiresIn}');
          debugPrint('🔍 Issued at: ${response.data!.issuedAt}');
          debugPrint('🔍 Refresh token: ${response.data!.refreshToken}');
          debugPrint('🔍 Scope: ${response.data!.scope}');
          debugPrint('🔍 User data: ${response.data!.user}');
          rethrow;
        }
      } else {
        throw Exception(response.message ?? 'Authentication failed');
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
        final newToken = WooJwtToken.fromJson(response.data);

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
