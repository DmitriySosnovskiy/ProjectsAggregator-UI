import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:graduation_work_ui/core/http/base_url_provider.dart';
import 'package:graduation_work_ui/core/http/pretty_dio_logger.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import 'flutter_transformer.dart';

///Абстракция для создания DIO-клиентов
abstract class DioClientCreator {
  ///Возвращает http-client для подключения к домену работы с time-api
  Future<Dio> makeAuthServiceDioClient();
}

///Базовая реализация [DioClientCreator] базирующаяся на [DriverEnvironment] и [LinkProvider]
class DioClientCreatorImpl implements DioClientCreator {
  static const defaultConnectTimeout = 5000;
  static const defaultReceiveTimeout = 25000;

  @protected
  final BaseUrlProvider baseUrlProvider;
  @protected
  final Logger logger;

  DioClientCreatorImpl({
    required this.baseUrlProvider,
    required this.logger,
  });

  @override
  Future<Dio> makeAuthServiceDioClient() => _baseDio(baseUrlProvider.authHost);

  /// Метод подставляющий базовую настроенную версию Dio
  Future<Dio> _baseDio(final String url) async {
    final startDio = Dio();

    startDio.options.baseUrl = url;
    startDio.options.connectTimeout = defaultConnectTimeout;
    startDio.options.receiveTimeout = defaultReceiveTimeout;

    startDio.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        logPrint: logger.d,
      ),
    );

    startDio.transformer = FlutterTransformer();
    return startDio;
  }
}
