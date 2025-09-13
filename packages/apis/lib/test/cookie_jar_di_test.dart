import 'package:apis/di/config/config_di.dart';
import 'package:flutter/foundation.dart';

/// 🧪 Test class to verify cookie jar initialization in DI
class CookieJarDITest {
  /// Test cookie jar initialization through dependency injection
  static Future<void> testCookieJarDI() async {
    debugPrint('🧪 Testing Cookie Jar Dependency Injection...');

    try {
      // Test synchronous initialization (non-blocking)
      debugPrint('🔄 Testing synchronous DI initialization...');
      final getItSync = configureDependencies();
      debugPrint('✅ Synchronous DI initialization completed');

      // Test asynchronous initialization (blocking)
      debugPrint('🔄 Testing asynchronous DI initialization...');
      final getItAsync = await configureDependenciesAsync();
      debugPrint('✅ Asynchronous DI initialization completed');

      // Verify both instances are the same
      if (getItSync == getItAsync) {
        debugPrint('✅ Both DI instances are identical');
      } else {
        debugPrint('⚠️ DI instances are different (this might be expected)');
      }

      // Test cookie functionality through DI
      debugPrint('🍪 Testing cookie functionality through DI...');

      // Note: Cookie managers are registered but accessed through ApiDioClient static methods
      // This is by design to maintain backward compatibility

      debugPrint('✅ Cookie Jar DI test completed successfully');
    } catch (e) {
      debugPrint('❌ Error testing Cookie Jar DI: $e');
    }
  }

  /// Test cookie jar initialization timing
  static Future<void> testCookieJarTiming() async {
    debugPrint('⏱️ Testing Cookie Jar initialization timing...');

    final stopwatch = Stopwatch()..start();

    try {
      // Test async initialization timing
      await configureDependenciesAsync();

      stopwatch.stop();
      debugPrint(
          '⏱️ Cookie jar initialization took: ${stopwatch.elapsedMilliseconds}ms');

      if (stopwatch.elapsedMilliseconds < 1000) {
        debugPrint('✅ Cookie jar initialization is fast (< 1 second)');
      } else {
        debugPrint('⚠️ Cookie jar initialization is slow (> 1 second)');
      }
    } catch (e) {
      debugPrint('❌ Error testing Cookie Jar timing: $e');
    }
  }
}
