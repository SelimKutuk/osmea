import 'dart:io';
import 'package:core/core.dart';
import 'package:apis/apis.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:storefront_woo/app/core/config/config_di.config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

GetIt getIt = GetIt.instance;

@InjectableInit(preferRelativeImports: false)
Future<GetIt> configureDependencies({String? environment}) async {
  try {
    debugPrint('🔧 Configuring dependencies for environment: $environment');

    // Initialize core dependencies
    getIt = await Core().init(getIt);
    debugPrint('✅ Core dependencies initialized');

    // Initialize APIs package dependencies
    await _initializeApisPackage(environment);
    debugPrint('✅ APIs package dependencies initialized');

    // Initialize app-specific dependencies
    final result = getIt.init(environment: environment);
    debugPrint('✅ App dependencies initialized');

    return result;
  } catch (e, stackTrace) {
    debugPrint('❌ Error configuring dependencies: $e');
    debugPrint('Stack trace: $stackTrace');
    rethrow;
  }
}

/// Initialize APIs package with environment-based configuration
Future<void> _initializeApisPackage(String? environment) async {
  try {
    // Initialize APIs package dependencies
    await _initializeFromEnvironment(environment);
    debugPrint('✅ APIs package dependencies initialized');
  } catch (e) {
    debugPrint('❌ Error initializing APIs package: $e');
    rethrow;
  }
}

/// Initialize APIs package from environment configuration
Future<void> _initializeFromEnvironment(String? environment) async {
  try {
    // Load .env file
    await dotenv.load(fileName: ".env");
    
    // Get configuration from .env file first, then from environment variables
    final storeUrl = dotenv.env['WOOCOMMERCE_STORE_URL'] ?? 
                     Platform.environment['WOOCOMMERCE_STORE_URL'] ?? '';
    final consumerKey = dotenv.env['WOOCOMMERCE_CONSUMER_KEY'] ?? 
                        Platform.environment['WOOCOMMERCE_CONSUMER_KEY'] ?? '';
    final consumerSecret = dotenv.env['WOOCOMMERCE_CONSUMER_SECRET'] ?? 
                          Platform.environment['WOOCOMMERCE_CONSUMER_SECRET'] ?? '';
    final apiVersion = dotenv.env['WOOCOMMERCE_API_VERSION'] ?? 
                      Platform.environment['WOOCOMMERCE_API_VERSION'] ?? 'v1';

    if (storeUrl.isNotEmpty &&
        consumerKey.isNotEmpty &&
        consumerSecret.isNotEmpty) {
      // Initialize WooCommerce network with credentials
      debugPrint('🔧 Initializing WooCommerce:');
      debugPrint('  - Store URL: $storeUrl');
      debugPrint('  - Consumer Key: ${consumerKey.substring(0, 8)}...');
      debugPrint('  - Consumer Secret: ${consumerSecret.substring(0, 8)}...');
      debugPrint('  - API Version: $apiVersion');
      debugPrint('  - Source: ${dotenv.env['WOOCOMMERCE_STORE_URL'] != null ? '.env file' : 'Environment Variables'}');

      WooNetwork.init(
        getIt,
        storeUrl: storeUrl,
        username: consumerKey,
        password: consumerSecret,
        apiVersion: apiVersion,
      );

      debugPrint('✅ WooCommerce network initialized');
    } else {
      debugPrint('❌ Missing required configuration:');
      debugPrint(
        '  - WOOCOMMERCE_STORE_URL: ${storeUrl.isEmpty ? 'MISSING' : 'OK'}',
      );
      debugPrint(
        '  - WOOCOMMERCE_CONSUMER_KEY: ${consumerKey.isEmpty ? 'MISSING' : 'OK'}',
      );
      debugPrint(
        '  - WOOCOMMERCE_CONSUMER_SECRET: ${consumerSecret.isEmpty ? 'MISSING' : 'OK'}',
      );
      throw Exception('Required WooCommerce configuration is missing');
    }
  } catch (e) {
    debugPrint('❌ Error initializing from environment: $e');
    rethrow;
  }
}
