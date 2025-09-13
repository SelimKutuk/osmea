import 'package:apis/dio_config/dio_client/api_dio_client.dart';
import 'package:apis/network/remote/woocommerce/auth/freezed_model/request/user_login_request.dart';
import 'package:apis/network/remote/woocommerce/auth/freezed_model/request/user_signup_request.dart';
import 'package:apis/network/remote/woocommerce/auth/freezed_model/request/delete_user_request.dart';
import 'package:apis/network/remote/woocommerce/auth/freezed_model/request/send_reset_password_request.dart';
import 'package:flutter/foundation.dart';

/// 🧪 Comprehensive test class for WooCommerce Authentication API
class WooAuthApiTest {
  /// Test complete authentication API workflow
  static Future<void> testAuthApiWorkflow() async {
    debugPrint('🧪 Testing WooCommerce Authentication API Workflow...');

    try {
      // Test 1: Check initial authentication status
      debugPrint('📊 Step 1: Checking initial authentication status...');
      final initialStatus = await ApiDioClient.getCompleteAuthStatus();
      debugPrint('Initial auth status:');
      debugPrint('  - Is logged in: ${initialStatus.isLoggedIn}');
      debugPrint('  - Has token: ${initialStatus.hasToken}');
      debugPrint('  - Is expired: ${initialStatus.isExpired}');
      debugPrint('  - Needs refresh: ${initialStatus.needsRefresh}');

      // Test 2: Test user sign up
      debugPrint('📝 Step 2: Testing user sign up...');
      try {
        final signUpResult = await ApiDioClient.signUpUser(
          email: 'test@example.com', // Replace with test email
          password: 'TestPassword123!',
          firstName: 'Test',
          lastName: 'User',
          phone: '+1234567890',
          company: 'Test Company',
          acceptTerms: true,
          subscribeNewsletter: false,
        );

        if (signUpResult.isSuccess) {
          debugPrint('✅ User sign up successful!');
          debugPrint('User ID: ${signUpResult.data?.userId}');
          debugPrint('Email: ${signUpResult.data?.email}');
        } else {
          debugPrint('❌ User sign up failed: ${signUpResult.message}');
          debugPrint('This might be expected if user already exists');
        }
      } catch (e) {
        debugPrint('❌ User sign up error: $e');
      }

      // Test 3: Test user login
      debugPrint('🔑 Step 3: Testing user login...');
      try {
        final loginResult = await ApiDioClient.loginUser(
          email: 'test@example.com', // Replace with test email
          password: 'TestPassword123!',
          rememberMe: true,
          deviceId: 'test_device_123',
          deviceName: 'Test Device',
        );

        if (loginResult.isSuccess) {
          debugPrint('✅ User login successful!');
          debugPrint('Access token: ${loginResult.data?.accessToken}');
          debugPrint('Token type: ${loginResult.data?.tokenType}');
          debugPrint('Expires in: ${loginResult.data?.expiresIn} seconds');
          debugPrint(
              'User: ${loginResult.data?.user.firstName} ${loginResult.data?.user.lastName}');
        } else {
          debugPrint('❌ User login failed: ${loginResult.message}');
          debugPrint('This might be expected if credentials are invalid');
        }
      } catch (e) {
        debugPrint('❌ User login error: $e');
      }

      // Test 4: Check authentication status after login
      debugPrint('📊 Step 4: Checking authentication status after login...');
      final loginStatus = await ApiDioClient.getCompleteAuthStatus();
      debugPrint('Login status:');
      debugPrint('  - Is logged in: ${loginStatus.isLoggedIn}');
      debugPrint('  - Has token: ${loginStatus.hasToken}');
      debugPrint(
          '  - Current user: ${loginStatus.currentUser?.firstName} ${loginStatus.currentUser?.lastName}');

      // Test 5: Test WooCommerce API call with authentication
      debugPrint(
          '🛒 Step 5: Testing WooCommerce API call with authentication...');
      await _testWooCommerceApiWithAuth();

      // Test 6: Test password reset
      debugPrint('📧 Step 6: Testing password reset...');
      try {
        final resetResult = await ApiDioClient.sendResetPasswordEmail(
          email: 'test@example.com', // Replace with test email
          resetUrl: 'https://example.com/reset-password',
        );

        if (resetResult.isSuccess) {
          debugPrint('✅ Password reset email sent successfully!');
          debugPrint('Email: ${resetResult.data?.email}');
          debugPrint('Reset token: ${resetResult.data?.resetToken}');
        } else {
          debugPrint('❌ Password reset failed: ${resetResult.message}');
        }
      } catch (e) {
        debugPrint('❌ Password reset error: $e');
      }

      // Test 7: Test user logout
      debugPrint('🚪 Step 7: Testing user logout...');
      final logoutResult = await ApiDioClient.logoutUserComplete();
      if (logoutResult.isSuccess) {
        debugPrint('✅ User logout successful!');
      } else {
        debugPrint('❌ User logout failed: ${logoutResult.message}');
      }

      // Test 8: Check authentication status after logout
      debugPrint('📊 Step 8: Checking authentication status after logout...');
      final finalStatus = await ApiDioClient.getCompleteAuthStatus();
      debugPrint('Final auth status:');
      debugPrint('  - Is logged in: ${finalStatus.isLoggedIn}');
      debugPrint('  - Has token: ${finalStatus.hasToken}');

      debugPrint('✅ Authentication API Workflow test completed');
    } catch (e) {
      debugPrint('❌ Error during authentication API workflow test: $e');
    }
  }

