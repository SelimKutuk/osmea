// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WishlistItemResponseImpl _$$WishlistItemResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WishlistItemResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      groupId: (json['group_id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      variationId: (json['variation_id'] as num?)?.toInt(),
      addedAt: json['added_at'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      productName: json['product_name'] as String?,
      productSlug: json['product_slug'] as String?,
      productPrice: json['product_price'] as String?,
      productImage: json['product_image'] as String?,
      productStatus: json['product_status'] as String?,
    );

Map<String, dynamic> _$$WishlistItemResponseImplToJson(
        _$WishlistItemResponseImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.productId case final value?) 'product_id': value,
      if (instance.groupId case final value?) 'group_id': value,
      if (instance.userId case final value?) 'user_id': value,
      if (instance.quantity case final value?) 'quantity': value,
      if (instance.variationId case final value?) 'variation_id': value,
      if (instance.addedAt case final value?) 'added_at': value,
      if (instance.metadata case final value?) 'metadata': value,
      if (instance.productName case final value?) 'product_name': value,
      if (instance.productSlug case final value?) 'product_slug': value,
      if (instance.productPrice case final value?) 'product_price': value,
      if (instance.productImage case final value?) 'product_image': value,
      if (instance.productStatus case final value?) 'product_status': value,
    };
