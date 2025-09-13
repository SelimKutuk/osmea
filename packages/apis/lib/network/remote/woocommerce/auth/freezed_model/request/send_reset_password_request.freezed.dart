// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_reset_password_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendResetPasswordRequest _$SendResetPasswordRequestFromJson(
    Map<String, dynamic> json) {
  return _SendResetPasswordRequest.fromJson(json);
}

/// @nodoc
mixin _$SendResetPasswordRequest {
  String get email => throw _privateConstructorUsedError;
  String? get resetUrl => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this SendResetPasswordRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendResetPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendResetPasswordRequestCopyWith<SendResetPasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendResetPasswordRequestCopyWith<$Res> {
  factory $SendResetPasswordRequestCopyWith(SendResetPasswordRequest value,
          $Res Function(SendResetPasswordRequest) then) =
      _$SendResetPasswordRequestCopyWithImpl<$Res, SendResetPasswordRequest>;
  @useResult
  $Res call({String email, String? resetUrl, Map<String, dynamic>? metadata});
}

/// @nodoc
class _$SendResetPasswordRequestCopyWithImpl<$Res,
        $Val extends SendResetPasswordRequest>
    implements $SendResetPasswordRequestCopyWith<$Res> {
  _$SendResetPasswordRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendResetPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? resetUrl = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$SendResetPasswordRequestImplCopyWith<$Res>
    implements $SendResetPasswordRequestCopyWith<$Res> {
  factory _$$SendResetPasswordRequestImplCopyWith(
          _$SendResetPasswordRequestImpl value,
          $Res Function(_$SendResetPasswordRequestImpl) then) =
      __$$SendResetPasswordRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String? resetUrl, Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$SendResetPasswordRequestImplCopyWithImpl<$Res>
    extends _$SendResetPasswordRequestCopyWithImpl<$Res,
        _$SendResetPasswordRequestImpl>
    implements _$$SendResetPasswordRequestImplCopyWith<$Res> {
  __$$SendResetPasswordRequestImplCopyWithImpl(
      _$SendResetPasswordRequestImpl _value,
      $Res Function(_$SendResetPasswordRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendResetPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? resetUrl = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$SendResetPasswordRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$SendResetPasswordRequestImpl implements _SendResetPasswordRequest {
  const _$SendResetPasswordRequestImpl(
      {required this.email,
      this.resetUrl,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$SendResetPasswordRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendResetPasswordRequestImplFromJson(json);

  @override
  final String email;
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
    return 'SendResetPasswordRequest(email: $email, resetUrl: $resetUrl, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendResetPasswordRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.resetUrl, resetUrl) ||
                other.resetUrl == resetUrl) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, resetUrl,
      const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of SendResetPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendResetPasswordRequestImplCopyWith<_$SendResetPasswordRequestImpl>
      get copyWith => __$$SendResetPasswordRequestImplCopyWithImpl<
          _$SendResetPasswordRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendResetPasswordRequestImplToJson(
      this,
    );
  }
}

abstract class _SendResetPasswordRequest implements SendResetPasswordRequest {
  const factory _SendResetPasswordRequest(
      {required final String email,
      final String? resetUrl,
      final Map<String, dynamic>? metadata}) = _$SendResetPasswordRequestImpl;

  factory _SendResetPasswordRequest.fromJson(Map<String, dynamic> json) =
      _$SendResetPasswordRequestImpl.fromJson;

  @override
  String get email;
  @override
  String? get resetUrl;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of SendResetPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendResetPasswordRequestImplCopyWith<_$SendResetPasswordRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
