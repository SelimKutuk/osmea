import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_reset_password_response.freezed.dart';
part 'send_reset_password_response.g.dart';

/// 🔐 Send Reset Password Response Model
@freezed
class SendResetPasswordResponse with _$SendResetPasswordResponse {
  const factory SendResetPasswordResponse({
    required bool success,
    String? message, // Made nullable as server sometimes doesn't send message
    SendResetPasswordData? data,
    String? error,
    Map<String, dynamic>? metadata,
  }) = _SendResetPasswordResponse;

  factory SendResetPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$SendResetPasswordResponseFromJson(json);
}

/// 🔐 Send Reset Password Data Model
@freezed
class SendResetPasswordData with _$SendResetPasswordData {
  const factory SendResetPasswordData({
    required String email,
    String? resetToken,
    DateTime? expiresAt,
    bool? emailSent,
    String? resetUrl,
    Map<String, dynamic>? metadata,
  }) = _SendResetPasswordData;

  factory SendResetPasswordData.fromJson(Map<String, dynamic> json) =>
      _$SendResetPasswordDataFromJson(json);
}
