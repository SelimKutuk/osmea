import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_wishlist_group_request.freezed.dart';
part 'create_wishlist_group_request.g.dart';

@freezed
class CreateWishlistGroupRequest with _$CreateWishlistGroupRequest {
  const factory CreateWishlistGroupRequest({
    required String name,
    String? description,
  }) = _CreateWishlistGroupRequest;

  factory CreateWishlistGroupRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateWishlistGroupRequestFromJson(json);
}