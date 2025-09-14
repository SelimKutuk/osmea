import 'package:apis/dio_config/dio_client/api_dio_client.dart';
import 'package:apis/models/auth/woo_jwt_token.dart';
import 'package:apis/services/auth/woo_jwt_signin_manager.dart';
import 'package:flutter/foundation.dart';

/// 🧪 Comprehensive test class for JWT storage functionality
class WooJwtStorageTest {
  /// Test complete JWT storage workflow
  static Future<void> testJwtStorageWorkflow() async {
    debugPrint('🧪 Testing JWT Storage Workflow...');

    try {
      // Test 1: Check initial storage state
      debugPrint('📊 Step 1: Checking initial storage state...');
      final initialStats = await ApiDioClient.getJwtStorageStats();
      debugPrint('Initial storage stats: $initialStats');

      // Test 2: Test easy sign-in with automatic storage
      debugPrint(
          '🔐 Step 2: Testing easy sign-in with automatic JWT storage...');
      try {
        // Note: Replace with actual WooCommerce credentials for testing
        final signInResult = await ApiDioClient.signInUser(
          username: 'test_user', // Replace with actual username
          password: 'test_password', // Replace with actual password
        );

        if (signInResult.isSuccess) {
          debugPrint('✅ Easy sign-in successful!');
          debugPrint('📅 Token expires at: ${signInResult.token?.expiresAt}');
          debugPrint('👤 User data: ${signInResult.token?.userData}');
        } else {
          debugPrint('❌ Easy sign-in failed: ${signInResult.message}');
          debugPrint(
              'This might be expected if JWT plugin is not installed or credentials are invalid');
        }
      } catch (e) {
        debugPrint('❌ Easy sign-in error: $e');
      }

      // Test 3: Check sign-in status
      debugPrint('🔍 Step 3: Checking sign-in status...');
      final isSignedIn = await ApiDioClient.isUserSignedIn();
      debugPrint('User is signed in: $isSignedIn');

      // Test 4: Get comprehensive sign-in status
      debugPrint('📊 Step 4: Getting comprehensive sign-in status...');
      final signInStatus = await ApiDioClient.getSignInStatus();
      debugPrint('Sign-in status:');
      debugPrint('  - Is signed in: ${signInStatus.isSignedIn}');
      debugPrint('  - Has token: ${signInStatus.hasToken}');
      debugPrint('  - Is expired: ${signInStatus.isExpired}');
      debugPrint('  - Needs refresh: ${signInStatus.needsRefresh}');
      debugPrint('  - Token info: ${signInStatus.tokenInfo}');
      debugPrint('  - Storage stats: ${signInStatus.storageStats}');

      // Test 5: Test token storage operations
      debugPrint('💾 Step 5: Testing token storage operations...');
      await _testTokenStorageOperations();

      // Test 6: Test WooCommerce API with stored JWT
      debugPrint('🛒 Step 6: Testing WooCommerce API with stored JWT...');
      await _testWooCommerceApiWithStoredJwt();

      // Test 7: Test easy sign-out
      debugPrint('🚪 Step 7: Testing easy sign-out...');
      final signOutResult = await ApiDioClient.signOutUser();
      if (signOutResult.isSuccess) {
        debugPrint('✅ Easy sign-out successful!');
      } else {
        debugPrint('❌ Easy sign-out failed: ${signOutResult.message}');
      }

      // Test 8: Verify token is cleared
      debugPrint('🔍 Step 8: Verifying token is cleared...');
      final finalSignInStatus = await ApiDioClient.isUserSignedIn();
      debugPrint('User is signed in after logout: $finalSignInStatus');

      debugPrint('✅ JWT Storage Workflow test completed');
    } catch (e) {
      debugPrint('❌ Error during JWT storage workflow test: $e');
    }
  }

