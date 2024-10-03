import 'dart:math';

import 'package:beer_app/src/app/deps.config.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

@InjectableInit(
  throwOnMissingDependencies: true,
)
void configureDependencies() => GetIt.I.init();

@module
abstract class AppModule {
  @singleton
  Dio get dio => Dio()
    ..interceptors.add(
      TalkerDioLogger(
        settings: const TalkerDioLoggerSettings(
          printRequestHeaders: true,
          printResponseHeaders: true,
        ),
      ),
    );

  @singleton
  Random get random => Random(DateTime.now().millisecondsSinceEpoch);
}
