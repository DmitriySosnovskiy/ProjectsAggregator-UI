import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_reg_request.freezed.dart';

@freezed
class UserRegRequest with _$UserRegRequest {
  const factory UserRegRequest({
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "firstName") required String firstName,
    @JsonKey(name: "lastName") required String lastName,
    @JsonKey(name: "phoneNumber") required String phoneNumber
  }) = _UserRegRequest;
}