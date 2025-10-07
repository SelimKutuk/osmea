import 'dart:io';
import 'package:core/core.dart';
import 'package:apis/apis.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:storefront_woo/app/core/config/config_di.config.dart';
import 'package:flutter/foundation.dart';

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
    // Load configuration from assets
    final AssetConfigHelper configHelper = AssetConfigHelper();
    await configHelper.loadConfig('assets/app_config.json');

    // Get WooCommerce configuration
    final storeUrl = configHelper.getString(
      'woocommerce_configuration.store_url',
      '',
    );

    // Try to get credentials from environment variables first, then from config
    String consumerKey =
        Platform.environment['WOOCOMMERCE_CONSUMER_KEY'] ??
        configHelper.getString('woocommerce_configuration.consumer_key', '');
    String consumerSecret =
        Platform.environment['WOOCOMMERCE_CONSUMER_SECRET'] ??
        configHelper.getString('woocommerce_configuration.consumer_secret', '');

    final apiVersion = configHelper.getString(
      'woocommerce_configuration.version',
      'v1',
    );

    if (storeUrl.isNotEmpty) {
      // Initialize WooCommerce network with credentials from environment/config
      debugPrint('🔧 Initializing WooCommerce with:');
      debugPrint('  - Store URL: $storeUrl');
      debugPrint(
        '  - Consumer Key: ${consumerKey.isNotEmpty ? '***' : '(empty)'}',
      );
      debugPrint(
        '  - Consumer Secret: ${consumerSecret.isNotEmpty ? '***' : '(empty)'}',
      );
      debugPrint('  - API Version: $apiVersion');
      debugPrint(
        '  - Source: ${Platform.environment.containsKey('WOOCOMMERCE_CONSUMER_KEY') ? 'Environment' : 'Config'}',
      );

      WooNetwork.init(
        getIt,
        storeUrl: storeUrl,
        username: consumerKey, // Use consumer_key as username
        password: consumerSecret, // Use consumer_secret as password
        apiVersion: apiVersion,
      );

      debugPrint('✅ WooCommerce network initialized with credentials');
    } else {
      debugPrint(
        '⚠️ WooCommerce store URL not configured. Please check app_config.json',
      );
    }
  } catch (e) {
    debugPrint('❌ Error initializing from environment: $e');
    rethrow;
  }
}
