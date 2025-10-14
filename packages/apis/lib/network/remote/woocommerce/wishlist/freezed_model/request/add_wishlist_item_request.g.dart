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
    _$AddWishlistItemRequestImpl instance) {
  final val = <String, dynamic>{
    'product_id': instance.productId,
    'group_id': instance.groupId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('quantity', instance.quantity);
  writeNotNull('variation_id', instance.variationId);
  writeNotNull('metadata', instance.metadata);
  return val;
}
