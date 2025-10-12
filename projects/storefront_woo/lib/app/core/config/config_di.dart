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

/// Initialize APIs package from app configuration
Future<void> _initializeFromEnvironment(String? environment) async {
  try {
    debugPrint('🔧 Initializing WooCommerce from app configuration...');

    // Get configuration from app_config.json
    final AssetConfigHelper configHelper = AssetConfigHelper();
    await configHelper.loadConfig('assets/app_config.json');

    final storeUrl = configHelper.getString(
      'woocommerce_configuration.store_url',
      '',
    );
    final apiVersion = configHelper.getString(
      'woocommerce_configuration.version',
      'v1',
    );
    final verifySsl = configHelper.getBool(
      'woocommerce_configuration.verify_ssl',
      true,
    );
    final queryStringAuth = configHelper.getBool(
      'woocommerce_configuration.query_string_auth',
      false,
    );
    final productsPerPage = configHelper.getInt(
      'woocommerce_configuration.products_per_page',
      20,
    );
    final enableReviews = configHelper.getBool(
      'woocommerce_configuration.enable_reviews',
      true,
    );
    final enableCoupons = configHelper.getBool(
      'woocommerce_configuration.enable_coupons',
      true,
    );
    final enableGuestCheckout = configHelper.getBool(
      'woocommerce_configuration.enable_guest_checkout',
      true,
    );

    if (storeUrl.isNotEmpty) {
      // Initialize WooCommerce network for public API access
      debugPrint('🔧 Initializing WooCommerce (Public API):');
      debugPrint('  - Store URL: $storeUrl');
      debugPrint('  - API Version: $apiVersion');
      debugPrint('  - Verify SSL: $verifySsl');
      debugPrint('  - Query String Auth: $queryStringAuth');
      debugPrint('  - Products Per Page: $productsPerPage');
      debugPrint('  - Enable Reviews: $enableReviews');
      debugPrint('  - Enable Coupons: $enableCoupons');
      debugPrint('  - Enable Guest Checkout: $enableGuestCheckout');
      debugPrint('  - Source: app_config.json');

      // Initialize WooCommerce network without authentication for public APIs
      WooNetwork.init(
        getIt,
        storeUrl: storeUrl,
        username: '', // No authentication needed for public APIs
        password: '', // No authentication needed for public APIs
        apiVersion: apiVersion,
      );

      debugPrint('✅ WooCommerce network initialized for public API access');
    } else {
      debugPrint('❌ Missing required configuration:');
      debugPrint('  - Store URL: ${storeUrl.isEmpty ? 'MISSING' : 'OK'}');
      throw Exception('Required WooCommerce store URL is missing');
    }
  } catch (e) {
    debugPrint('❌ Error initializing from app configuration: $e');
    rethrow;
  }
}
