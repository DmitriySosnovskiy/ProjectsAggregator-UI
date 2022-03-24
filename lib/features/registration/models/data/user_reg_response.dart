import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_reg_response.freezed.dart';
part 'user_reg_response.g.dart';

@freezed
class UserRegResponse with _$UserRegResponse {
  const factory UserRegResponse({
    @JsonKey(name: "email") required String email,
  }) = _UserRegResponse;

  factory UserRegResponse.fromJson(Map<String, dynamic> json) =>
      _$UserRegResponseFromJson(json);
}