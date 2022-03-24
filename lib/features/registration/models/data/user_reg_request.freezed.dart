// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_reg_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserRegRequestTearOff {
  const _$UserRegRequestTearOff();

  _UserRegRequest call(
      {@JsonKey(name: "email") required String email,
      @JsonKey(name: "firstName") required String firstName,
      @JsonKey(name: "lastName") required String lastName,
      @JsonKey(name: "phoneNumber") required String phoneNumber}) {
    return _UserRegRequest(
      email: email,
      firstName: firstName,
      lastName: lastName,
      phoneNumber: phoneNumber,
    );
  }
}

/// @nodoc
const $UserRegRequest = _$UserRegRequestTearOff();

/// @nodoc
mixin _$UserRegRequest {
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "firstName")
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "lastName")
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "phoneNumber")
  String get phoneNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserRegRequestCopyWith<UserRegRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegRequestCopyWith<$Res> {
  factory $UserRegRequestCopyWith(
          UserRegRequest value, $Res Function(UserRegRequest) then) =
      _$UserRegRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "email") String email,
      @JsonKey(name: "firstName") String firstName,
      @JsonKey(name: "lastName") String lastName,
      @JsonKey(name: "phoneNumber") String phoneNumber});
}

/// @nodoc
class _$UserRegRequestCopyWithImpl<$Res>
    implements $UserRegRequestCopyWith<$Res> {
  _$UserRegRequestCopyWithImpl(this._value, this._then);

  final UserRegRequest _value;
  // ignore: unused_field
  final $Res Function(UserRegRequest) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
abstract class _$UserRegRequestCopyWith<$Res>
    implements $UserRegRequestCopyWith<$Res> {
  factory _$UserRegRequestCopyWith(
          _UserRegRequest value, $Res Function(_UserRegRequest) then) =
      __$UserRegRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "email") String email,
      @JsonKey(name: "firstName") String firstName,
      @JsonKey(name: "lastName") String lastName,
      @JsonKey(name: "phoneNumber") String phoneNumber});
}

/// @nodoc
class __$UserRegRequestCopyWithImpl<$Res>
    extends _$UserRegRequestCopyWithImpl<$Res>
    implements _$UserRegRequestCopyWith<$Res> {
  __$UserRegRequestCopyWithImpl(
      _UserRegRequest _value, $Res Function(_UserRegRequest) _then)
      : super(_value, (v) => _then(v as _UserRegRequest));

  @override
  _UserRegRequest get _value => super._value as _UserRegRequest;

  @override
  $Res call({
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_UserRegRequest(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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

class _$_UserRegRequest
    with DiagnosticableTreeMixin
    implements _UserRegRequest {
  const _$_UserRegRequest(
      {@JsonKey(name: "email") required this.email,
      @JsonKey(name: "firstName") required this.firstName,
      @JsonKey(name: "lastName") required this.lastName,
      @JsonKey(name: "phoneNumber") required this.phoneNumber});

  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "firstName")
  final String firstName;
  @override
  @JsonKey(name: "lastName")
  final String lastName;
  @override
  @JsonKey(name: "phoneNumber")
  final String phoneNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserRegRequest(email: $email, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserRegRequest'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserRegRequest &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$UserRegRequestCopyWith<_UserRegRequest> get copyWith =>
      __$UserRegRequestCopyWithImpl<_UserRegRequest>(this, _$identity);
}

abstract class _UserRegRequest implements UserRegRequest {
  const factory _UserRegRequest(
          {@JsonKey(name: "email") required String email,
          @JsonKey(name: "firstName") required String firstName,
          @JsonKey(name: "lastName") required String lastName,
          @JsonKey(name: "phoneNumber") required String phoneNumber}) =
      _$_UserRegRequest;

  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "firstName")
  String get firstName;
  @override
  @JsonKey(name: "lastName")
  String get lastName;
  @override
  @JsonKey(name: "phoneNumber")
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$UserRegRequestCopyWith<_UserRegRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
