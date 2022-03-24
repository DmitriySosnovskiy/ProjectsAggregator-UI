import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:graduation_work_ui/const/injectable_names.dart';
import 'package:graduation_work_ui/core/http/base_url_provider.dart';
import 'package:graduation_work_ui/utils/dio/dio_error_handler.dart';
import 'package:graduation_work_ui/utils/dio/dio_error_models.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import 'dio_client_creator.dart';

/// Модуль поставляющий зависимости, связанные с [Dio]
@module
abstract class DioClientModule {
  @Named(InjectableNames.authHttpClientQualifier)
  @preResolve
  @singleton
  Future<Dio> makeDioClient(DioClientCreator dioClientCreator) => dioClientCreator.makeAuthServiceDioClient();

  @singleton
  BaseUrlProvider get baseUrlProvider => BaseUrlProvider();

  @Singleton(as: DioClientCreator)
  DioClientCreatorImpl getDioClientCreator(BaseUrlProvider baseUrlProvider, Logger logger) =>
      DioClientCreatorImpl(baseUrlProvider: baseUrlProvider, logger: logger);

  @lazySingleton
  DioErrorHandler<DefaultApiError> makeDioErrorHandler(Logger logger) => DioErrorHandlerImpl<DefaultApiError>(
        connectivity: Connectivity(),
        logger: logger,
        parseJsonApiError: (json) async {
          //метод, парсящий ошибку от сервера
          return (json != null) ? DefaultApiError.fromJson(json) : null;
        },
      );
}
