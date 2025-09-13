import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_login_response.freezed.dart';
part 'user_login_response.g.dart';

/// 🔐 User Login Response Model
@freezed
class UserLoginResponse with _$UserLoginResponse {
  const factory UserLoginResponse({
    required bool success,
    required String message,
    UserLoginData? data,
    String? error,
    Map<String, dynamic>? metadata,
  }) = _UserLoginResponse;

  factory UserLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$UserLoginResponseFromJson(json);
}

/// 🔐 User Login Data Model
@freezed
class UserLoginData with _$UserLoginData {
  const factory UserLoginData({
    required String accessToken,
    required String tokenType,
    required int expiresIn,
    String? refreshToken,
    String? scope,
    required UserInfo user,
    DateTime? issuedAt,
    DateTime? expiresAt,
  }) = _UserLoginData;

  factory UserLoginData.fromJson(Map<String, dynamic> json) =>
      _$UserLoginDataFromJson(json);
}

/// 👤 User Info Model
@freezed
class UserInfo with _$UserInfo {
  const factory UserInfo({
    required String id,
    required String email,
    required String firstName,
    required String lastName,
    String? phone,
    String? company,
    String? avatar,
    List<String>? roles,
    Map<String, dynamic>? billing,
    Map<String, dynamic>? shipping,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? lastLoginAt,
    bool? isActive,
    bool? isVerified,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);
}
