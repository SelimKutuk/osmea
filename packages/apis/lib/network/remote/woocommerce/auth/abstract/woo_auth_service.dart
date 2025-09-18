import 'package:apis/network/remote/woocommerce/auth/freezed_model/request/delete_user_request.dart';
import 'package:apis/network/remote/woocommerce/auth/freezed_model/request/password_update_request.dart';
import 'package:apis/network/remote/woocommerce/auth/freezed_model/request/send_reset_password_request.dart';
import 'package:apis/network/remote/woocommerce/auth/freezed_model/request/user_login_request.dart';
import 'package:apis/network/remote/woocommerce/auth/freezed_model/request/user_signup_request.dart';
import 'package:apis/network/remote/woocommerce/auth/freezed_model/response/delete_user_response.dart';
import 'package:apis/network/remote/woocommerce/auth/freezed_model/response/password_update_response.dart';
import 'package:apis/network/remote/woocommerce/auth/freezed_model/response/send_reset_password_response.dart';
import 'package:apis/network/remote/woocommerce/auth/freezed_model/response/user_login_response.dart';
import 'package:apis/network/remote/woocommerce/auth/freezed_model/response/user_signup_response.dart';

/// 🔐 Abstract WooCommerce Authentication Service
/// Defines the contract for authentication operations
abstract class WooAuthService {
  /// 🔑 User Login
  /// Authenticates a user with email and password
  Future<UserLoginResponse> userLogin(
      String brandName, UserLoginRequest request);

  /// 📝 User Sign Up
  /// Creates a new user account
  Future<UserSignUpResponse> userSignUp(
      String brandName, UserSignUpRequest request);

  /// 🗑️ Delete User
  /// Deletes a user account
  Future<DeleteUserResponse> deleteUser(
      String brandName, String jwt, String authKey, DeleteUserRequest request);

  /// 📧 Send Reset Password Mail
  /// Sends password reset email to user
  Future<SendResetPasswordResponse> sendResetPasswordMail(
      String brandName, SendResetPasswordRequest request);

  /// 🔐 Update Password
  /// Updates user password with JWT authentication
  Future<PasswordUpdateResponse> updatePassword(
      String brandName, PasswordUpdateRequest request);

  Future<UserLoginResponse> userLoginWithQuery(
      String email, String password, String brandName);
}
