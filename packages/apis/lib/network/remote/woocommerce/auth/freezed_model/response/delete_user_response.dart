import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_user_response.freezed.dart';
part 'delete_user_response.g.dart';

/// 🔐 Delete User Response Model
@freezed
class DeleteUserResponse with _$DeleteUserResponse {
  const factory DeleteUserResponse({
    @Default(true)
    bool success, // Default to true since API doesn't send success field
    String? message, // Made nullable as server sometimes doesn't send message
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
    @JsonKey(name: 'id') required String userId, // API sends 'id' field
    String? email,
    DateTime? deletedAt,
    String? reason,
    bool? ordersDeleted,
    bool? reviewsDeleted,
    Map<String, dynamic>? metadata,
  }) = _DeleteUserData;

  factory DeleteUserData.fromJson(Map<String, dynamic> json) =>
      _$DeleteUserDataFromJson(json);
}
