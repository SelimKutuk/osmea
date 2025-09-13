import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_user_response.freezed.dart';
part 'delete_user_response.g.dart';

/// 🔐 Delete User Response Model
@freezed
class DeleteUserResponse with _$DeleteUserResponse {
  const factory DeleteUserResponse({
    required bool success,
    required String message,
    DeleteUserData? data,
    String? error,
    Map<String, dynamic>? metadata,
  }) = _DeleteUserResponse;

  factory DeleteUserResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteUserResponseFromJson(json);
}

/// 🔐 Delete User Data Model
@freezed
class DeleteUserData with _$DeleteUserData {
  const factory DeleteUserData({
    required String userId,
    required String email,
    DateTime? deletedAt,
    String? reason,
    bool? ordersDeleted,
    bool? reviewsDeleted,
    Map<String, dynamic>? metadata,
  }) = _DeleteUserData;

  factory DeleteUserData.fromJson(Map<String, dynamic> json) =>
      _$DeleteUserDataFromJson(json);
}
