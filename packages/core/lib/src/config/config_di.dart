import 'config_di.config.dart';
import 'package:core/src/helper/common_logger_helper/abstract/common_logger.dart';
import 'package:core/src/helper/common_logger_helper/common_logger_helper.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

GetIt getIt = GetIt.instance;

@InjectableInit()
Future<GetIt> configureDependencies() async {
  getIt.registerLazySingleton<ICommonLogger>(
      () => CommonLogger(logger: Logger()));
  return getIt.init();
}
