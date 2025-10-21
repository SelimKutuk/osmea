// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PasswordUpdateRequest _$PasswordUpdateRequestFromJson(
    Map<String, dynamic> json) {
  return _PasswordUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$PasswordUpdateRequest {
  /// User email address
  String get email => throw _privateConstructorUsedError;

  /// New password
  String get newPassword => throw _privateConstructorUsedError;

  /// JWT token for authentication
  String get jwtToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordUpdateRequestCopyWith<PasswordUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordUpdateRequestCopyWith<$Res> {
  factory $PasswordUpdateRequestCopyWith(PasswordUpdateRequest value,
          $Res Function(PasswordUpdateRequest) then) =
      _$PasswordUpdateRequestCopyWithImpl<$Res, PasswordUpdateRequest>;
  @useResult
  $Res call({String email, String newPassword, String jwtToken});
}

/// @nodoc
class _$PasswordUpdateRequestCopyWithImpl<$Res,
        $Val extends PasswordUpdateRequest>
    implements $PasswordUpdateRequestCopyWith<$Res> {
  _$PasswordUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? newPassword = null,
    Object? jwtToken = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      jwtToken: null == jwtToken
          ? _value.jwtToken
          : jwtToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasswordUpdateRequestImplCopyWith<$Res>
    implements $PasswordUpdateRequestCopyWith<$Res> {
  factory _$$PasswordUpdateRequestImplCopyWith(
          _$PasswordUpdateRequestImpl value,
          $Res Function(_$PasswordUpdateRequestImpl) then) =
      __$$PasswordUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String newPassword, String jwtToken});
}

/// @nodoc
class __$$PasswordUpdateRequestImplCopyWithImpl<$Res>
    extends _$PasswordUpdateRequestCopyWithImpl<$Res,
        _$PasswordUpdateRequestImpl>
    implements _$$PasswordUpdateRequestImplCopyWith<$Res> {
  __$$PasswordUpdateRequestImplCopyWithImpl(_$PasswordUpdateRequestImpl _value,
      $Res Function(_$PasswordUpdateRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? newPassword = null,
    Object? jwtToken = null,
  }) {
    return _then(_$PasswordUpdateRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      jwtToken: null == jwtToken
          ? _value.jwtToken
          : jwtToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordUpdateRequestImpl implements _PasswordUpdateRequest {
  const _$PasswordUpdateRequestImpl(
      {required this.email, required this.newPassword, required this.jwtToken});

  factory _$PasswordUpdateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordUpdateRequestImplFromJson(json);

  /// User email address
  @override
  final String email;

  /// New password
  @override
  final String newPassword;

  /// JWT token for authentication
  @override
  final String jwtToken;

  @override
  String toString() {
    return 'PasswordUpdateRequest(email: $email, newPassword: $newPassword, jwtToken: $jwtToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordUpdateRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.jwtToken, jwtToken) ||
                other.jwtToken == jwtToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, newPassword, jwtToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordUpdateRequestImplCopyWith<_$PasswordUpdateRequestImpl>
      get copyWith => __$$PasswordUpdateRequestImplCopyWithImpl<
          _$PasswordUpdateRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordUpdateRequestImplToJson(
      this,
    );
  }
}

abstract class _PasswordUpdateRequest implements PasswordUpdateRequest {
  const factory _PasswordUpdateRequest(
      {required final String email,
      required final String newPassword,
      required final String jwtToken}) = _$PasswordUpdateRequestImpl;

  factory _PasswordUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$PasswordUpdateRequestImpl.fromJson;

  @override

  /// User email address
  String get email;
  @override

  /// New password
  String get newPassword;
  @override

  /// JWT token for authentication
  String get jwtToken;
  @override
  @JsonKey(ignore: true)
  _$$PasswordUpdateRequestImplCopyWith<_$PasswordUpdateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
