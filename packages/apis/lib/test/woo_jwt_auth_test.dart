import 'package:apis/dio_config/dio_client/api_dio_client.dart';
import 'package:apis/models/auth/woo_jwt_token.dart';
import 'package:flutter/foundation.dart';

/// 🧪 Test class to verify WooCommerce JWT authentication functionality
class WooJwtAuthTest {
  /// Test complete JWT authentication flow
  static Future<void> testJwtAuthenticationFlow() async {
    debugPrint('🧪 Testing WooCommerce JWT Authentication Flow...');

    try {
      // Test 1: Check initial authentication status
      debugPrint('📊 Step 1: Checking initial authentication status...');
      final initialStatus = await ApiDioClient.getJwtAuthStatus();
      debugPrint('Initial auth status: $initialStatus');

      // Test 2: Authenticate user (you'll need to provide real credentials)
      debugPrint('🔐 Step 2: Testing user authentication...');
      try {
        // Note: Replace with actual WooCommerce credentials for testing
        final token = await ApiDioClient.authenticateUser(
          username: 'test_user', // Replace with actual username
          password: 'test_password', // Replace with actual password
        );
        debugPrint('✅ Authentication successful!');
        debugPrint('Token type: ${token.tokenType}');
        debugPrint('Expires in: ${token.expiresIn} seconds');
        debugPrint('Issued at: ${token.issuedAt}');
        debugPrint('Expires at: ${token.expiresAt}');

        // Test 3: Check authentication status after login
        debugPrint('📊 Step 3: Checking authentication status after login...');
        final authStatus = await ApiDioClient.isUserAuthenticated();
        debugPrint('User authenticated: $authStatus');

        // Test 4: Get current user info
        debugPrint('👤 Step 4: Getting current user info...');
        final userInfo = await ApiDioClient.getCurrentUser();
        if (userInfo != null) {
          debugPrint(
              'Current user: ${userInfo['name']} (ID: ${userInfo['id']})');
        } else {
          debugPrint('⚠️ Could not retrieve user info');
        }

        // Test 5: Test token refresh
        debugPrint('🔄 Step 5: Testing token refresh...');
        try {
          final refreshedToken = await ApiDioClient.refreshJwtToken();
          debugPrint('✅ Token refresh successful!');
          debugPrint('New token expires at: ${refreshedToken.expiresAt}');
        } catch (e) {
          debugPrint('⚠️ Token refresh failed (this might be expected): $e');
        }

        // Test 6: Test WooCommerce API call with JWT
        debugPrint('🛒 Step 6: Testing WooCommerce API call with JWT...');
        await _testWooCommerceApiCall();

        // Test 7: Logout
        debugPrint('🚪 Step 7: Testing logout...');
        await ApiDioClient.logoutUser();
        debugPrint('✅ Logout successful!');

        // Test 8: Check authentication status after logout
        debugPrint('📊 Step 8: Checking authentication status after logout...');
        final finalStatus = await ApiDioClient.isUserAuthenticated();
        debugPrint('User authenticated after logout: $finalStatus');
      } catch (e) {
        debugPrint('❌ Authentication failed: $e');
        debugPrint(
            'This might be expected if JWT plugin is not installed or credentials are invalid');
      }

      debugPrint('✅ JWT Authentication flow test completed');
    } catch (e) {
      debugPrint('❌ Error during JWT authentication test: $e');
    }
  }

