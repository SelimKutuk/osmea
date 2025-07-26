import 'package:admin_dashboard/config/config_di.dart';
import 'package:admin_dashboard/routes/app_routes.dart';
import 'package:flavor/flavor.dart';
import 'package:flutter/material.dart';
import 'package:core/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Flavor.create(
    Environment.production,
    name: 'DEV',
    properties: {
      Keys.apiUrl: 'https://api.example.com',
    },
  );
  await MasterApp.runBefore(allowCollectDataTelemetry: false);
  await configureDependencies(environment: 'dev');
  runApp(MasterApp(
    router: appRouter,
  ));
}
