// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WishlistItemResponse _$WishlistItemResponseFromJson(Map<String, dynamic> json) {
  return _WishlistItemResponse.fromJson(json);
}

/// @nodoc
mixin _$WishlistItemResponse {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_id')
  int? get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'variation_id')
  int? get variationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'added_at')
  String? get addedAt => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata =>
      throw _privateConstructorUsedError; // Product details might be included in response
  @JsonKey(name: 'product_name')
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_slug')
  String? get productSlug => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_price')
  String? get productPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_image')
  String? get productImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_status')
  String? get productStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishlistItemResponseCopyWith<WishlistItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistItemResponseCopyWith<$Res> {
  factory $WishlistItemResponseCopyWith(WishlistItemResponse value,
          $Res Function(WishlistItemResponse) then) =
      _$WishlistItemResponseCopyWithImpl<$Res, WishlistItemResponse>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'product_id') int? productId,
      @JsonKey(name: 'group_id') int? groupId,
      @JsonKey(name: 'user_id') int? userId,
      int? quantity,
      @JsonKey(name: 'variation_id') int? variationId,
      @JsonKey(name: 'added_at') String? addedAt,
      Map<String, dynamic>? metadata,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'product_slug') String? productSlug,
      @JsonKey(name: 'product_price') String? productPrice,
      @JsonKey(name: 'product_image') String? productImage,
      @JsonKey(name: 'product_status') String? productStatus});
}

/// @nodoc
class _$WishlistItemResponseCopyWithImpl<$Res,
        $Val extends WishlistItemResponse>
    implements $WishlistItemResponseCopyWith<$Res> {
  _$WishlistItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productId = freezed,
    Object? groupId = freezed,
    Object? userId = freezed,
    Object? quantity = freezed,
    Object? variationId = freezed,
    Object? addedAt = freezed,
    Object? metadata = freezed,
    Object? productName = freezed,
    Object? productSlug = freezed,
    Object? productPrice = freezed,
    Object? productImage = freezed,
    Object? productStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      variationId: freezed == variationId
          ? _value.variationId
          : variationId // ignore: cast_nullable_to_non_nullable
              as int?,
      addedAt: freezed == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productSlug: freezed == productSlug
          ? _value.productSlug
          : productSlug // ignore: cast_nullable_to_non_nullable
              as String?,
      productPrice: freezed == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      productImage: freezed == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String?,
      productStatus: freezed == productStatus
          ? _value.productStatus
          : productStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishlistItemResponseImplCopyWith<$Res>
    implements $WishlistItemResponseCopyWith<$Res> {
  factory _$$WishlistItemResponseImplCopyWith(_$WishlistItemResponseImpl value,
          $Res Function(_$WishlistItemResponseImpl) then) =
      __$$WishlistItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'product_id') int? productId,
      @JsonKey(name: 'group_id') int? groupId,
      @JsonKey(name: 'user_id') int? userId,
      int? quantity,
      @JsonKey(name: 'variation_id') int? variationId,
      @JsonKey(name: 'added_at') String? addedAt,
      Map<String, dynamic>? metadata,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'product_slug') String? productSlug,
      @JsonKey(name: 'product_price') String? productPrice,
      @JsonKey(name: 'product_image') String? productImage,
      @JsonKey(name: 'product_status') String? productStatus});
}

