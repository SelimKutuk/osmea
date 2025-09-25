// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_wishlist_group_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateWishlistGroupRequest _$CreateWishlistGroupRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateWishlistGroupRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateWishlistGroupRequest {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateWishlistGroupRequestCopyWith<CreateWishlistGroupRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateWishlistGroupRequestCopyWith<$Res> {
  factory $CreateWishlistGroupRequestCopyWith(CreateWishlistGroupRequest value,
          $Res Function(CreateWishlistGroupRequest) then) =
      _$CreateWishlistGroupRequestCopyWithImpl<$Res,
          CreateWishlistGroupRequest>;
  @useResult
  $Res call({String name, String? description});
}

/// @nodoc
class _$CreateWishlistGroupRequestCopyWithImpl<$Res,
        $Val extends CreateWishlistGroupRequest>
    implements $CreateWishlistGroupRequestCopyWith<$Res> {
  _$CreateWishlistGroupRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$CreateWishlistGroupRequestImplCopyWith<$Res>
    implements $CreateWishlistGroupRequestCopyWith<$Res> {
  factory _$$CreateWishlistGroupRequestImplCopyWith(
          _$CreateWishlistGroupRequestImpl value,
          $Res Function(_$CreateWishlistGroupRequestImpl) then) =
      __$$CreateWishlistGroupRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? description});
}

/// @nodoc
class __$$CreateWishlistGroupRequestImplCopyWithImpl<$Res>
    extends _$CreateWishlistGroupRequestCopyWithImpl<$Res,
        _$CreateWishlistGroupRequestImpl>
    implements _$$CreateWishlistGroupRequestImplCopyWith<$Res> {
  __$$CreateWishlistGroupRequestImplCopyWithImpl(
      _$CreateWishlistGroupRequestImpl _value,
      $Res Function(_$CreateWishlistGroupRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
  }) {
    return _then(_$CreateWishlistGroupRequestImpl(
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
class _$CreateWishlistGroupRequestImpl implements _CreateWishlistGroupRequest {
  const _$CreateWishlistGroupRequestImpl(
      {required this.name, this.description});

  factory _$CreateWishlistGroupRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateWishlistGroupRequestImplFromJson(json);

  @override
  final String name;
  @override
  final String? description;

  @override
  String toString() {
    return 'CreateWishlistGroupRequest(name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateWishlistGroupRequestImpl &&
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
  _$$CreateWishlistGroupRequestImplCopyWith<_$CreateWishlistGroupRequestImpl>
      get copyWith => __$$CreateWishlistGroupRequestImplCopyWithImpl<
          _$CreateWishlistGroupRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateWishlistGroupRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateWishlistGroupRequest
    implements CreateWishlistGroupRequest {
  const factory _CreateWishlistGroupRequest(
      {required final String name,
      final String? description}) = _$CreateWishlistGroupRequestImpl;

  factory _CreateWishlistGroupRequest.fromJson(Map<String, dynamic> json) =
      _$CreateWishlistGroupRequestImpl.fromJson;

  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$CreateWishlistGroupRequestImplCopyWith<_$CreateWishlistGroupRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
