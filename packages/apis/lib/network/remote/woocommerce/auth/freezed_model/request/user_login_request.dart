import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_login_request.freezed.dart';
part 'user_login_request.g.dart';

/// 🔐 User Login Request Model
@freezed
class UserLoginRequest with _$UserLoginRequest {
  const factory UserLoginRequest({
    required String email,
    required String password,
    @Default(false) bool rememberMe,
    String? deviceId,
    String? deviceName,
    Map<String, dynamic>? metadata,
  }) = _UserLoginRequest;

  factory UserLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$UserLoginRequestFromJson(json);
}
