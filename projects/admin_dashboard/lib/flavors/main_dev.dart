import 'package:admin_dashboard/config/config_di.dart';
import 'package:admin_dashboard/routes/app_routes.dart';
import 'package:flavor/flavor.dart';
import 'package:flutter/material.dart';
import 'package:core/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Flavor.create(
    Environment.dev,
    color: const Color.fromARGB(215, 42, 126, 1),
    name: 'DEV',
    properties: {
      Keys.apiUrl: 'https://api.dev.example.com',
    },
  );
  await MasterApp.runBefore(allowCollectDataTelemetry: true);
  await configureDependencies(environment: 'dev');
  runApp(
    Banner(
      message: 'DEV',
      location: BannerLocation.topStart,
      color: Colors.redAccent,
      child: MasterApp(
        router: appRouter,
      ),
    ),
  );
}
