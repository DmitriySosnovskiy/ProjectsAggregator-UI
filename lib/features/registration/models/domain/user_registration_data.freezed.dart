// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_registration_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserRegistrationDataTearOff {
  const _$UserRegistrationDataTearOff();

  _UserRegistrationData call(
      {required String email,
      required String password,
      required String firstName,
      required String lastName,
      required String phoneNumber}) {
    return _UserRegistrationData(
      email: email,
      password: password,
      firstName: firstName,
      lastName: lastName,
      phoneNumber: phoneNumber,
    );
  }
}

/// @nodoc
const $UserRegistrationData = _$UserRegistrationDataTearOff();

/// @nodoc
mixin _$UserRegistrationData {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserRegistrationDataCopyWith<UserRegistrationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegistrationDataCopyWith<$Res> {
  factory $UserRegistrationDataCopyWith(UserRegistrationData value,
          $Res Function(UserRegistrationData) then) =
      _$UserRegistrationDataCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String password,
      String firstName,
      String lastName,
      String phoneNumber});
}

/// @nodoc
class _$UserRegistrationDataCopyWithImpl<$Res>
    implements $UserRegistrationDataCopyWith<$Res> {
  _$UserRegistrationDataCopyWithImpl(this._value, this._then);

  final UserRegistrationData _value;
  // ignore: unused_field
  final $Res Function(UserRegistrationData) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserRegistrationDataCopyWith<$Res>
    implements $UserRegistrationDataCopyWith<$Res> {
  factory _$UserRegistrationDataCopyWith(_UserRegistrationData value,
          $Res Function(_UserRegistrationData) then) =
      __$UserRegistrationDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String password,
      String firstName,
      String lastName,
      String phoneNumber});
}

/// @nodoc
class __$UserRegistrationDataCopyWithImpl<$Res>
    extends _$UserRegistrationDataCopyWithImpl<$Res>
    implements _$UserRegistrationDataCopyWith<$Res> {
  __$UserRegistrationDataCopyWithImpl(
      _UserRegistrationData _value, $Res Function(_UserRegistrationData) _then)
      : super(_value, (v) => _then(v as _UserRegistrationData));

  @override
  _UserRegistrationData get _value => super._value as _UserRegistrationData;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_UserRegistrationData(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserRegistrationData
    with DiagnosticableTreeMixin
    implements _UserRegistrationData {
  const _$_UserRegistrationData(
      {required this.email,
      required this.password,
      required this.firstName,
      required this.lastName,
      required this.phoneNumber});

  @override
  final String email;
  @override
  final String password;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phoneNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserRegistrationData(email: $email, password: $password, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserRegistrationData'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserRegistrationData &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$UserRegistrationDataCopyWith<_UserRegistrationData> get copyWith =>
      __$UserRegistrationDataCopyWithImpl<_UserRegistrationData>(
          this, _$identity);
}

abstract class _UserRegistrationData implements UserRegistrationData {
  const factory _UserRegistrationData(
      {required String email,
      required String password,
      required String firstName,
      required String lastName,
      required String phoneNumber}) = _$_UserRegistrationData;

  @override
  String get email;
  @override
  String get password;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$UserRegistrationDataCopyWith<_UserRegistrationData> get copyWith =>
      throw _privateConstructorUsedError;
}
