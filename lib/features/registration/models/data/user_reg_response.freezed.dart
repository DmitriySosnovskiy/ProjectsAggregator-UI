// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_reg_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserRegResponse _$UserRegResponseFromJson(Map<String, dynamic> json) {
  return _UserRegResponse.fromJson(json);
}

/// @nodoc
class _$UserRegResponseTearOff {
  const _$UserRegResponseTearOff();

  _UserRegResponse call({@JsonKey(name: "email") required String email}) {
    return _UserRegResponse(
      email: email,
    );
  }

  UserRegResponse fromJson(Map<String, Object?> json) {
    return UserRegResponse.fromJson(json);
  }
}

/// @nodoc
const $UserRegResponse = _$UserRegResponseTearOff();

/// @nodoc
mixin _$UserRegResponse {
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRegResponseCopyWith<UserRegResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegResponseCopyWith<$Res> {
  factory $UserRegResponseCopyWith(
          UserRegResponse value, $Res Function(UserRegResponse) then) =
      _$UserRegResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "email") String email});
}

/// @nodoc
class _$UserRegResponseCopyWithImpl<$Res>
    implements $UserRegResponseCopyWith<$Res> {
  _$UserRegResponseCopyWithImpl(this._value, this._then);

  final UserRegResponse _value;
  // ignore: unused_field
  final $Res Function(UserRegResponse) _then;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserRegResponseCopyWith<$Res>
    implements $UserRegResponseCopyWith<$Res> {
  factory _$UserRegResponseCopyWith(
          _UserRegResponse value, $Res Function(_UserRegResponse) then) =
      __$UserRegResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "email") String email});
}

/// @nodoc
class __$UserRegResponseCopyWithImpl<$Res>
    extends _$UserRegResponseCopyWithImpl<$Res>
    implements _$UserRegResponseCopyWith<$Res> {
  __$UserRegResponseCopyWithImpl(
      _UserRegResponse _value, $Res Function(_UserRegResponse) _then)
      : super(_value, (v) => _then(v as _UserRegResponse));

  @override
  _UserRegResponse get _value => super._value as _UserRegResponse;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_UserRegResponse(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserRegResponse
    with DiagnosticableTreeMixin
    implements _UserRegResponse {
  const _$_UserRegResponse({@JsonKey(name: "email") required this.email});

  factory _$_UserRegResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserRegResponseFromJson(json);

  @override
  @JsonKey(name: "email")
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserRegResponse(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserRegResponse'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserRegResponse &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$UserRegResponseCopyWith<_UserRegResponse> get copyWith =>
      __$UserRegResponseCopyWithImpl<_UserRegResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserRegResponseToJson(this);
  }
}

abstract class _UserRegResponse implements UserRegResponse {
  const factory _UserRegResponse(
      {@JsonKey(name: "email") required String email}) = _$_UserRegResponse;

  factory _UserRegResponse.fromJson(Map<String, dynamic> json) =
      _$_UserRegResponse.fromJson;

  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(ignore: true)
  _$UserRegResponseCopyWith<_UserRegResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
