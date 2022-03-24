// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;

import 'core/http/base_url_provider.dart' as _i4;
import 'core/http/di_dio_client_module.dart' as _i14;
import 'core/http/dio_client_creator.dart' as _i7;
import 'core/logger/di_logger_module.dart' as _i15;
import 'features/registration/data/auth_repository.dart' as _i3;
import 'features/registration/data/remote/auth_service.dart' as _i12;
import 'features/registration/di_registration_module.dart' as _i13;
import 'features/registration/domain/AuthInteractor.dart' as _i6;
import 'features/registration/presentation/bloc/registration_bloc.dart' as _i10;
import 'utils/dio/dio_error_handler.dart' as _i8;
import 'utils/dio/dio_error_models.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registrationModule = _$RegistrationModule();
  final dioClientModule = _$DioClientModule();
  final loggerModule = _$LoggerModule();
  gh.singleton<_i3.AuthRepository>(registrationModule.getAuthRepository());
  gh.singleton<_i4.BaseUrlProvider>(dioClientModule.baseUrlProvider);
  gh.singleton<_i5.Logger>(loggerModule.getLogger());
  gh.singleton<_i6.AuthInteractor>(
      registrationModule.getAuthInteractor(get<_i3.AuthRepository>()));
  gh.singleton<_i7.DioClientCreator>(dioClientModule.getDioClientCreator(
      get<_i4.BaseUrlProvider>(), get<_i5.Logger>()));
  gh.lazySingleton<_i8.DioErrorHandler<_i9.DefaultApiError>>(
      () => dioClientModule.makeDioErrorHandler(get<_i5.Logger>()));
  gh.factory<_i10.RegistrationFormBloc>(() =>
      _i10.RegistrationFormBloc(authInteractor: get<_i6.AuthInteractor>()));
  await gh.singletonAsync<_i11.Dio>(
      () => dioClientModule.makeDioClient(get<_i7.DioClientCreator>()),
      instanceName: 'authHttpClient',
      preResolve: true);
  gh.singleton<_i12.AuthService>(registrationModule.getAuthService(
      get<_i11.Dio>(instanceName: 'authHttpClient'),
      get<_i8.DioErrorHandler<_i9.DefaultApiError>>()));
  return get;
}

class _$RegistrationModule extends _i13.RegistrationModule {}

class _$DioClientModule extends _i14.DioClientModule {}

class _$LoggerModule extends _i15.LoggerModule {}
