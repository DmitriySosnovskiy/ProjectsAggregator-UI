import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graduation_work_ui/features/registration/models/domain/user_registration_data.dart';

part 'registration_form_bloc_models.freezed.dart';

@freezed
class RegistrationScreenState with _$RegistrationScreenState {
  const RegistrationScreenState._();
  const factory RegistrationScreenState.init() = RegistrationScreenInitialState;
  const factory RegistrationScreenState.loading() = RegistrationScreenLoading;
}

@freezed
class RegistrationScreenEvent with _$RegistrationScreenEvent {
  const factory RegistrationScreenEvent.init() = RegistrationScreenEventInit;
  const factory RegistrationScreenEvent.register(
      UserRegistrationData userRegistrationData) = RegistrationScreeenEventRegister;
}

@freezed
class RegistrationScreenSR with _$RegistrationScreenSR {
  const factory RegistrationScreenSR.navigateToMain() = _NavigateToMain;
}