import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_registration_data.freezed.dart';

@freezed
class UserRegistrationData with _$UserRegistrationData {
  const factory UserRegistrationData({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String phoneNumber
  }) = _UserRegistrationData;
}