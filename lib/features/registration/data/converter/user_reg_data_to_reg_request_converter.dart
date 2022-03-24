import 'package:graduation_work_ui/features/registration/models/data/user_reg_request.dart';
import 'package:graduation_work_ui/features/registration/models/domain/user_registration_data.dart';
import 'package:graduation_work_ui/utils/converter/one_way_converter.dart';

class UserRegistrationDataToRegistrationRequestConverter
    implements OneWayConverter<UserRegistrationData, UserRegRequest> {
  @override
  UserRegRequest convert(UserRegistrationData from) {
    return UserRegRequest(email: from.email,
        firstName: from.firstName,
        lastName: from.lastName,
        phoneNumber: from.phoneNumber);
  }
}