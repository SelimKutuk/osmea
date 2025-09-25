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
    _$WishlistItemResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('product_id', instance.productId);
  writeNotNull('group_id', instance.groupId);
  writeNotNull('user_id', instance.userId);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('variation_id', instance.variationId);
  writeNotNull('added_at', instance.addedAt);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('product_name', instance.productName);
  writeNotNull('product_slug', instance.productSlug);
  writeNotNull('product_price', instance.productPrice);
  writeNotNull('product_image', instance.productImage);
  writeNotNull('product_status', instance.productStatus);
  return val;
}
