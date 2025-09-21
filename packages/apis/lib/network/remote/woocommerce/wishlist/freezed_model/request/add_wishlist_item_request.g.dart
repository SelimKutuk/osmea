// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_wishlist_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddWishlistItemRequestImpl _$$AddWishlistItemRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AddWishlistItemRequestImpl(
      productId: (json['product_id'] as num).toInt(),
      groupId: (json['group_id'] as num).toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      variationId: (json['variation_id'] as num?)?.toInt(),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$AddWishlistItemRequestImplToJson(
        _$AddWishlistItemRequestImpl instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'group_id': instance.groupId,
      if (instance.quantity case final value?) 'quantity': value,
      if (instance.variationId case final value?) 'variation_id': value,
      if (instance.metadata case final value?) 'metadata': value,
    };
