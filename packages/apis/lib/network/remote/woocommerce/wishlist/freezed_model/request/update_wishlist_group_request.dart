import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_wishlist_group_request.freezed.dart';
part 'update_wishlist_group_request.g.dart';

@freezed
class UpdateWishlistGroupRequest with _$UpdateWishlistGroupRequest {
  const factory UpdateWishlistGroupRequest({
    required String name,
    String? description,
  }) = _UpdateWishlistGroupRequest;

  factory UpdateWishlistGroupRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateWishlistGroupRequestFromJson(json);
}