/// @nodoc
class __$$WishlistItemResponseImplCopyWithImpl<$Res>
    extends _$WishlistItemResponseCopyWithImpl<$Res, _$WishlistItemResponseImpl>
    implements _$$WishlistItemResponseImplCopyWith<$Res> {
  __$$WishlistItemResponseImplCopyWithImpl(_$WishlistItemResponseImpl _value,
      $Res Function(_$WishlistItemResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productId = freezed,
    Object? groupId = freezed,
    Object? userId = freezed,
    Object? quantity = freezed,
    Object? variationId = freezed,
    Object? addedAt = freezed,
    Object? metadata = freezed,
    Object? productName = freezed,
    Object? productSlug = freezed,
    Object? productPrice = freezed,
    Object? productImage = freezed,
    Object? productStatus = freezed,
  }) {
    return _then(_$WishlistItemResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      variationId: freezed == variationId
          ? _value.variationId
          : variationId // ignore: cast_nullable_to_non_nullable
              as int?,
      addedAt: freezed == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productSlug: freezed == productSlug
          ? _value.productSlug
          : productSlug // ignore: cast_nullable_to_non_nullable
              as String?,
      productPrice: freezed == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      productImage: freezed == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String?,
      productStatus: freezed == productStatus
          ? _value.productStatus
          : productStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WishlistItemResponseImpl implements _WishlistItemResponse {
  const _$WishlistItemResponseImpl(
      {this.id,
      @JsonKey(name: 'product_id') this.productId,
      @JsonKey(name: 'group_id') this.groupId,
      @JsonKey(name: 'user_id') this.userId,
      this.quantity,
      @JsonKey(name: 'variation_id') this.variationId,
      @JsonKey(name: 'added_at') this.addedAt,
      final Map<String, dynamic>? metadata,
      @JsonKey(name: 'product_name') this.productName,
      @JsonKey(name: 'product_slug') this.productSlug,
      @JsonKey(name: 'product_price') this.productPrice,
      @JsonKey(name: 'product_image') this.productImage,
      @JsonKey(name: 'product_status') this.productStatus})
      : _metadata = metadata;

  factory _$WishlistItemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishlistItemResponseImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'product_id')
  final int? productId;
  @override
  @JsonKey(name: 'group_id')
  final int? groupId;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  final int? quantity;
  @override
  @JsonKey(name: 'variation_id')
  final int? variationId;
  @override
  @JsonKey(name: 'added_at')
  final String? addedAt;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

// Product details might be included in response
  @override
  @JsonKey(name: 'product_name')
  final String? productName;
  @override
  @JsonKey(name: 'product_slug')
  final String? productSlug;
  @override
  @JsonKey(name: 'product_price')
  final String? productPrice;
  @override
  @JsonKey(name: 'product_image')
  final String? productImage;
  @override
  @JsonKey(name: 'product_status')
  final String? productStatus;

  @override
  String toString() {
    return 'WishlistItemResponse(id: $id, productId: $productId, groupId: $groupId, userId: $userId, quantity: $quantity, variationId: $variationId, addedAt: $addedAt, metadata: $metadata, productName: $productName, productSlug: $productSlug, productPrice: $productPrice, productImage: $productImage, productStatus: $productStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistItemResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.variationId, variationId) ||
                other.variationId == variationId) &&
            (identical(other.addedAt, addedAt) || other.addedAt == addedAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productSlug, productSlug) ||
                other.productSlug == productSlug) &&
            (identical(other.productPrice, productPrice) ||
                other.productPrice == productPrice) &&
            (identical(other.productImage, productImage) ||
                other.productImage == productImage) &&
            (identical(other.productStatus, productStatus) ||
                other.productStatus == productStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      productId,
      groupId,
      userId,
      quantity,
      variationId,
      addedAt,
      const DeepCollectionEquality().hash(_metadata),
      productName,
      productSlug,
      productPrice,
      productImage,
      productStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistItemResponseImplCopyWith<_$WishlistItemResponseImpl>
      get copyWith =>
          __$$WishlistItemResponseImplCopyWithImpl<_$WishlistItemResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishlistItemResponseImplToJson(
      this,
    );
  }
}

abstract class _WishlistItemResponse implements WishlistItemResponse {
  const factory _WishlistItemResponse(
          {final int? id,
          @JsonKey(name: 'product_id') final int? productId,
          @JsonKey(name: 'group_id') final int? groupId,
          @JsonKey(name: 'user_id') final int? userId,
          final int? quantity,
          @JsonKey(name: 'variation_id') final int? variationId,
          @JsonKey(name: 'added_at') final String? addedAt,
          final Map<String, dynamic>? metadata,
          @JsonKey(name: 'product_name') final String? productName,
          @JsonKey(name: 'product_slug') final String? productSlug,
          @JsonKey(name: 'product_price') final String? productPrice,
          @JsonKey(name: 'product_image') final String? productImage,
          @JsonKey(name: 'product_status') final String? productStatus}) =
      _$WishlistItemResponseImpl;

  factory _WishlistItemResponse.fromJson(Map<String, dynamic> json) =
      _$WishlistItemResponseImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'product_id')
  int? get productId;
  @override
  @JsonKey(name: 'group_id')
  int? get groupId;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  int? get quantity;
  @override
  @JsonKey(name: 'variation_id')
  int? get variationId;
  @override
  @JsonKey(name: 'added_at')
  String? get addedAt;
  @override
  Map<String, dynamic>? get metadata;
  @override // Product details might be included in response
  @JsonKey(name: 'product_name')
  String? get productName;
  @override
  @JsonKey(name: 'product_slug')
  String? get productSlug;
  @override
  @JsonKey(name: 'product_price')
  String? get productPrice;
  @override
  @JsonKey(name: 'product_image')
  String? get productImage;
  @override
  @JsonKey(name: 'product_status')
  String? get productStatus;
  @override
  @JsonKey(ignore: true)
  _$$WishlistItemResponseImplCopyWith<_$WishlistItemResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
