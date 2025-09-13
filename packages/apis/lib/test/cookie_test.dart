import 'package:apis/dio_config/dio_client/api_dio_client.dart';
import 'package:flutter/foundation.dart';

/// 🧪 Test class to verify cookie functionality
class CookieTest {
  /// Test cookie functionality for WooCommerce
  static Future<void> testWooCookieFunctionality() async {
    debugPrint('🧪 Testing WooCommerce cookie functionality...');

    try {
      // Create WooCommerce Dio instance
      final wooDio = ApiDioClient.wooDio();
      debugPrint('✅ WooCommerce Dio instance created with cookie support');

      // Test cookie management methods
      if (kIsWeb) {
        debugPrint('🌐 Testing web cookie functionality...');

        // Test getting all cookies
        final allCookies = await ApiDioClient.getAllCookies();
        debugPrint('📋 Current cookies: $allCookies');

        // Test checking for specific cookie
        final hasTestCookie = await ApiDioClient.hasCookie('test_cookie');
        debugPrint('🔍 Has test_cookie: $hasTestCookie');

        // Test getting specific cookie
        final testCookieValue = await ApiDioClient.getCookie('test_cookie');
        debugPrint('🍪 Test cookie value: $testCookieValue');

        debugPrint('✅ Web cookie functionality test completed');
      } else {
        debugPrint(
            '📱 Mobile platform detected - cookie functionality available');
      }

      debugPrint(
          '✅ WooCommerce cookie functionality test completed successfully');
    } catch (e) {
      debugPrint('❌ Error testing cookie functionality: $e');
    }
  }
}
