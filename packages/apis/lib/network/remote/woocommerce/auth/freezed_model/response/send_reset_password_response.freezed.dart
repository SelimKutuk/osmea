// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_reset_password_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendResetPasswordResponse _$SendResetPasswordResponseFromJson(
    Map<String, dynamic> json) {
  return _SendResetPasswordResponse.fromJson(json);
}

/// @nodoc
mixin _$SendResetPasswordResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message =>
      throw _privateConstructorUsedError; // Made nullable as server sometimes doesn't send message
  SendResetPasswordData? get data => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendResetPasswordResponseCopyWith<SendResetPasswordResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendResetPasswordResponseCopyWith<$Res> {
  factory $SendResetPasswordResponseCopyWith(SendResetPasswordResponse value,
          $Res Function(SendResetPasswordResponse) then) =
      _$SendResetPasswordResponseCopyWithImpl<$Res, SendResetPasswordResponse>;
  @useResult
  $Res call(
      {bool success,
      String? message,
      SendResetPasswordData? data,
      String? error,
      Map<String, dynamic>? metadata});

  $SendResetPasswordDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SendResetPasswordResponseCopyWithImpl<$Res,
        $Val extends SendResetPasswordResponse>
    implements $SendResetPasswordResponseCopyWith<$Res> {
  _$SendResetPasswordResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? data = freezed,
    Object? error = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SendResetPasswordData?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SendResetPasswordDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SendResetPasswordDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SendResetPasswordResponseImplCopyWith<$Res>
    implements $SendResetPasswordResponseCopyWith<$Res> {
  factory _$$SendResetPasswordResponseImplCopyWith(
          _$SendResetPasswordResponseImpl value,
          $Res Function(_$SendResetPasswordResponseImpl) then) =
      __$$SendResetPasswordResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool success,
      String? message,
      SendResetPasswordData? data,
      String? error,
      Map<String, dynamic>? metadata});

  @override
  $SendResetPasswordDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SendResetPasswordResponseImplCopyWithImpl<$Res>
    extends _$SendResetPasswordResponseCopyWithImpl<$Res,
        _$SendResetPasswordResponseImpl>
    implements _$$SendResetPasswordResponseImplCopyWith<$Res> {
  __$$SendResetPasswordResponseImplCopyWithImpl(
      _$SendResetPasswordResponseImpl _value,
      $Res Function(_$SendResetPasswordResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? data = freezed,
    Object? error = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$SendResetPasswordResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SendResetPasswordData?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
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
class _$SendResetPasswordResponseImpl implements _SendResetPasswordResponse {
  const _$SendResetPasswordResponseImpl(
      {required this.success,
      this.message,
      this.data,
      this.error,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$SendResetPasswordResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendResetPasswordResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String? message;
// Made nullable as server sometimes doesn't send message
  @override
  final SendResetPasswordData? data;
  @override
  final String? error;
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
    return 'SendResetPasswordResponse(success: $success, message: $message, data: $data, error: $error, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendResetPasswordResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data, error,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendResetPasswordResponseImplCopyWith<_$SendResetPasswordResponseImpl>
      get copyWith => __$$SendResetPasswordResponseImplCopyWithImpl<
          _$SendResetPasswordResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendResetPasswordResponseImplToJson(
      this,
    );
  }
}

abstract class _SendResetPasswordResponse implements SendResetPasswordResponse {
  const factory _SendResetPasswordResponse(
      {required final bool success,
      final String? message,
      final SendResetPasswordData? data,
      final String? error,
      final Map<String, dynamic>? metadata}) = _$SendResetPasswordResponseImpl;

  factory _SendResetPasswordResponse.fromJson(Map<String, dynamic> json) =
      _$SendResetPasswordResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override // Made nullable as server sometimes doesn't send message
  SendResetPasswordData? get data;
  @override
  String? get error;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$SendResetPasswordResponseImplCopyWith<_$SendResetPasswordResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SendResetPasswordData _$SendResetPasswordDataFromJson(
    Map<String, dynamic> json) {
  return _SendResetPasswordData.fromJson(json);
}

/// @nodoc
mixin _$SendResetPasswordData {
  String get email => throw _privateConstructorUsedError;
  String? get resetToken => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  bool? get emailSent => throw _privateConstructorUsedError;
  String? get resetUrl => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendResetPasswordDataCopyWith<SendResetPasswordData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendResetPasswordDataCopyWith<$Res> {
  factory $SendResetPasswordDataCopyWith(SendResetPasswordData value,
          $Res Function(SendResetPasswordData) then) =
      _$SendResetPasswordDataCopyWithImpl<$Res, SendResetPasswordData>;
  @useResult
  $Res call(
      {String email,
      String? resetToken,
      DateTime? expiresAt,
      bool? emailSent,
      String? resetUrl,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$SendResetPasswordDataCopyWithImpl<$Res,
        $Val extends SendResetPasswordData>
    implements $SendResetPasswordDataCopyWith<$Res> {
  _$SendResetPasswordDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? resetToken = freezed,
    Object? expiresAt = freezed,
    Object? emailSent = freezed,
    Object? resetUrl = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      resetToken: freezed == resetToken
          ? _value.resetToken
          : resetToken // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      emailSent: freezed == emailSent
          ? _value.emailSent
          : emailSent // ignore: cast_nullable_to_non_nullable
              as bool?,
      resetUrl: freezed == resetUrl
          ? _value.resetUrl
          : resetUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendResetPasswordDataImplCopyWith<$Res>
    implements $SendResetPasswordDataCopyWith<$Res> {
  factory _$$SendResetPasswordDataImplCopyWith(
          _$SendResetPasswordDataImpl value,
          $Res Function(_$SendResetPasswordDataImpl) then) =
      __$$SendResetPasswordDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String? resetToken,
      DateTime? expiresAt,
      bool? emailSent,
      String? resetUrl,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$SendResetPasswordDataImplCopyWithImpl<$Res>
    extends _$SendResetPasswordDataCopyWithImpl<$Res,
        _$SendResetPasswordDataImpl>
    implements _$$SendResetPasswordDataImplCopyWith<$Res> {
  __$$SendResetPasswordDataImplCopyWithImpl(_$SendResetPasswordDataImpl _value,
      $Res Function(_$SendResetPasswordDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? resetToken = freezed,
    Object? expiresAt = freezed,
    Object? emailSent = freezed,
    Object? resetUrl = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$SendResetPasswordDataImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      resetToken: freezed == resetToken
          ? _value.resetToken
          : resetToken // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      emailSent: freezed == emailSent
          ? _value.emailSent
          : emailSent // ignore: cast_nullable_to_non_nullable
              as bool?,
      resetUrl: freezed == resetUrl
          ? _value.resetUrl
          : resetUrl // ignore: cast_nullable_to_non_nullable
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
class _$SendResetPasswordDataImpl implements _SendResetPasswordData {
  const _$SendResetPasswordDataImpl(
      {required this.email,
      this.resetToken,
      this.expiresAt,
      this.emailSent,
      this.resetUrl,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$SendResetPasswordDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendResetPasswordDataImplFromJson(json);

  @override
  final String email;
  @override
  final String? resetToken;
  @override
  final DateTime? expiresAt;
  @override
  final bool? emailSent;
  @override
  final String? resetUrl;
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
    return 'SendResetPasswordData(email: $email, resetToken: $resetToken, expiresAt: $expiresAt, emailSent: $emailSent, resetUrl: $resetUrl, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendResetPasswordDataImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.resetToken, resetToken) ||
                other.resetToken == resetToken) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.emailSent, emailSent) ||
                other.emailSent == emailSent) &&
            (identical(other.resetUrl, resetUrl) ||
                other.resetUrl == resetUrl) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, resetToken, expiresAt,
      emailSent, resetUrl, const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendResetPasswordDataImplCopyWith<_$SendResetPasswordDataImpl>
      get copyWith => __$$SendResetPasswordDataImplCopyWithImpl<
          _$SendResetPasswordDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendResetPasswordDataImplToJson(
      this,
    );
  }
}

abstract class _SendResetPasswordData implements SendResetPasswordData {
  const factory _SendResetPasswordData(
      {required final String email,
      final String? resetToken,
      final DateTime? expiresAt,
      final bool? emailSent,
      final String? resetUrl,
      final Map<String, dynamic>? metadata}) = _$SendResetPasswordDataImpl;

  factory _SendResetPasswordData.fromJson(Map<String, dynamic> json) =
      _$SendResetPasswordDataImpl.fromJson;

  @override
  String get email;
  @override
  String? get resetToken;
  @override
  DateTime? get expiresAt;
  @override
  bool? get emailSent;
  @override
  String? get resetUrl;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$SendResetPasswordDataImplCopyWith<_$SendResetPasswordDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