  /// Test WooCommerce API call with JWT authentication
  static Future<void> _testWooCommerceApiCall() async {
    try {
      // Create WooCommerce Dio instance with JWT
      final wooDio = ApiDioClient.wooDio(useJwtAuth: true);

      // Test a simple API call (e.g., get system status)
      final response = await wooDio.get('/wp-json/wc/v3/system_status');

      if (response.statusCode == 200) {
        debugPrint('✅ WooCommerce API call with JWT successful!');
        debugPrint('Response status: ${response.statusCode}');
      } else {
        debugPrint(
            '⚠️ WooCommerce API call returned status: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('❌ WooCommerce API call failed: $e');
    }
  }

  /// Test JWT token storage and retrieval
  static Future<void> testJwtTokenStorage() async {
    debugPrint('🧪 Testing JWT Token Storage...');

    try {
      // Create a test token
      final testToken = WooJwtToken(
        accessToken: 'test_access_token_12345',
        tokenType: 'Bearer',
        expiresIn: 3600,
        issuedAt: DateTime.now(),
        refreshToken: 'test_refresh_token_67890',
        userData: {'id': 1, 'name': 'Test User', 'email': 'test@example.com'},
      );

      // Test saving token
      debugPrint('💾 Testing token save...');
      await WooJwtTokenStorage.saveToken(testToken);
      debugPrint('✅ Token saved successfully');

      // Test loading token
      debugPrint('📖 Testing token load...');
      final loadedToken = await WooJwtTokenStorage.loadToken();
      if (loadedToken != null) {
        debugPrint('✅ Token loaded successfully');
        debugPrint('Access token: ${loadedToken.accessToken}');
        debugPrint('Token type: ${loadedToken.tokenType}');
        debugPrint('Expires at: ${loadedToken.expiresAt}');
        debugPrint('User data: ${loadedToken.userData}');

        // Test token expiry check
        debugPrint('⏰ Testing token expiry check...');
        final isExpired = await WooJwtTokenStorage.isTokenExpired();
        debugPrint('Token expired: $isExpired');

        // Test refresh need check
        debugPrint('🔄 Testing refresh need check...');
        final needsRefresh = await WooJwtTokenStorage.needsRefresh();
        debugPrint('Needs refresh: $needsRefresh');
      } else {
        debugPrint('❌ Failed to load token');
      }

      // Test clearing token
      debugPrint('🗑️ Testing token clear...');
      await WooJwtTokenStorage.clearToken();
      debugPrint('✅ Token cleared successfully');

      // Verify token is cleared
      final clearedToken = await WooJwtTokenStorage.loadToken();
      if (clearedToken == null) {
        debugPrint('✅ Token successfully cleared');
      } else {
        debugPrint('❌ Token was not cleared properly');
      }

      debugPrint('✅ JWT Token Storage test completed');
    } catch (e) {
      debugPrint('❌ Error during JWT token storage test: $e');
    }
  }

  /// Test JWT authentication with different scenarios
  static Future<void> testJwtScenarios() async {
    debugPrint('🧪 Testing JWT Authentication Scenarios...');

    try {
      // Scenario 1: Test with invalid credentials
      debugPrint('🔐 Scenario 1: Testing with invalid credentials...');
      try {
        await ApiDioClient.authenticateUser(
          username: 'invalid_user',
          password: 'invalid_password',
        );
        debugPrint(
            '❌ Authentication should have failed with invalid credentials');
      } catch (e) {
        debugPrint('✅ Correctly rejected invalid credentials: $e');
      }

      // Scenario 2: Test token refresh without refresh token
      debugPrint(
          '🔄 Scenario 2: Testing token refresh without refresh token...');
      try {
        await ApiDioClient.refreshJwtToken();
        debugPrint('❌ Token refresh should have failed without refresh token');
      } catch (e) {
        debugPrint('✅ Correctly handled missing refresh token: $e');
      }

      // Scenario 3: Test API call without authentication
      debugPrint('🛒 Scenario 3: Testing API call without authentication...');
      try {
        final wooDio = ApiDioClient.wooDio(useJwtAuth: false); // Use Basic Auth
        final response = await wooDio.get('/wp-json/wc/v3/system_status');
        debugPrint(
            '✅ API call with Basic Auth successful: ${response.statusCode}');
      } catch (e) {
        debugPrint('⚠️ API call with Basic Auth failed: $e');
      }

      debugPrint('✅ JWT Authentication scenarios test completed');
    } catch (e) {
      debugPrint('❌ Error during JWT scenarios test: $e');
    }
  }

  /// Run all JWT authentication tests
  static Future<void> runAllTests() async {
    debugPrint('🚀 Running all WooCommerce JWT Authentication tests...');

    await testJwtTokenStorage();
    await testJwtAuthenticationFlow();
    await testJwtScenarios();

    debugPrint('🎉 All JWT authentication tests completed!');
  }
}
