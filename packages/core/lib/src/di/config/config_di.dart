// 📦 Importing core module dependencies
import 'package:core/src/di/config/config_di.config.dart';
import 'package:core/src/views/onboarding/cubit/onboarding_cubit.dart';
import 'package:core/src/views/permissions/cubit/permissions_cubit.dart';
import 'package:core/src/views/splash/cubit/splash_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

// 🏗️ Creating a singleton instance of GetIt for dependency injection
GetIt getIt = GetIt.instance;

// 🛠️ This annotation generates the dependency injection initialization code
@InjectableInit(preferRelativeImports: false)
Future<GetIt> configureDependencies() async {
  // Register Logger first
  getIt.registerFactory<Logger>(() => Logger());

  // 🔄 Run the generated initialization and return the configured GetIt instance
  final result = getIt.init();

  // Register SplashCubit in core package
  getIt.registerFactory<SplashCubit>(() => SplashCubit());

  // Register OnboardingCubit in core package
  getIt.registerFactory<OnboardingCubit>(() => OnboardingCubit());

  // Register PermissionsCubit in core package
  getIt.registerFactory<PermissionsCubit>(() => PermissionsCubit());

  return result;
}
