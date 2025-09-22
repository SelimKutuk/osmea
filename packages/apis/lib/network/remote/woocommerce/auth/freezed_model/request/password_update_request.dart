import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_update_request.freezed.dart';
part 'password_update_request.g.dart';

/// 🔐 Password Update Request Model
/// Request model for updating user password
@freezed
class PasswordUpdateRequest with _$PasswordUpdateRequest {
  const factory PasswordUpdateRequest({
    /// User email address
    required String email,

    /// New password
    required String newPassword,

    /// JWT token for authentication
    required String jwtToken,
  }) = _PasswordUpdateRequest;

  factory PasswordUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$PasswordUpdateRequestFromJson(json);
}