  /// Test token storage operations
  static Future<void> _testTokenStorageOperations() async {
    try {
      // Test token info
      debugPrint('📋 Testing token info retrieval...');
      final tokenInfo = await WooJwtTokenStorage.getTokenInfo();
      debugPrint('Token info: $tokenInfo');

      // Test user data retrieval
      debugPrint('👤 Testing user data retrieval...');
      final userData = await WooJwtTokenStorage.getUserData();
      debugPrint('User data: $userData');

      // Test token expiry
      debugPrint('⏰ Testing token expiry check...');
      final tokenExpiry = await WooJwtTokenStorage.getTokenExpiry();
      debugPrint('Token expiry: $tokenExpiry');

      // Test storage stats
      debugPrint('📈 Testing storage stats...');
      final storageStats = await WooJwtTokenStorage.getStorageStats();
      debugPrint('Storage stats: $storageStats');
    } catch (e) {
      debugPrint('❌ Error testing token storage operations: $e');
    }
  }

  /// Test WooCommerce API with stored JWT
  static Future<void> _testWooCommerceApiWithStoredJwt() async {
    try {
      // Create WooCommerce Dio instance with JWT
      final wooDio = ApiDioClient.wooDio(useJwtAuth: true);

      // Test a simple API call (e.g., get system status)
      final response = await wooDio.get('/wp-json/wc/v3/system_status');

      if (response.statusCode == 200) {
        debugPrint('✅ WooCommerce API call with stored JWT successful!');
        debugPrint('Response status: ${response.statusCode}');
      } else {
        debugPrint(
            '⚠️ WooCommerce API call returned status: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('❌ WooCommerce API call failed: $e');
    }
  }

  /// Test JWT token storage with different scenarios
  static Future<void> testJwtStorageScenarios() async {
    debugPrint('🧪 Testing JWT Storage Scenarios...');

    try {
      // Scenario 1: Test token creation and storage
      debugPrint('🔐 Scenario 1: Testing token creation and storage...');
      final testToken = WooJwtToken(
        accessToken: 'test_access_token_12345',
        tokenType: 'Bearer',
        expiresIn: 3600,
        issuedAt: DateTime.now(),
        refreshToken: 'test_refresh_token_67890',
        scope: 'read write',
        userData: {
          'id': 1,
          'name': 'Test User',
          'email': 'test@example.com',
          'roles': ['customer'],
        },
      );

      await WooJwtTokenStorage.saveToken(testToken);
      debugPrint('✅ Test token saved successfully');

      // Scenario 2: Test token loading
      debugPrint('📖 Scenario 2: Testing token loading...');
      final loadedToken = await WooJwtTokenStorage.loadToken();
      if (loadedToken != null) {
        debugPrint('✅ Token loaded successfully');
        debugPrint('Access token: ${loadedToken.accessToken}');
        debugPrint('Token type: ${loadedToken.tokenType}');
        debugPrint('Scope: ${loadedToken.scope}');
        debugPrint('User data: ${loadedToken.userData}');
      } else {
        debugPrint('❌ Failed to load token');
      }

      // Scenario 3: Test token info
      debugPrint('📊 Scenario 3: Testing token info...');
      final tokenInfo = await WooJwtTokenStorage.getTokenInfo();
      debugPrint('Token info: $tokenInfo');

      // Scenario 4: Test user data update
      debugPrint('👤 Scenario 4: Testing user data update...');
      final updatedUserData = {
        'id': 1,
        'name': 'Updated Test User',
        'email': 'updated@example.com',
        'roles': ['customer', 'subscriber'],
        'last_login': DateTime.now().toIso8601String(),
      };

      await WooJwtTokenStorage.updateUserData(updatedUserData);
      debugPrint('✅ User data updated successfully');

      // Verify update
      final updatedToken = await WooJwtTokenStorage.loadToken();
      debugPrint('Updated user data: ${updatedToken?.userData}');

      // Scenario 5: Test token cleanup
      debugPrint('🧹 Scenario 5: Testing token cleanup...');
      await WooJwtTokenStorage.cleanupExpiredTokens();
      debugPrint('✅ Token cleanup completed');

      // Scenario 6: Test token clearing
      debugPrint('🗑️ Scenario 6: Testing token clearing...');
      await WooJwtTokenStorage.clearToken();
      debugPrint('✅ Token cleared successfully');

      // Verify clearing
      final clearedToken = await WooJwtTokenStorage.loadToken();
      if (clearedToken == null) {
        debugPrint('✅ Token successfully cleared');
      } else {
        debugPrint('❌ Token was not cleared properly');
      }

      debugPrint('✅ JWT Storage Scenarios test completed');
    } catch (e) {
      debugPrint('❌ Error during JWT storage scenarios test: $e');
    }
  }

  /// Test sign-in manager functionality
  static Future<void> testSignInManager() async {
    debugPrint('🧪 Testing Sign-In Manager...');

    try {
      // Test 1: Check initial sign-in status
      debugPrint('🔍 Test 1: Checking initial sign-in status...');
      final initialStatus =
          await WooJwtSignInManager.instance.getSignInStatus();
      debugPrint('Initial sign-in status: ${initialStatus.isSignedIn}');

      // Test 2: Test sign-in with invalid credentials
      debugPrint('🔐 Test 2: Testing sign-in with invalid credentials...');
      try {
        final result = await WooJwtSignInManager.instance.signIn(
          username: 'invalid_user',
          password: 'invalid_password',
        );

        if (result.isSuccess) {
          debugPrint('❌ Sign-in should have failed with invalid credentials');
        } else {
          debugPrint(
              '✅ Correctly rejected invalid credentials: ${result.message}');
        }
      } catch (e) {
        debugPrint('✅ Correctly handled invalid credentials: $e');
      }

      // Test 3: Test auto-refresh
      debugPrint('🔄 Test 3: Testing auto-refresh...');
      final autoRefreshResult =
          await WooJwtSignInManager.instance.autoRefreshIfNeeded();
      debugPrint('Auto-refresh result: $autoRefreshResult');

      // Test 4: Test storage stats
      debugPrint('📈 Test 4: Testing storage stats...');
      final stats = await WooJwtSignInManager.instance.getStorageStats();
      debugPrint('Storage stats: $stats');

      debugPrint('✅ Sign-In Manager test completed');
    } catch (e) {
      debugPrint('❌ Error during Sign-In Manager test: $e');
    }
  }

  /// Run all JWT storage tests
  static Future<void> runAllTests() async {
    debugPrint('🚀 Running all JWT Storage tests...');

    await testJwtStorageScenarios();
    await testSignInManager();
    await testJwtStorageWorkflow();

    debugPrint('🎉 All JWT Storage tests completed!');
  }

  /// Test JWT storage with real credentials (for manual testing)
  static Future<void> testWithRealCredentials({
    required String username,
    required String password,
  }) async {
    debugPrint('🧪 Testing JWT Storage with Real Credentials...');

    try {
      // Test sign-in
      debugPrint('🔐 Testing sign-in with real credentials...');
      final signInResult = await ApiDioClient.signInUser(
        username: username,
        password: password,
      );

      if (signInResult.isSuccess) {
        debugPrint('✅ Sign-in successful!');
        debugPrint('Token: ${signInResult.token?.accessToken}');
        debugPrint('Expires at: ${signInResult.token?.expiresAt}');

        // Test API call
        debugPrint('🛒 Testing API call with stored JWT...');
        final wooDio = ApiDioClient.wooDio(useJwtAuth: true);
        final response = await wooDio.get('/wp-json/wc/v3/system_status');
        debugPrint('API response status: ${response.statusCode}');

        // Test sign-out
        debugPrint('🚪 Testing sign-out...');
        final signOutResult = await ApiDioClient.signOutUser();
        debugPrint('Sign-out result: ${signOutResult.isSuccess}');
      } else {
        debugPrint('❌ Sign-in failed: ${signInResult.message}');
      }
    } catch (e) {
      debugPrint('❌ Error testing with real credentials: $e');
    }
  }
}
