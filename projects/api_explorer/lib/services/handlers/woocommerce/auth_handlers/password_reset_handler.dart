import 'package:api_explorer/services/api_request_handler.dart';
import 'package:api_explorer/services/api_service_registry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:apis/network/remote/woocommerce/auth/abstract/woo_auth_service.dart';
import 'package:apis/network/remote/woocommerce/auth/freezed_model/request/send_reset_password_request.dart';

///*******************************************************************
///******************* 📧 PASSWORD RESET HANDLER *******************
///*******************************************************************

class PasswordResetHandler implements ApiRequestHandler {
  @override
  Future<Map<String, dynamic>> handleRequest(
    String method,
    Map<String, String> params,
  ) async {
    if (method != 'POST') {
      return {
        "status": "error",
        "message": "Method $method not supported for Password Reset API",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }

    // Validate required parameters
    if (!params.containsKey('email') || params['email']!.isEmpty) {
      return {
        "status": "error",
        "message": "Email is required",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }

    if (!params.containsKey('brand_name') || params['brand_name']!.isEmpty) {
      return {
        "status": "error",
        "message": "Store name is required",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }

    try {
      final email = params['email']!;
      final storeName = params['brand_name']!;
      final resetUrl =
          params['reset_url']?.isNotEmpty == true ? params['reset_url'] : null;

      debugPrint('📧 Starting password reset for: $email in store: $storeName');

      // Use WooAuthService from the package
      final authService = GetIt.I<WooAuthService>();

      // Create reset password request
      final resetRequest = SendResetPasswordRequest(
        email: email,
        resetUrl: resetUrl,
      );

      // Use store name from parameters
      final response =
          await authService.sendResetPasswordMail(storeName, resetRequest);

      if (response.success) {
        debugPrint('✅ Password reset email sent successfully');

        return {
          "status": "success",
          "message": response.message,
          "reset_data": {
            "email": response.data?.email,
            "reset_url": response.data?.resetUrl,
            "reset_token": response.data?.resetToken,
            "expires_at": response.data?.expiresAt?.toIso8601String(),
            "email_sent": response.data?.emailSent,
          },
          "metadata": response.metadata,
          "params": params,
          "timestamp": DateTime.now().toIso8601String(),
        };
      } else {
        debugPrint('❌ Password reset failed: ${response.message}');

        return {
          "status": "error",
          "message": response.message,
          "error_details": {
            "type": "password_reset_failed",
            "error": response.error,
          },
          "metadata": response.metadata,
          "params": params,
          "timestamp": DateTime.now().toIso8601String(),
        };
      }
    } catch (e) {
      debugPrint("🚨 Password Reset Error Details: $e");

      String errorMessage = "Failed to send password reset: ${e.toString()}";
      Map<String, dynamic> errorDetails = {};

      // Check if it's a network/HTTP related error
      if (e.toString().contains('DioException') ||
          e.toString().contains('DioError')) {
        debugPrint("🔍 Network Error detected");

        if (e.toString().contains('404')) {
          errorDetails['status_code'] = 404;
          errorMessage = "User not found with this email";
        } else if (e.toString().contains('422')) {
          errorDetails['status_code'] = 422;
          errorMessage = "Invalid email format";
        } else if (e.toString().contains('429')) {
          errorDetails['status_code'] = 429;
          errorMessage = "Too many reset requests. Please try again later";
        } else {
          errorMessage = "Network error occurred while sending reset email";
        }

        errorDetails['type'] = 'network_error';
      } else {
        errorDetails['type'] = 'unknown_error';
      }

      return {
        "status": "error",
        "message": errorMessage,
        "error_details": errorDetails,
        "full_error": e.toString(),
        "params": params,
        "timestamp": DateTime.now().toIso8601String(),
      };
    }
  }

  @override
  List<String> get supportedMethods => ['POST'];

  @override
  Map<String, List<ApiField>> get requiredFields => {
        'POST': [
          const ApiField(
            name: 'brand_name',
            label: 'Store Name',
            hint: 'WooCommerce store name',
            isRequired: true,
          ),
          const ApiField(
            name: 'email',
            label: 'Email',
            hint: 'User email address',
            isRequired: true,
          ),
          const ApiField(
            name: 'reset_url',
            label: 'Reset URL',
            hint: 'Custom password reset URL (optional)',
          ),
        ],
      };
}