  /// Test WooCommerce API call with authentication
  static Future<void> _testWooCommerceApiWithAuth() async {
    try {
      // Create WooCommerce Dio instance with JWT
      final wooDio = ApiDioClient.wooDio(useJwtAuth: true);

      // Test a simple API call (e.g., get system status)
      final response = await wooDio.get('/wp-json/wc/v3/system_status');

      if (response.statusCode == 200) {
        debugPrint('✅ WooCommerce API call with authentication successful!');
        debugPrint('Response status: ${response.statusCode}');
      } else {
        debugPrint(
            '⚠️ WooCommerce API call returned status: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('❌ WooCommerce API call failed: $e');
    }
  }

  /// Test authentication request/response models
  static Future<void> testAuthModels() async {
    debugPrint('🧪 Testing Authentication Models...');

    try {
      // Test 1: User Login Request
      debugPrint('🔑 Test 1: Testing User Login Request...');
      final loginRequest = UserLoginRequest(
        email: 'test@example.com',
        password: 'TestPassword123!',
        rememberMe: true,
        deviceId: 'test_device_123',
        deviceName: 'Test Device',
        metadata: {'source': 'test'},
      );

      final loginJson = loginRequest.toJson();
      debugPrint('Login request JSON: $loginJson');

      final loginFromJson = UserLoginRequest.fromJson(loginJson);
      debugPrint('Login request from JSON: ${loginFromJson.email}');

      // Test 2: User Sign Up Request
      debugPrint('📝 Test 2: Testing User Sign Up Request...');
      final signUpRequest = UserSignUpRequest(
        email: 'test@example.com',
        password: 'TestPassword123!',
        firstName: 'Test',
        lastName: 'User',
        phone: '+1234567890',
        company: 'Test Company',
        acceptTerms: true,
        subscribeNewsletter: false,
        referralCode: 'REF123',
        metadata: {'source': 'test'},
      );

      final signUpJson = signUpRequest.toJson();
      debugPrint('Sign up request JSON: $signUpJson');

      final signUpFromJson = UserSignUpRequest.fromJson(signUpJson);
      debugPrint(
          'Sign up request from JSON: ${signUpFromJson.firstName} ${signUpFromJson.lastName}');

      // Test 3: Delete User Request
      debugPrint('🗑️ Test 3: Testing Delete User Request...');
      final deleteRequest = DeleteUserRequest(
        userId: '123',
        reason: 'Test deletion',
        deleteOrders: false,
        deleteReviews: false,
        metadata: {'source': 'test'},
      );

      final deleteJson = deleteRequest.toJson();
      debugPrint('Delete request JSON: $deleteJson');

      final deleteFromJson = DeleteUserRequest.fromJson(deleteJson);
      debugPrint('Delete request from JSON: ${deleteFromJson.userId}');

      // Test 4: Send Reset Password Request
      debugPrint('📧 Test 4: Testing Send Reset Password Request...');
      final resetRequest = SendResetPasswordRequest(
        email: 'test@example.com',
        resetUrl: 'https://example.com/reset',
        metadata: {'source': 'test'},
      );

      final resetJson = resetRequest.toJson();
      debugPrint('Reset request JSON: $resetJson');

      final resetFromJson = SendResetPasswordRequest.fromJson(resetJson);
      debugPrint('Reset request from JSON: ${resetFromJson.email}');

      debugPrint('✅ Authentication Models test completed');
    } catch (e) {
      debugPrint('❌ Error during authentication models test: $e');
    }
  }

  /// Test authentication with different scenarios
  static Future<void> testAuthScenarios() async {
    debugPrint('🧪 Testing Authentication Scenarios...');

    try {
      // Scenario 1: Test with invalid credentials
      debugPrint('🔐 Scenario 1: Testing with invalid credentials...');
      try {
        final result = await ApiDioClient.loginUser(
          email: 'invalid@example.com',
          password: 'invalid_password',
        );

        if (result.isSuccess) {
          debugPrint('❌ Login should have failed with invalid credentials');
        } else {
          debugPrint(
              '✅ Correctly rejected invalid credentials: ${result.message}');
        }
      } catch (e) {
        debugPrint('✅ Correctly handled invalid credentials: $e');
      }

      // Scenario 2: Test with invalid email format
      debugPrint('📧 Scenario 2: Testing with invalid email format...');
      try {
        final result = await ApiDioClient.loginUser(
          email: 'invalid-email',
          password: 'TestPassword123!',
        );

        if (result.isSuccess) {
          debugPrint('❌ Login should have failed with invalid email format');
        } else {
          debugPrint(
              '✅ Correctly rejected invalid email format: ${result.message}');
        }
      } catch (e) {
        debugPrint('✅ Correctly handled invalid email format: $e');
      }

      // Scenario 3: Test with weak password
      debugPrint('🔒 Scenario 3: Testing with weak password...');
      try {
        final result = await ApiDioClient.signUpUser(
          email: 'test@example.com',
          password: '123', // Weak password
          firstName: 'Test',
          lastName: 'User',
        );

        if (result.isSuccess) {
          debugPrint('❌ Sign up should have failed with weak password');
        } else {
          debugPrint('✅ Correctly rejected weak password: ${result.message}');
        }
      } catch (e) {
        debugPrint('✅ Correctly handled weak password: $e');
      }

      debugPrint('✅ Authentication Scenarios test completed');
    } catch (e) {
      debugPrint('❌ Error during authentication scenarios test: $e');
    }
  }

  /// Run all authentication API tests
  static Future<void> runAllTests() async {
    debugPrint('🚀 Running all WooCommerce Authentication API tests...');

    await testAuthModels();
    await testAuthScenarios();
    await testAuthApiWorkflow();

    debugPrint('🎉 All Authentication API tests completed!');
  }

  /// Test authentication with real credentials (for manual testing)
  static Future<void> testWithRealCredentials({
    required String email,
    required String password,
    String? firstName,
    String? lastName,
  }) async {
    debugPrint('🧪 Testing Authentication API with Real Credentials...');

    try {
      // Test login
      debugPrint('🔐 Testing login with real credentials...');
      final loginResult = await ApiDioClient.loginUser(
        email: email,
        password: password,
        rememberMe: true,
      );

      if (loginResult.isSuccess) {
        debugPrint('✅ Login successful!');
        debugPrint('Token: ${loginResult.data?.accessToken}');
        debugPrint(
            'User: ${loginResult.data?.user.firstName} ${loginResult.data?.user.lastName}');

        // Test API call
        debugPrint('🛒 Testing API call with authentication...');
        final wooDio = ApiDioClient.wooDio(useJwtAuth: true);
        final response = await wooDio.get('/wp-json/wc/v3/system_status');
        debugPrint('API response status: ${response.statusCode}');

        // Test logout
        debugPrint('🚪 Testing logout...');
        final logoutResult = await ApiDioClient.logoutUserComplete();
        debugPrint('Logout result: ${logoutResult.isSuccess}');
      } else {
        debugPrint('❌ Login failed: ${loginResult.message}');
      }

      // Test sign up if credentials provided
      if (firstName != null && lastName != null) {
        debugPrint('📝 Testing sign up...');
        final signUpResult = await ApiDioClient.signUpUser(
          email: email,
          password: password,
          firstName: firstName,
          lastName: lastName,
        );
        debugPrint('Sign up result: ${signUpResult.isSuccess}');
      }
    } catch (e) {
      debugPrint('❌ Error testing with real credentials: $e');
    }
  }
}
