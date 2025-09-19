// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_update_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PasswordUpdateResponse _$PasswordUpdateResponseFromJson(
    Map<String, dynamic> json) {
  return _PasswordUpdateResponse.fromJson(json);
}

/// @nodoc
mixin _$PasswordUpdateResponse {
  /// Success status
  bool get success => throw _privateConstructorUsedError;

  /// Response message
  String? get message => throw _privateConstructorUsedError;

  /// Error details
  String? get error => throw _privateConstructorUsedError;

  /// Response data
  PasswordUpdateData? get data => throw _privateConstructorUsedError;

  /// Metadata
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordUpdateResponseCopyWith<PasswordUpdateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordUpdateResponseCopyWith<$Res> {
  factory $PasswordUpdateResponseCopyWith(PasswordUpdateResponse value,
          $Res Function(PasswordUpdateResponse) then) =
      _$PasswordUpdateResponseCopyWithImpl<$Res, PasswordUpdateResponse>;
  @useResult
  $Res call(
      {bool success,
      String? message,
      String? error,
      PasswordUpdateData? data,
      Map<String, dynamic>? metadata});

  $PasswordUpdateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PasswordUpdateResponseCopyWithImpl<$Res,
        $Val extends PasswordUpdateResponse>
    implements $PasswordUpdateResponseCopyWith<$Res> {
  _$PasswordUpdateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? error = freezed,
    Object? data = freezed,
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
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PasswordUpdateData?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PasswordUpdateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PasswordUpdateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PasswordUpdateResponseImplCopyWith<$Res>
    implements $PasswordUpdateResponseCopyWith<$Res> {
  factory _$$PasswordUpdateResponseImplCopyWith(
          _$PasswordUpdateResponseImpl value,
          $Res Function(_$PasswordUpdateResponseImpl) then) =
      __$$PasswordUpdateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool success,
      String? message,
      String? error,
      PasswordUpdateData? data,
      Map<String, dynamic>? metadata});

  @override
  $PasswordUpdateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PasswordUpdateResponseImplCopyWithImpl<$Res>
    extends _$PasswordUpdateResponseCopyWithImpl<$Res,
        _$PasswordUpdateResponseImpl>
    implements _$$PasswordUpdateResponseImplCopyWith<$Res> {
  __$$PasswordUpdateResponseImplCopyWithImpl(
      _$PasswordUpdateResponseImpl _value,
      $Res Function(_$PasswordUpdateResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? error = freezed,
    Object? data = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$PasswordUpdateResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PasswordUpdateData?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordUpdateResponseImpl implements _PasswordUpdateResponse {
  const _$PasswordUpdateResponseImpl(
      {this.success = false,
      this.message,
      this.error,
      this.data,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$PasswordUpdateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordUpdateResponseImplFromJson(json);

  /// Success status
  @override
  @JsonKey()
  final bool success;

  /// Response message
  @override
  final String? message;

  /// Error details
  @override
  final String? error;

  /// Response data
  @override
  final PasswordUpdateData? data;

  /// Metadata
  final Map<String, dynamic>? _metadata;

  /// Metadata
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
    return 'PasswordUpdateResponse(success: $success, message: $message, error: $error, data: $data, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordUpdateResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, error, data,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordUpdateResponseImplCopyWith<_$PasswordUpdateResponseImpl>
      get copyWith => __$$PasswordUpdateResponseImplCopyWithImpl<
          _$PasswordUpdateResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordUpdateResponseImplToJson(
      this,
    );
  }
}

abstract class _PasswordUpdateResponse implements PasswordUpdateResponse {
  const factory _PasswordUpdateResponse(
      {final bool success,
      final String? message,
      final String? error,
      final PasswordUpdateData? data,
      final Map<String, dynamic>? metadata}) = _$PasswordUpdateResponseImpl;

  factory _PasswordUpdateResponse.fromJson(Map<String, dynamic> json) =
      _$PasswordUpdateResponseImpl.fromJson;

  @override

  /// Success status
  bool get success;
  @override

  /// Response message
  String? get message;
  @override

  /// Error details
  String? get error;
  @override

  /// Response data
  PasswordUpdateData? get data;
  @override

  /// Metadata
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$PasswordUpdateResponseImplCopyWith<_$PasswordUpdateResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PasswordUpdateData _$PasswordUpdateDataFromJson(Map<String, dynamic> json) {
  return _PasswordUpdateData.fromJson(json);
}

/// @nodoc
mixin _$PasswordUpdateData {
  /// User email
  String? get email => throw _privateConstructorUsedError;

  /// Password updated status
  bool get passwordUpdated => throw _privateConstructorUsedError;

  /// Updated timestamp
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordUpdateDataCopyWith<PasswordUpdateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordUpdateDataCopyWith<$Res> {
  factory $PasswordUpdateDataCopyWith(
          PasswordUpdateData value, $Res Function(PasswordUpdateData) then) =
      _$PasswordUpdateDataCopyWithImpl<$Res, PasswordUpdateData>;
  @useResult
  $Res call({String? email, bool passwordUpdated, DateTime? updatedAt});
}

/// @nodoc
class _$PasswordUpdateDataCopyWithImpl<$Res, $Val extends PasswordUpdateData>
    implements $PasswordUpdateDataCopyWith<$Res> {
  _$PasswordUpdateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? passwordUpdated = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordUpdated: null == passwordUpdated
          ? _value.passwordUpdated
          : passwordUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasswordUpdateDataImplCopyWith<$Res>
    implements $PasswordUpdateDataCopyWith<$Res> {
  factory _$$PasswordUpdateDataImplCopyWith(_$PasswordUpdateDataImpl value,
          $Res Function(_$PasswordUpdateDataImpl) then) =
      __$$PasswordUpdateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, bool passwordUpdated, DateTime? updatedAt});
}

/// @nodoc
class __$$PasswordUpdateDataImplCopyWithImpl<$Res>
    extends _$PasswordUpdateDataCopyWithImpl<$Res, _$PasswordUpdateDataImpl>
    implements _$$PasswordUpdateDataImplCopyWith<$Res> {
  __$$PasswordUpdateDataImplCopyWithImpl(_$PasswordUpdateDataImpl _value,
      $Res Function(_$PasswordUpdateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? passwordUpdated = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$PasswordUpdateDataImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordUpdated: null == passwordUpdated
          ? _value.passwordUpdated
          : passwordUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordUpdateDataImpl implements _PasswordUpdateData {
  const _$PasswordUpdateDataImpl(
      {this.email, this.passwordUpdated = false, this.updatedAt});

  factory _$PasswordUpdateDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordUpdateDataImplFromJson(json);

  /// User email
  @override
  final String? email;

  /// Password updated status
  @override
  @JsonKey()
  final bool passwordUpdated;

  /// Updated timestamp
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'PasswordUpdateData(email: $email, passwordUpdated: $passwordUpdated, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordUpdateDataImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.passwordUpdated, passwordUpdated) ||
                other.passwordUpdated == passwordUpdated) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, passwordUpdated, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordUpdateDataImplCopyWith<_$PasswordUpdateDataImpl> get copyWith =>
      __$$PasswordUpdateDataImplCopyWithImpl<_$PasswordUpdateDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordUpdateDataImplToJson(
      this,
    );
  }
}

abstract class _PasswordUpdateData implements PasswordUpdateData {
  const factory _PasswordUpdateData(
      {final String? email,
      final bool passwordUpdated,
      final DateTime? updatedAt}) = _$PasswordUpdateDataImpl;

  factory _PasswordUpdateData.fromJson(Map<String, dynamic> json) =
      _$PasswordUpdateDataImpl.fromJson;

  @override

  /// User email
  String? get email;
  @override

  /// Password updated status
  bool get passwordUpdated;
  @override

  /// Updated timestamp
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$PasswordUpdateDataImplCopyWith<_$PasswordUpdateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
