import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_signup_request.freezed.dart';
part 'user_signup_request.g.dart';

/// 🔐 User Sign Up Request Model
@freezed
class UserSignUpRequest with _$UserSignUpRequest {
  const factory UserSignUpRequest({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    String? phone,
    String? company,
    @Default(true) bool acceptTerms,
    @Default(false) bool subscribeNewsletter,
    String? referralCode,
    Map<String, dynamic>? metadata,
  }) = _UserSignUpRequest;

  factory UserSignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$UserSignUpRequestFromJson(json);
}
