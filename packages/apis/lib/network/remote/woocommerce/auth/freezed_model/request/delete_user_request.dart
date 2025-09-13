import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_user_request.freezed.dart';
part 'delete_user_request.g.dart';

/// 🔐 Delete User Request Model
@freezed
class DeleteUserRequest with _$DeleteUserRequest {
  const factory DeleteUserRequest({
    required String userId,
    String? reason,
    @Default(false) bool deleteOrders,
    @Default(false) bool deleteReviews,
    Map<String, dynamic>? metadata,
  }) = _DeleteUserRequest;

  factory DeleteUserRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteUserRequestFromJson(json);
}
