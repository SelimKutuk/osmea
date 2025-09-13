// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteUserResponse _$DeleteUserResponseFromJson(Map<String, dynamic> json) {
  return _DeleteUserResponse.fromJson(json);
}

/// @nodoc
mixin _$DeleteUserResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message =>
      throw _privateConstructorUsedError; // Made nullable as server sometimes doesn't send message
  DeleteUserData? get data => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this DeleteUserResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteUserResponseCopyWith<DeleteUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteUserResponseCopyWith<$Res> {
  factory $DeleteUserResponseCopyWith(
          DeleteUserResponse value, $Res Function(DeleteUserResponse) then) =
      _$DeleteUserResponseCopyWithImpl<$Res, DeleteUserResponse>;
  @useResult
  $Res call(
      {bool success,
      String? message,
      DeleteUserData? data,
      String? error,
      Map<String, dynamic>? metadata});

  $DeleteUserDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DeleteUserResponseCopyWithImpl<$Res, $Val extends DeleteUserResponse>
    implements $DeleteUserResponseCopyWith<$Res> {
  _$DeleteUserResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteUserResponse
  /// with the given fields replaced by the non-null parameter values.
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
              as DeleteUserData?,
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

  /// Create a copy of DeleteUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeleteUserDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DeleteUserDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeleteUserResponseImplCopyWith<$Res>
    implements $DeleteUserResponseCopyWith<$Res> {
  factory _$$DeleteUserResponseImplCopyWith(_$DeleteUserResponseImpl value,
          $Res Function(_$DeleteUserResponseImpl) then) =
      __$$DeleteUserResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool success,
      String? message,
      DeleteUserData? data,
      String? error,
      Map<String, dynamic>? metadata});

  @override
  $DeleteUserDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$DeleteUserResponseImplCopyWithImpl<$Res>
    extends _$DeleteUserResponseCopyWithImpl<$Res, _$DeleteUserResponseImpl>
    implements _$$DeleteUserResponseImplCopyWith<$Res> {
  __$$DeleteUserResponseImplCopyWithImpl(_$DeleteUserResponseImpl _value,
      $Res Function(_$DeleteUserResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? data = freezed,
    Object? error = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$DeleteUserResponseImpl(
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
              as DeleteUserData?,
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
class _$DeleteUserResponseImpl implements _DeleteUserResponse {
  const _$DeleteUserResponseImpl(
      {required this.success,
      this.message,
      this.data,
      this.error,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$DeleteUserResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteUserResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String? message;
// Made nullable as server sometimes doesn't send message
  @override
  final DeleteUserData? data;
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
    return 'DeleteUserResponse(success: $success, message: $message, data: $data, error: $error, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteUserResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data, error,
      const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of DeleteUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteUserResponseImplCopyWith<_$DeleteUserResponseImpl> get copyWith =>
      __$$DeleteUserResponseImplCopyWithImpl<_$DeleteUserResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteUserResponseImplToJson(
      this,
    );
  }
}

abstract class _DeleteUserResponse implements DeleteUserResponse {
  const factory _DeleteUserResponse(
      {required final bool success,
      final String? message,
      final DeleteUserData? data,
      final String? error,
      final Map<String, dynamic>? metadata}) = _$DeleteUserResponseImpl;

  factory _DeleteUserResponse.fromJson(Map<String, dynamic> json) =
      _$DeleteUserResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String? get message; // Made nullable as server sometimes doesn't send message
  @override
  DeleteUserData? get data;
  @override
  String? get error;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of DeleteUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteUserResponseImplCopyWith<_$DeleteUserResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeleteUserData _$DeleteUserDataFromJson(Map<String, dynamic> json) {
  return _DeleteUserData.fromJson(json);
}

/// @nodoc
mixin _$DeleteUserData {
  String get userId => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  bool? get ordersDeleted => throw _privateConstructorUsedError;
  bool? get reviewsDeleted => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this DeleteUserData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteUserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteUserDataCopyWith<DeleteUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteUserDataCopyWith<$Res> {
  factory $DeleteUserDataCopyWith(
          DeleteUserData value, $Res Function(DeleteUserData) then) =
      _$DeleteUserDataCopyWithImpl<$Res, DeleteUserData>;
  @useResult
  $Res call(
      {String userId,
      String email,
      DateTime? deletedAt,
      String? reason,
      bool? ordersDeleted,
      bool? reviewsDeleted,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$DeleteUserDataCopyWithImpl<$Res, $Val extends DeleteUserData>
    implements $DeleteUserDataCopyWith<$Res> {
  _$DeleteUserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteUserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? email = null,
    Object? deletedAt = freezed,
    Object? reason = freezed,
    Object? ordersDeleted = freezed,
    Object? reviewsDeleted = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      ordersDeleted: freezed == ordersDeleted
          ? _value.ordersDeleted
          : ordersDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      reviewsDeleted: freezed == reviewsDeleted
          ? _value.reviewsDeleted
          : reviewsDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteUserDataImplCopyWith<$Res>
    implements $DeleteUserDataCopyWith<$Res> {
  factory _$$DeleteUserDataImplCopyWith(_$DeleteUserDataImpl value,
          $Res Function(_$DeleteUserDataImpl) then) =
      __$$DeleteUserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String email,
      DateTime? deletedAt,
      String? reason,
      bool? ordersDeleted,
      bool? reviewsDeleted,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$DeleteUserDataImplCopyWithImpl<$Res>
    extends _$DeleteUserDataCopyWithImpl<$Res, _$DeleteUserDataImpl>
    implements _$$DeleteUserDataImplCopyWith<$Res> {
  __$$DeleteUserDataImplCopyWithImpl(
      _$DeleteUserDataImpl _value, $Res Function(_$DeleteUserDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteUserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? email = null,
    Object? deletedAt = freezed,
    Object? reason = freezed,
    Object? ordersDeleted = freezed,
    Object? reviewsDeleted = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$DeleteUserDataImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      ordersDeleted: freezed == ordersDeleted
          ? _value.ordersDeleted
          : ordersDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      reviewsDeleted: freezed == reviewsDeleted
          ? _value.reviewsDeleted
          : reviewsDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteUserDataImpl implements _DeleteUserData {
  const _$DeleteUserDataImpl(
      {required this.userId,
      required this.email,
      this.deletedAt,
      this.reason,
      this.ordersDeleted,
      this.reviewsDeleted,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$DeleteUserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteUserDataImplFromJson(json);

  @override
  final String userId;
  @override
  final String email;
  @override
  final DateTime? deletedAt;
  @override
  final String? reason;
  @override
  final bool? ordersDeleted;
  @override
  final bool? reviewsDeleted;
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
    return 'DeleteUserData(userId: $userId, email: $email, deletedAt: $deletedAt, reason: $reason, ordersDeleted: $ordersDeleted, reviewsDeleted: $reviewsDeleted, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteUserDataImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.ordersDeleted, ordersDeleted) ||
                other.ordersDeleted == ordersDeleted) &&
            (identical(other.reviewsDeleted, reviewsDeleted) ||
                other.reviewsDeleted == reviewsDeleted) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      email,
      deletedAt,
      reason,
      ordersDeleted,
      reviewsDeleted,
      const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of DeleteUserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteUserDataImplCopyWith<_$DeleteUserDataImpl> get copyWith =>
      __$$DeleteUserDataImplCopyWithImpl<_$DeleteUserDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteUserDataImplToJson(
      this,
    );
  }
}

abstract class _DeleteUserData implements DeleteUserData {
  const factory _DeleteUserData(
      {required final String userId,
      required final String email,
      final DateTime? deletedAt,
      final String? reason,
      final bool? ordersDeleted,
      final bool? reviewsDeleted,
      final Map<String, dynamic>? metadata}) = _$DeleteUserDataImpl;

  factory _DeleteUserData.fromJson(Map<String, dynamic> json) =
      _$DeleteUserDataImpl.fromJson;

  @override
  String get userId;
  @override
  String get email;
  @override
  DateTime? get deletedAt;
  @override
  String? get reason;
  @override
  bool? get ordersDeleted;
  @override
  bool? get reviewsDeleted;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of DeleteUserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteUserDataImplCopyWith<_$DeleteUserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
