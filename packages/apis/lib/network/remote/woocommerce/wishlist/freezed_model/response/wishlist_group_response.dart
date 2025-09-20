import 'package:freezed_annotation/freezed_annotation.dart';

part 'wishlist_group_response.freezed.dart';
part 'wishlist_group_response.g.dart';

@freezed
class WishlistGroupResponse with _$WishlistGroupResponse {
  const factory WishlistGroupResponse({
    int? id,
    String? name,
    String? description,
    @JsonKey(name: 'is_default') bool? isDefault,
    @JsonKey(name: 'item_count') int? itemCount,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'user_id') int? userId,
  }) = _WishlistGroupResponse;

  factory WishlistGroupResponse.fromJson(Map<String, dynamic> json) =>
      _$WishlistGroupResponseFromJson(json);
}