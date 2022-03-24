import 'package:graduation_work_ui/features/registration/models/data/user_reg_request.dart';
import 'package:graduation_work_ui/features/registration/models/data/user_reg_response.dart';
import 'package:graduation_work_ui/features/registration/models/domain/user_registration_data.dart';
import 'package:graduation_work_ui/utils/converter/one_way_converter.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

abstract class AuthRepository {}

class AuthRepositoryImpl implements AuthRepository {
  @protected
  final OneWayConverter<UserRegistrationData, UserRegRequest>
      userRegistrationDataToRegRequestConverter;

  AuthRepositoryImpl({required this.userRegistrationDataToRegRequestConverter});
}