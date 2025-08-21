// 🌐 API Dependency Injection Configuration
// This file sets up dependency injection for the APIs package using GetIt and Injectable.

import 'package:apis/apis.dart'; // 📦 Main APIs package
import 'package:apis/di/config/config_di.config.dart'; // ⚙️ Generated DI config
import 'package:apis/network/remote/shopify/graphql/services/base_graphql_service.dart'; // 🏗️ Base GraphQL Service
import 'package:apis/network/remote/shopify/graphql/products/abstract/product_graphql_service.dart'; // 🛍️ Product GraphQL Service
import 'package:apis/network/remote/shopify/graphql/products/api/product_graphql_service_impl.dart'; // 🛍️ Product GraphQL Implementation
import 'package:apis/network/remote/shopify/graphql/customers/abstract/customer_graphql_service.dart'; // 👥 Customer GraphQL Service
import 'package:apis/network/remote/shopify/graphql/customers/api/customer_graphql_service_impl.dart'; // 👥 Customer GraphQL Implementation
import 'package:apis/dio_config/shopify_graphql_client.dart'; // 🔌 Shopify GraphQL Client
import 'package:get_it/get_it.dart'; // 🛠️ Service locator
import 'package:injectable/injectable.dart'; // 💉 Dependency injection
import 'package:logger/logger.dart'; // 📜 Logger for error handling
import 'package:flutter/foundation.dart'; // For FlutterError

// Create a logger instance for logging errors
final Logger logger = Logger();

/// 🚀 Initializes and configures all dependencies for the APIs package.
///
/// Call this function at app startup to ensure all services are ready to use.
///
/// Returns the configured [GetIt] instance for service locator.
@InjectableInit(preferRelativeImports: false)
GetIt configureDependencies() {
  try {
    // 🏗️ Initialize dependencies using the generated config
    final getIt = ApiNetwork.getIt.init();

    // 🔌 Register GraphQL services manually if needed
    _registerGraphQLServices(getIt);

    return getIt;
  } catch (e) {
    // Log the error if dependency initialization fails
    logger.e('Failed to configure dependencies: $e');

    // Handle specific exceptions
    if (e is FlutterError) {
      logger.e('Flutter error occurred: ${e.message}');
    } else if (e is Exception) {
      logger.e('General exception occurred: ${e.toString()}');
    } else {
      logger.e('An unknown error occurred: ${e.toString()}');
    }

    rethrow; // Rethrow the error after logging
  }
}

/// 🔌 Manually register GraphQL services if auto-registration fails
void _registerGraphQLServices(GetIt getIt) {
  try {
    // Shopify GraphQL Client
    if (!getIt.isRegistered<ShopifyGraphQLClient>()) {
      getIt.registerSingleton<ShopifyGraphQLClient>(ShopifyGraphQLClient());
    }

    // Product GraphQL Service
    if (!getIt.isRegistered<ProductGraphQLService>()) {
      getIt.registerFactory<ProductGraphQLService>(
        () => ProductGraphQLServiceImpl(getIt<ShopifyGraphQLClient>()),
      );
    }

    // Customer GraphQL Service
    if (!getIt.isRegistered<CustomerGraphQLService>()) {
      getIt.registerFactory<CustomerGraphQLService>(
        () => CustomerGraphQLServiceImpl(getIt<ShopifyGraphQLClient>()),
      );
    }

    logger.i('GraphQL services registered successfully');
  } catch (e) {
    logger.w('Some GraphQL services could not be registered: $e');
  }
}
