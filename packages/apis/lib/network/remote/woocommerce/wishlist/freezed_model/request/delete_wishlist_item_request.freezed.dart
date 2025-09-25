// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_wishlist_item_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteWishlistItemRequest _$DeleteWishlistItemRequestFromJson(
    Map<String, dynamic> json) {
  return _DeleteWishlistItemRequest.fromJson(json);
}

/// @nodoc
mixin _$DeleteWishlistItemRequest {
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_id')
  int get groupId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteWishlistItemRequestCopyWith<DeleteWishlistItemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteWishlistItemRequestCopyWith<$Res> {
  factory $DeleteWishlistItemRequestCopyWith(DeleteWishlistItemRequest value,
          $Res Function(DeleteWishlistItemRequest) then) =
      _$DeleteWishlistItemRequestCopyWithImpl<$Res, DeleteWishlistItemRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'group_id') int groupId});
}

/// @nodoc
class _$DeleteWishlistItemRequestCopyWithImpl<$Res,
        $Val extends DeleteWishlistItemRequest>
    implements $DeleteWishlistItemRequestCopyWith<$Res> {
  _$DeleteWishlistItemRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? groupId = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteWishlistItemRequestImplCopyWith<$Res>
    implements $DeleteWishlistItemRequestCopyWith<$Res> {
  factory _$$DeleteWishlistItemRequestImplCopyWith(
          _$DeleteWishlistItemRequestImpl value,
          $Res Function(_$DeleteWishlistItemRequestImpl) then) =
      __$$DeleteWishlistItemRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'group_id') int groupId});
}

/// @nodoc
class __$$DeleteWishlistItemRequestImplCopyWithImpl<$Res>
    extends _$DeleteWishlistItemRequestCopyWithImpl<$Res,
        _$DeleteWishlistItemRequestImpl>
    implements _$$DeleteWishlistItemRequestImplCopyWith<$Res> {
  __$$DeleteWishlistItemRequestImplCopyWithImpl(
      _$DeleteWishlistItemRequestImpl _value,
      $Res Function(_$DeleteWishlistItemRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? groupId = null,
  }) {
    return _then(_$DeleteWishlistItemRequestImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteWishlistItemRequestImpl implements _DeleteWishlistItemRequest {
  const _$DeleteWishlistItemRequestImpl(
      {@JsonKey(name: 'product_id') required this.productId,
      @JsonKey(name: 'group_id') required this.groupId});

  factory _$DeleteWishlistItemRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteWishlistItemRequestImplFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final int productId;
  @override
  @JsonKey(name: 'group_id')
  final int groupId;

  @override
  String toString() {
    return 'DeleteWishlistItemRequest(productId: $productId, groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteWishlistItemRequestImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteWishlistItemRequestImplCopyWith<_$DeleteWishlistItemRequestImpl>
      get copyWith => __$$DeleteWishlistItemRequestImplCopyWithImpl<
          _$DeleteWishlistItemRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteWishlistItemRequestImplToJson(
      this,
    );
  }
}

abstract class _DeleteWishlistItemRequest implements DeleteWishlistItemRequest {
  const factory _DeleteWishlistItemRequest(
          {@JsonKey(name: 'product_id') required final int productId,
          @JsonKey(name: 'group_id') required final int groupId}) =
      _$DeleteWishlistItemRequestImpl;

  factory _DeleteWishlistItemRequest.fromJson(Map<String, dynamic> json) =
      _$DeleteWishlistItemRequestImpl.fromJson;

  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  @JsonKey(name: 'group_id')
  int get groupId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteWishlistItemRequestImplCopyWith<_$DeleteWishlistItemRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
