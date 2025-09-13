// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_login_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserLoginRequest _$UserLoginRequestFromJson(Map<String, dynamic> json) {
  return _UserLoginRequest.fromJson(json);
}

/// @nodoc
mixin _$UserLoginRequest {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'remember_me')
  bool get rememberMe => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_id')
  String? get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_name')
  String? get deviceName => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this UserLoginRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLoginRequestCopyWith<UserLoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginRequestCopyWith<$Res> {
  factory $UserLoginRequestCopyWith(
          UserLoginRequest value, $Res Function(UserLoginRequest) then) =
      _$UserLoginRequestCopyWithImpl<$Res, UserLoginRequest>;
  @useResult
  $Res call(
      {String email,
      String password,
      @JsonKey(name: 'remember_me') bool rememberMe,
      @JsonKey(name: 'device_id') String? deviceId,
      @JsonKey(name: 'device_name') String? deviceName,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UserLoginRequestCopyWithImpl<$Res, $Val extends UserLoginRequest>
    implements $UserLoginRequestCopyWith<$Res> {
  _$UserLoginRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? rememberMe = null,
    Object? deviceId = freezed,
    Object? deviceName = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLoginRequestImplCopyWith<$Res>
    implements $UserLoginRequestCopyWith<$Res> {
  factory _$$UserLoginRequestImplCopyWith(_$UserLoginRequestImpl value,
          $Res Function(_$UserLoginRequestImpl) then) =
      __$$UserLoginRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      @JsonKey(name: 'remember_me') bool rememberMe,
      @JsonKey(name: 'device_id') String? deviceId,
      @JsonKey(name: 'device_name') String? deviceName,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$UserLoginRequestImplCopyWithImpl<$Res>
    extends _$UserLoginRequestCopyWithImpl<$Res, _$UserLoginRequestImpl>
    implements _$$UserLoginRequestImplCopyWith<$Res> {
  __$$UserLoginRequestImplCopyWithImpl(_$UserLoginRequestImpl _value,
      $Res Function(_$UserLoginRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? rememberMe = null,
    Object? deviceId = freezed,
    Object? deviceName = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$UserLoginRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLoginRequestImpl implements _UserLoginRequest {
  const _$UserLoginRequestImpl(
      {required this.email,
      required this.password,
      @JsonKey(name: 'remember_me') this.rememberMe = false,
      @JsonKey(name: 'device_id') this.deviceId,
      @JsonKey(name: 'device_name') this.deviceName,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$UserLoginRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLoginRequestImplFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  @JsonKey(name: 'remember_me')
  final bool rememberMe;
  @override
  @JsonKey(name: 'device_id')
  final String? deviceId;
  @override
  @JsonKey(name: 'device_name')
  final String? deviceName;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'UserLoginRequest(email: $email, password: $password, rememberMe: $rememberMe, deviceId: $deviceId, deviceName: $deviceName, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.rememberMe, rememberMe) ||
                other.rememberMe == rememberMe) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password, rememberMe,
      deviceId, deviceName, const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of UserLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginRequestImplCopyWith<_$UserLoginRequestImpl> get copyWith =>
      __$$UserLoginRequestImplCopyWithImpl<_$UserLoginRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLoginRequestImplToJson(
      this,
    );
  }
}

abstract class _UserLoginRequest implements UserLoginRequest {
  const factory _UserLoginRequest(
      {required final String email,
      required final String password,
      @JsonKey(name: 'remember_me') final bool rememberMe,
      @JsonKey(name: 'device_id') final String? deviceId,
      @JsonKey(name: 'device_name') final String? deviceName,
      final Map<String, dynamic>? metadata}) = _$UserLoginRequestImpl;

  factory _UserLoginRequest.fromJson(Map<String, dynamic> json) =
      _$UserLoginRequestImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(name: 'remember_me')
  bool get rememberMe;
  @override
  @JsonKey(name: 'device_id')
  String? get deviceId;
  @override
  @JsonKey(name: 'device_name')
  String? get deviceName;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of UserLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLoginRequestImplCopyWith<_$UserLoginRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
