// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_wishlist_groups_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAllWishlistGroupsResponse _$GetAllWishlistGroupsResponseFromJson(
    Map<String, dynamic> json) {
  return _GetAllWishlistGroupsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetAllWishlistGroupsResponse {
  @JsonKey(name: 'groups')
  List<WishlistGroupResponse>? get groups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllWishlistGroupsResponseCopyWith<GetAllWishlistGroupsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllWishlistGroupsResponseCopyWith<$Res> {
  factory $GetAllWishlistGroupsResponseCopyWith(
          GetAllWishlistGroupsResponse value,
          $Res Function(GetAllWishlistGroupsResponse) then) =
      _$GetAllWishlistGroupsResponseCopyWithImpl<$Res,
          GetAllWishlistGroupsResponse>;
  @useResult
  $Res call({@JsonKey(name: 'groups') List<WishlistGroupResponse>? groups});
}

/// @nodoc
class _$GetAllWishlistGroupsResponseCopyWithImpl<$Res,
        $Val extends GetAllWishlistGroupsResponse>
    implements $GetAllWishlistGroupsResponseCopyWith<$Res> {
  _$GetAllWishlistGroupsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = freezed,
  }) {
    return _then(_value.copyWith(
      groups: freezed == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<WishlistGroupResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllWishlistGroupsResponseImplCopyWith<$Res>
    implements $GetAllWishlistGroupsResponseCopyWith<$Res> {
  factory _$$GetAllWishlistGroupsResponseImplCopyWith(
          _$GetAllWishlistGroupsResponseImpl value,
          $Res Function(_$GetAllWishlistGroupsResponseImpl) then) =
      __$$GetAllWishlistGroupsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'groups') List<WishlistGroupResponse>? groups});
}

/// @nodoc
class __$$GetAllWishlistGroupsResponseImplCopyWithImpl<$Res>
    extends _$GetAllWishlistGroupsResponseCopyWithImpl<$Res,
        _$GetAllWishlistGroupsResponseImpl>
    implements _$$GetAllWishlistGroupsResponseImplCopyWith<$Res> {
  __$$GetAllWishlistGroupsResponseImplCopyWithImpl(
      _$GetAllWishlistGroupsResponseImpl _value,
      $Res Function(_$GetAllWishlistGroupsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = freezed,
  }) {
    return _then(_$GetAllWishlistGroupsResponseImpl(
      groups: freezed == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<WishlistGroupResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllWishlistGroupsResponseImpl
    implements _GetAllWishlistGroupsResponse {
  const _$GetAllWishlistGroupsResponseImpl(
      {@JsonKey(name: 'groups') final List<WishlistGroupResponse>? groups})
      : _groups = groups;

  factory _$GetAllWishlistGroupsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAllWishlistGroupsResponseImplFromJson(json);

  final List<WishlistGroupResponse>? _groups;
  @override
  @JsonKey(name: 'groups')
  List<WishlistGroupResponse>? get groups {
    final value = _groups;
    if (value == null) return null;
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetAllWishlistGroupsResponse(groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllWishlistGroupsResponseImpl &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllWishlistGroupsResponseImplCopyWith<
          _$GetAllWishlistGroupsResponseImpl>
      get copyWith => __$$GetAllWishlistGroupsResponseImplCopyWithImpl<
          _$GetAllWishlistGroupsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllWishlistGroupsResponseImplToJson(
      this,
    );
  }
}

abstract class _GetAllWishlistGroupsResponse
    implements GetAllWishlistGroupsResponse {
  const factory _GetAllWishlistGroupsResponse(
          {@JsonKey(name: 'groups')
          final List<WishlistGroupResponse>? groups}) =
      _$GetAllWishlistGroupsResponseImpl;

  factory _GetAllWishlistGroupsResponse.fromJson(Map<String, dynamic> json) =
      _$GetAllWishlistGroupsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'groups')
  List<WishlistGroupResponse>? get groups;
  @override
  @JsonKey(ignore: true)
  _$$GetAllWishlistGroupsResponseImplCopyWith<
          _$GetAllWishlistGroupsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
