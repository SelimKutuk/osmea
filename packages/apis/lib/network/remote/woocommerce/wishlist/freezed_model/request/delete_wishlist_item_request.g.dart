// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_wishlist_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteWishlistItemRequestImpl _$$DeleteWishlistItemRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteWishlistItemRequestImpl(
      productId: (json['product_id'] as num).toInt(),
      groupId: (json['group_id'] as num).toInt(),
    );

Map<String, dynamic> _$$DeleteWishlistItemRequestImplToJson(
        _$DeleteWishlistItemRequestImpl instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'group_id': instance.groupId,
    };
