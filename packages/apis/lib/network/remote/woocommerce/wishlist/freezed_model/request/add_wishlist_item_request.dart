import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_wishlist_item_request.freezed.dart';
part 'add_wishlist_item_request.g.dart';

@freezed
class AddWishlistItemRequest with _$AddWishlistItemRequest {
  const factory AddWishlistItemRequest({
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'group_id') required int groupId,
    int? quantity,
    @JsonKey(name: 'variation_id') int? variationId,
    Map<String, dynamic>? metadata,
  }) = _AddWishlistItemRequest;

  factory AddWishlistItemRequest.fromJson(Map<String, dynamic> json) =>
      _$AddWishlistItemRequestFromJson(json);
}