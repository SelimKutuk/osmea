import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_wishlist_group_response.freezed.dart';
part 'create_wishlist_group_response.g.dart';

@freezed
class CreateWishlistGroupResponse with _$CreateWishlistGroupResponse {
  const factory CreateWishlistGroupResponse({
    bool? success,
    String? message,
    WishlistGroupData? data,
  }) = _CreateWishlistGroupResponse;

  factory CreateWishlistGroupResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateWishlistGroupResponseFromJson(json);
}

@freezed
class WishlistGroupData with _$WishlistGroupData {
  const factory WishlistGroupData({
    int? id,
    String? name,
    String? description,
    @JsonKey(name: 'is_default') bool? isDefault,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _WishlistGroupData;

  factory WishlistGroupData.fromJson(Map<String, dynamic> json) =>
      _$WishlistGroupDataFromJson(json);
}