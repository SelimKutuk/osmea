import 'package:freezed_annotation/freezed_annotation.dart';

part 'wishlist_item_response.freezed.dart';
part 'wishlist_item_response.g.dart';

@freezed
class WishlistItemResponse with _$WishlistItemResponse {
  const factory WishlistItemResponse({
    int? id,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'group_id') int? groupId,
    @JsonKey(name: 'user_id') int? userId,
    int? quantity,
    @JsonKey(name: 'variation_id') int? variationId,
    @JsonKey(name: 'added_at') String? addedAt,
    Map<String, dynamic>? metadata,
    // Product details might be included in response
    @JsonKey(name: 'product_name') String? productName,
    @JsonKey(name: 'product_slug') String? productSlug,
    @JsonKey(name: 'product_price') String? productPrice,
    @JsonKey(name: 'product_image') String? productImage,
    @JsonKey(name: 'product_status') String? productStatus,
  }) = _WishlistItemResponse;

  factory WishlistItemResponse.fromJson(Map<String, dynamic> json) =>
      _$WishlistItemResponseFromJson(json);
}