// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_wishlist_group_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateWishlistGroupRequest _$UpdateWishlistGroupRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateWishlistGroupRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateWishlistGroupRequest {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateWishlistGroupRequestCopyWith<UpdateWishlistGroupRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateWishlistGroupRequestCopyWith<$Res> {
  factory $UpdateWishlistGroupRequestCopyWith(UpdateWishlistGroupRequest value,
          $Res Function(UpdateWishlistGroupRequest) then) =
      _$UpdateWishlistGroupRequestCopyWithImpl<$Res,
          UpdateWishlistGroupRequest>;
  @useResult
  $Res call({String name, String? description});
}

/// @nodoc
class _$UpdateWishlistGroupRequestCopyWithImpl<$Res,
        $Val extends UpdateWishlistGroupRequest>
    implements $UpdateWishlistGroupRequestCopyWith<$Res> {
  _$UpdateWishlistGroupRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateWishlistGroupRequestImplCopyWith<$Res>
    implements $UpdateWishlistGroupRequestCopyWith<$Res> {
  factory _$$UpdateWishlistGroupRequestImplCopyWith(
          _$UpdateWishlistGroupRequestImpl value,
          $Res Function(_$UpdateWishlistGroupRequestImpl) then) =
      __$$UpdateWishlistGroupRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? description});
}

/// @nodoc
class __$$UpdateWishlistGroupRequestImplCopyWithImpl<$Res>
    extends _$UpdateWishlistGroupRequestCopyWithImpl<$Res,
        _$UpdateWishlistGroupRequestImpl>
    implements _$$UpdateWishlistGroupRequestImplCopyWith<$Res> {
  __$$UpdateWishlistGroupRequestImplCopyWithImpl(
      _$UpdateWishlistGroupRequestImpl _value,
      $Res Function(_$UpdateWishlistGroupRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
  }) {
    return _then(_$UpdateWishlistGroupRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateWishlistGroupRequestImpl implements _UpdateWishlistGroupRequest {
  const _$UpdateWishlistGroupRequestImpl(
      {required this.name, this.description});

  factory _$UpdateWishlistGroupRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateWishlistGroupRequestImplFromJson(json);

  @override
  final String name;
  @override
  final String? description;

  @override
  String toString() {
    return 'UpdateWishlistGroupRequest(name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateWishlistGroupRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateWishlistGroupRequestImplCopyWith<_$UpdateWishlistGroupRequestImpl>
      get copyWith => __$$UpdateWishlistGroupRequestImplCopyWithImpl<
          _$UpdateWishlistGroupRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateWishlistGroupRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateWishlistGroupRequest
    implements UpdateWishlistGroupRequest {
  const factory _UpdateWishlistGroupRequest(
      {required final String name,
      final String? description}) = _$UpdateWishlistGroupRequestImpl;

  factory _UpdateWishlistGroupRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateWishlistGroupRequestImpl.fromJson;

  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$UpdateWishlistGroupRequestImplCopyWith<_$UpdateWishlistGroupRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
