import 'package:storefront_woo/app/routes/app_routes.dart';
import 'package:storefront_woo/app/core/config/config_di.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

launchApp({String environment = 'dev'}) async {
  /// Initializes necessary components before the app starts.
  WidgetsFlutterBinding.ensureInitialized();

  // Perform any necessary setup before the app starts
  await MasterApp.runBefore(allowCollectDataTelemetry: true);

  // Configure dependency injection for the application
  await configureDependencies(environment: environment);

  // Run the main application with the specified router
  runApp(
    MasterApp(
      router: appRouter, // The router handles navigation within the app
      devModeGrid: environment == 'dev',
      devModeSpacer: environment == 'dev',
    ),
  );
}
