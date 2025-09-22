import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_wishlist_item_request.freezed.dart';
part 'delete_wishlist_item_request.g.dart';

@freezed
class DeleteWishlistItemRequest with _$DeleteWishlistItemRequest {
  const factory DeleteWishlistItemRequest({
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'group_id') required int groupId,
  }) = _DeleteWishlistItemRequest;

  factory DeleteWishlistItemRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteWishlistItemRequestFromJson(json);
}