import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_signup_response.freezed.dart';
part 'user_signup_response.g.dart';

/// 🔐 User Sign Up Response Model
@freezed
class UserSignUpResponse with _$UserSignUpResponse {
  const factory UserSignUpResponse({
    required bool success,
    required String message,
    UserSignUpData? data,
    String? error,
    Map<String, dynamic>? metadata,
  }) = _UserSignUpResponse;

  factory UserSignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$UserSignUpResponseFromJson(json);
}

/// 🔐 User Sign Up Data Model
@freezed
class UserSignUpData with _$UserSignUpData {
  const factory UserSignUpData({
    required String userId,
    required String email,
    required String firstName,
    required String lastName,
    String? phone,
    String? company,
    bool? requiresVerification,
    String? verificationToken,
    DateTime? createdAt,
    Map<String, dynamic>? metadata,
  }) = _UserSignUpData;

  factory UserSignUpData.fromJson(Map<String, dynamic> json) =>
      _$UserSignUpDataFromJson(json);
}
