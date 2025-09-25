import 'package:freezed_annotation/freezed_annotation.dart';
import 'wishlist_group_response.dart';

part 'get_all_wishlist_groups_response.freezed.dart';
part 'get_all_wishlist_groups_response.g.dart';

@freezed
class GetAllWishlistGroupsResponse with _$GetAllWishlistGroupsResponse {
  const factory GetAllWishlistGroupsResponse({
    @JsonKey(name: 'groups') List<WishlistGroupResponse>? groups,
  }) = _GetAllWishlistGroupsResponse;

  factory GetAllWishlistGroupsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllWishlistGroupsResponseFromJson(json);
}