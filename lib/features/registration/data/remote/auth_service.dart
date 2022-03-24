import 'package:dio/dio.dart';
import 'package:graduation_work_ui/features/registration/models/data/user_reg_request.dart';
import 'package:graduation_work_ui/features/registration/models/data/user_reg_response.dart';
import 'package:graduation_work_ui/utils/dio/dio_error_handler.dart';
import 'package:graduation_work_ui/utils/dio/dio_error_models.dart';
import 'package:graduation_work_ui/utils/functional/either.dart';
import 'package:meta/meta.dart';

abstract class AuthService {
  Future<Either<CommonResponseError<DefaultApiError>,
      UserRegResponse>> registerUser(UserRegRequest userRegRequest);
}

class AuthServiceImpl implements AuthService {
  static const _authServiceHostPath = "localhost:8080";

  @protected
  final Dio dioClient;
  @protected
  final DioErrorHandler<DefaultApiError> dioErrorHandler;

  AuthServiceImpl(this.dioClient,
      this.dioErrorHandler);

  @override
  Future<Either<CommonResponseError<DefaultApiError>,
      UserRegResponse>> registerUser(UserRegRequest userRegRequest) async {
    final result = await dioErrorHandler.processRequest(() =>
        dioClient.get<Map<String, dynamic>>(_authServiceHostPath));
    if (result.isLeft)
      return Either.left(result.left);
    else
      return Either.right(UserRegResponse.fromJson(result.right.data!));
  }
}

