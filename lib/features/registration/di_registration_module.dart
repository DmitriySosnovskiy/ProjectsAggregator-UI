import 'package:dio/dio.dart';
import 'package:graduation_work_ui/const/injectable_names.dart';
import 'package:graduation_work_ui/features/registration/data/auth_repository.dart';
import 'package:graduation_work_ui/features/registration/data/converter/user_reg_data_to_reg_request_converter.dart';
import 'package:graduation_work_ui/features/registration/data/remote/auth_service.dart';
import 'package:graduation_work_ui/features/registration/domain/AuthInteractor.dart';
import 'package:graduation_work_ui/utils/converter/one_way_converter.dart';
import 'package:graduation_work_ui/utils/dio/dio_error_handler.dart';
import 'package:graduation_work_ui/utils/dio/dio_error_models.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegistrationModule {
  @Singleton(as: AuthInteractor)
  AuthInteractorImpl getAuthInteractor(AuthRepository authRepository) =>
      AuthInteractorImpl(authRepository: authRepository);

  @Singleton(as: AuthRepository)
  AuthRepositoryImpl getAuthRepository() => AuthRepositoryImpl(
      userRegistrationDataToRegRequestConverter:
          new UserRegistrationDataToRegistrationRequestConverter());

  @Singleton(as: AuthService)
  AuthServiceImpl getAuthService(
          @Named(InjectableNames.authHttpClientQualifier) Dio dioClient,
          DioErrorHandler<DefaultApiError> dioErrorHandler) =>
      AuthServiceImpl(dioClient, dioErrorHandler);
}
