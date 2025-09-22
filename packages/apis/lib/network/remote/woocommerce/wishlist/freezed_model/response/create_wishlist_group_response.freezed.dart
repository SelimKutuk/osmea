// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_wishlist_group_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateWishlistGroupResponse _$CreateWishlistGroupResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateWishlistGroupResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateWishlistGroupResponse {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  WishlistGroupData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateWishlistGroupResponseCopyWith<CreateWishlistGroupResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateWishlistGroupResponseCopyWith<$Res> {
  factory $CreateWishlistGroupResponseCopyWith(
          CreateWishlistGroupResponse value,
          $Res Function(CreateWishlistGroupResponse) then) =
      _$CreateWishlistGroupResponseCopyWithImpl<$Res,
          CreateWishlistGroupResponse>;
  @useResult
  $Res call({bool? success, String? message, WishlistGroupData? data});

  $WishlistGroupDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreateWishlistGroupResponseCopyWithImpl<$Res,
        $Val extends CreateWishlistGroupResponse>
    implements $CreateWishlistGroupResponseCopyWith<$Res> {
  _$CreateWishlistGroupResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WishlistGroupData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WishlistGroupDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $WishlistGroupDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateWishlistGroupResponseImplCopyWith<$Res>
    implements $CreateWishlistGroupResponseCopyWith<$Res> {
  factory _$$CreateWishlistGroupResponseImplCopyWith(
          _$CreateWishlistGroupResponseImpl value,
          $Res Function(_$CreateWishlistGroupResponseImpl) then) =
      __$$CreateWishlistGroupResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, WishlistGroupData? data});

  @override
  $WishlistGroupDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CreateWishlistGroupResponseImplCopyWithImpl<$Res>
    extends _$CreateWishlistGroupResponseCopyWithImpl<$Res,
        _$CreateWishlistGroupResponseImpl>
    implements _$$CreateWishlistGroupResponseImplCopyWith<$Res> {
  __$$CreateWishlistGroupResponseImplCopyWithImpl(
      _$CreateWishlistGroupResponseImpl _value,
      $Res Function(_$CreateWishlistGroupResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CreateWishlistGroupResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WishlistGroupData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateWishlistGroupResponseImpl
    implements _CreateWishlistGroupResponse {
  const _$CreateWishlistGroupResponseImpl(
      {this.success, this.message, this.data});

  factory _$CreateWishlistGroupResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateWishlistGroupResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final WishlistGroupData? data;

  @override
  String toString() {
    return 'CreateWishlistGroupResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateWishlistGroupResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateWishlistGroupResponseImplCopyWith<_$CreateWishlistGroupResponseImpl>
      get copyWith => __$$CreateWishlistGroupResponseImplCopyWithImpl<
          _$CreateWishlistGroupResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateWishlistGroupResponseImplToJson(
      this,
    );
  }
}

abstract class _CreateWishlistGroupResponse
    implements CreateWishlistGroupResponse {
  const factory _CreateWishlistGroupResponse(
      {final bool? success,
      final String? message,
      final WishlistGroupData? data}) = _$CreateWishlistGroupResponseImpl;

  factory _CreateWishlistGroupResponse.fromJson(Map<String, dynamic> json) =
      _$CreateWishlistGroupResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  WishlistGroupData? get data;
  @override
  @JsonKey(ignore: true)
  _$$CreateWishlistGroupResponseImplCopyWith<_$CreateWishlistGroupResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WishlistGroupData _$WishlistGroupDataFromJson(Map<String, dynamic> json) {
  return _WishlistGroupData.fromJson(json);
}

/// @nodoc
mixin _$WishlistGroupData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_default')
  bool? get isDefault => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishlistGroupDataCopyWith<WishlistGroupData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistGroupDataCopyWith<$Res> {
  factory $WishlistGroupDataCopyWith(
          WishlistGroupData value, $Res Function(WishlistGroupData) then) =
      _$WishlistGroupDataCopyWithImpl<$Res, WishlistGroupData>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      @JsonKey(name: 'is_default') bool? isDefault,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'created_at') String? createdAt});
}

/// @nodoc
class _$WishlistGroupDataCopyWithImpl<$Res, $Val extends WishlistGroupData>
    implements $WishlistGroupDataCopyWith<$Res> {
  _$WishlistGroupDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? isDefault = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishlistGroupDataImplCopyWith<$Res>
    implements $WishlistGroupDataCopyWith<$Res> {
  factory _$$WishlistGroupDataImplCopyWith(_$WishlistGroupDataImpl value,
          $Res Function(_$WishlistGroupDataImpl) then) =
      __$$WishlistGroupDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      @JsonKey(name: 'is_default') bool? isDefault,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'created_at') String? createdAt});
}

/// @nodoc
class __$$WishlistGroupDataImplCopyWithImpl<$Res>
    extends _$WishlistGroupDataCopyWithImpl<$Res, _$WishlistGroupDataImpl>
    implements _$$WishlistGroupDataImplCopyWith<$Res> {
  __$$WishlistGroupDataImplCopyWithImpl(_$WishlistGroupDataImpl _value,
      $Res Function(_$WishlistGroupDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? isDefault = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$WishlistGroupDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WishlistGroupDataImpl implements _WishlistGroupData {
  const _$WishlistGroupDataImpl(
      {this.id,
      this.name,
      this.description,
      @JsonKey(name: 'is_default') this.isDefault,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$WishlistGroupDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishlistGroupDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  @JsonKey(name: 'is_default')
  final bool? isDefault;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;

  @override
  String toString() {
    return 'WishlistGroupData(id: $id, name: $name, description: $description, isDefault: $isDefault, userId: $userId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistGroupDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, isDefault, userId, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistGroupDataImplCopyWith<_$WishlistGroupDataImpl> get copyWith =>
      __$$WishlistGroupDataImplCopyWithImpl<_$WishlistGroupDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishlistGroupDataImplToJson(
      this,
    );
  }
}

abstract class _WishlistGroupData implements WishlistGroupData {
  const factory _WishlistGroupData(
          {final int? id,
          final String? name,
          final String? description,
          @JsonKey(name: 'is_default') final bool? isDefault,
          @JsonKey(name: 'user_id') final int? userId,
          @JsonKey(name: 'created_at') final String? createdAt}) =
      _$WishlistGroupDataImpl;

  factory _WishlistGroupData.fromJson(Map<String, dynamic> json) =
      _$WishlistGroupDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  @JsonKey(name: 'is_default')
  bool? get isDefault;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$WishlistGroupDataImplCopyWith<_$WishlistGroupDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
