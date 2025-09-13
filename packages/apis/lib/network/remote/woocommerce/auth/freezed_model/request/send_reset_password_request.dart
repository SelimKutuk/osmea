import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_reset_password_request.freezed.dart';
part 'send_reset_password_request.g.dart';

/// 🔐 Send Reset Password Request Model
@freezed
class SendResetPasswordRequest with _$SendResetPasswordRequest {
  const factory SendResetPasswordRequest({
    required String email,
    String? resetUrl,
    Map<String, dynamic>? metadata,
  }) = _SendResetPasswordRequest;

  factory SendResetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$SendResetPasswordRequestFromJson(json);
}
