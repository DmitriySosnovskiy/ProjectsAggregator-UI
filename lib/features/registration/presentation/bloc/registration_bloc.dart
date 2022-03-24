import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_work_ui/features/registration/domain/AuthInteractor.dart';
import 'package:graduation_work_ui/features/registration/models/domain/user_registration_data.dart';
import 'package:graduation_work_ui/features/registration/presentation/bloc/registration_form_bloc_models.dart';
import 'package:graduation_work_ui/utils/bloc/sr_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

@injectable
class RegistrationFormBloc extends SrBloc<RegistrationScreenEvent,
    RegistrationScreenState, RegistrationScreenSR> {
  @protected
  AuthInteractor authInteractor;

  RegistrationFormBloc({required this.authInteractor})
      : super(const RegistrationScreenState.init()) {
    on<RegistrationScreeenEventRegister>(_register);
  }

  FutureOr<void> _register(RegistrationScreeenEventRegister event,
      Emitter<RegistrationScreenState> emit) async {
    emit.call(RegistrationScreenState.loading());
  }
}
