import 'package:graduation_work_ui/features/registration/data/auth_repository.dart';
import 'package:graduation_work_ui/features/registration/models/domain/user_registration_data.dart';
import 'package:meta/meta.dart';

abstract class AuthInteractor {
  Future<void> registerUser(UserRegistrationData userRegistrationData);
}

class AuthInteractorImpl implements AuthInteractor {
  @protected
  final AuthRepository authRepository;
  AuthInteractorImpl({ required this.authRepository });

  @override
  Future<void> registerUser(UserRegistrationData userRegistrationData) {
    // TODO: implement registerUser
    throw UnimplementedError();
  }

}