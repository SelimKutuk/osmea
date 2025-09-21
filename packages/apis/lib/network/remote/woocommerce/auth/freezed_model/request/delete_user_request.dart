import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_user_request.freezed.dart';
part 'delete_user_request.g.dart';

/// 🔐 Delete User Request Model
@freezed
class DeleteUserRequest with _$DeleteUserRequest {
  const factory DeleteUserRequest({
    @JsonKey(name: 'user_id') required String userId,
    String? reason,
    @Default(false) @JsonKey(name: 'delete_orders') bool deleteOrders,
    @Default(false) @JsonKey(name: 'delete_reviews') bool deleteReviews,
    Map<String, dynamic>? metadata,
  }) = _DeleteUserRequest;

  factory DeleteUserRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteUserRequestFromJson(json);
}
