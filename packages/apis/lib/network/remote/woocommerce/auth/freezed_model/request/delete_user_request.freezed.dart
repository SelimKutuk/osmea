// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteUserRequest _$DeleteUserRequestFromJson(Map<String, dynamic> json) {
  return _DeleteUserRequest.fromJson(json);
}

/// @nodoc
mixin _$DeleteUserRequest {
  String get userId => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  bool get deleteOrders => throw _privateConstructorUsedError;
  bool get deleteReviews => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this DeleteUserRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteUserRequestCopyWith<DeleteUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteUserRequestCopyWith<$Res> {
  factory $DeleteUserRequestCopyWith(
          DeleteUserRequest value, $Res Function(DeleteUserRequest) then) =
      _$DeleteUserRequestCopyWithImpl<$Res, DeleteUserRequest>;
  @useResult
  $Res call(
      {String userId,
      String? reason,
      bool deleteOrders,
      bool deleteReviews,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$DeleteUserRequestCopyWithImpl<$Res, $Val extends DeleteUserRequest>
    implements $DeleteUserRequestCopyWith<$Res> {
  _$DeleteUserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? reason = freezed,
    Object? deleteOrders = null,
    Object? deleteReviews = null,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      deleteOrders: null == deleteOrders
          ? _value.deleteOrders
          : deleteOrders // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteReviews: null == deleteReviews
          ? _value.deleteReviews
          : deleteReviews // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteUserRequestImplCopyWith<$Res>
    implements $DeleteUserRequestCopyWith<$Res> {
  factory _$$DeleteUserRequestImplCopyWith(_$DeleteUserRequestImpl value,
          $Res Function(_$DeleteUserRequestImpl) then) =
      __$$DeleteUserRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String? reason,
      bool deleteOrders,
      bool deleteReviews,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$DeleteUserRequestImplCopyWithImpl<$Res>
    extends _$DeleteUserRequestCopyWithImpl<$Res, _$DeleteUserRequestImpl>
    implements _$$DeleteUserRequestImplCopyWith<$Res> {
  __$$DeleteUserRequestImplCopyWithImpl(_$DeleteUserRequestImpl _value,
      $Res Function(_$DeleteUserRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? reason = freezed,
    Object? deleteOrders = null,
    Object? deleteReviews = null,
    Object? metadata = freezed,
  }) {
    return _then(_$DeleteUserRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      deleteOrders: null == deleteOrders
          ? _value.deleteOrders
          : deleteOrders // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteReviews: null == deleteReviews
          ? _value.deleteReviews
          : deleteReviews // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteUserRequestImpl implements _DeleteUserRequest {
  const _$DeleteUserRequestImpl(
      {required this.userId,
      this.reason,
      this.deleteOrders = false,
      this.deleteReviews = false,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$DeleteUserRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteUserRequestImplFromJson(json);

  @override
  final String userId;
  @override
  final String? reason;
  @override
  @JsonKey()
  final bool deleteOrders;
  @override
  @JsonKey()
  final bool deleteReviews;
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
    return 'DeleteUserRequest(userId: $userId, reason: $reason, deleteOrders: $deleteOrders, deleteReviews: $deleteReviews, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteUserRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.deleteOrders, deleteOrders) ||
                other.deleteOrders == deleteOrders) &&
            (identical(other.deleteReviews, deleteReviews) ||
                other.deleteReviews == deleteReviews) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, reason, deleteOrders,
      deleteReviews, const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of DeleteUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteUserRequestImplCopyWith<_$DeleteUserRequestImpl> get copyWith =>
      __$$DeleteUserRequestImplCopyWithImpl<_$DeleteUserRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteUserRequestImplToJson(
      this,
    );
  }
}

abstract class _DeleteUserRequest implements DeleteUserRequest {
  const factory _DeleteUserRequest(
      {required final String userId,
      final String? reason,
      final bool deleteOrders,
      final bool deleteReviews,
      final Map<String, dynamic>? metadata}) = _$DeleteUserRequestImpl;

  factory _DeleteUserRequest.fromJson(Map<String, dynamic> json) =
      _$DeleteUserRequestImpl.fromJson;

  @override
  String get userId;
  @override
  String? get reason;
  @override
  bool get deleteOrders;
  @override
  bool get deleteReviews;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of DeleteUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteUserRequestImplCopyWith<_$DeleteUserRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
