// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_wishlist_item_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddWishlistItemRequest _$AddWishlistItemRequestFromJson(
    Map<String, dynamic> json) {
  return _AddWishlistItemRequest.fromJson(json);
}

/// @nodoc
mixin _$AddWishlistItemRequest {
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_id')
  int get groupId => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'variation_id')
  int? get variationId => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddWishlistItemRequestCopyWith<AddWishlistItemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddWishlistItemRequestCopyWith<$Res> {
  factory $AddWishlistItemRequestCopyWith(AddWishlistItemRequest value,
          $Res Function(AddWishlistItemRequest) then) =
      _$AddWishlistItemRequestCopyWithImpl<$Res, AddWishlistItemRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'group_id') int groupId,
      int? quantity,
      @JsonKey(name: 'variation_id') int? variationId,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$AddWishlistItemRequestCopyWithImpl<$Res,
        $Val extends AddWishlistItemRequest>
    implements $AddWishlistItemRequestCopyWith<$Res> {
  _$AddWishlistItemRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? groupId = null,
    Object? quantity = freezed,
    Object? variationId = freezed,
    Object? metadata = freezed,
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
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      variationId: freezed == variationId
          ? _value.variationId
          : variationId // ignore: cast_nullable_to_non_nullable
              as int?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddWishlistItemRequestImplCopyWith<$Res>
    implements $AddWishlistItemRequestCopyWith<$Res> {
  factory _$$AddWishlistItemRequestImplCopyWith(
          _$AddWishlistItemRequestImpl value,
          $Res Function(_$AddWishlistItemRequestImpl) then) =
      __$$AddWishlistItemRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'group_id') int groupId,
      int? quantity,
      @JsonKey(name: 'variation_id') int? variationId,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$AddWishlistItemRequestImplCopyWithImpl<$Res>
    extends _$AddWishlistItemRequestCopyWithImpl<$Res,
        _$AddWishlistItemRequestImpl>
    implements _$$AddWishlistItemRequestImplCopyWith<$Res> {
  __$$AddWishlistItemRequestImplCopyWithImpl(
      _$AddWishlistItemRequestImpl _value,
      $Res Function(_$AddWishlistItemRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? groupId = null,
    Object? quantity = freezed,
    Object? variationId = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$AddWishlistItemRequestImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      variationId: freezed == variationId
          ? _value.variationId
          : variationId // ignore: cast_nullable_to_non_nullable
              as int?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddWishlistItemRequestImpl implements _AddWishlistItemRequest {
  const _$AddWishlistItemRequestImpl(
      {@JsonKey(name: 'product_id') required this.productId,
      @JsonKey(name: 'group_id') required this.groupId,
      this.quantity,
      @JsonKey(name: 'variation_id') this.variationId,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$AddWishlistItemRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddWishlistItemRequestImplFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final int productId;
  @override
  @JsonKey(name: 'group_id')
  final int groupId;
  @override
  final int? quantity;
  @override
  @JsonKey(name: 'variation_id')
  final int? variationId;
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
    return 'AddWishlistItemRequest(productId: $productId, groupId: $groupId, quantity: $quantity, variationId: $variationId, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddWishlistItemRequestImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.variationId, variationId) ||
                other.variationId == variationId) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, groupId, quantity,
      variationId, const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddWishlistItemRequestImplCopyWith<_$AddWishlistItemRequestImpl>
      get copyWith => __$$AddWishlistItemRequestImplCopyWithImpl<
          _$AddWishlistItemRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddWishlistItemRequestImplToJson(
      this,
    );
  }
}

abstract class _AddWishlistItemRequest implements AddWishlistItemRequest {
  const factory _AddWishlistItemRequest(
      {@JsonKey(name: 'product_id') required final int productId,
      @JsonKey(name: 'group_id') required final int groupId,
      final int? quantity,
      @JsonKey(name: 'variation_id') final int? variationId,
      final Map<String, dynamic>? metadata}) = _$AddWishlistItemRequestImpl;

  factory _AddWishlistItemRequest.fromJson(Map<String, dynamic> json) =
      _$AddWishlistItemRequestImpl.fromJson;

  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  @JsonKey(name: 'group_id')
  int get groupId;
  @override
  int? get quantity;
  @override
  @JsonKey(name: 'variation_id')
  int? get variationId;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$AddWishlistItemRequestImplCopyWith<_$AddWishlistItemRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
