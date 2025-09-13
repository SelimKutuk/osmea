import 'package:api_explorer/services/api_request_handler.dart';
import 'package:api_explorer/services/api_service_registry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:apis/network/remote/woocommerce/auth/abstract/woo_auth_service.dart';
import 'package:apis/network/remote/woocommerce/auth/freezed_model/request/user_signup_request.dart';

///*******************************************************************
///******************* 📝 USER SIGNUP HANDLER **********************
///*******************************************************************

class UserSignUpHandler implements ApiRequestHandler {
  @override
  Future<Map<String, dynamic>> handleRequest(
    String method,
    Map<String, String> params,
  ) async {
    if (method != 'POST') {
      return {
        "status": "error",
        "message": "Method $method not supported for User Sign Up API",
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

    if (!params.containsKey('password') || params['password']!.isEmpty) {
      return {
        "status": "error",
        "message": "Password is required",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }

    if (!params.containsKey('first_name') || params['first_name']!.isEmpty) {
      return {
        "status": "error",
        "message": "First name is required",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }

    if (!params.containsKey('last_name') || params['last_name']!.isEmpty) {
      return {
        "status": "error",
        "message": "Last name is required",
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
      final password = params['password']!;
      final firstName = params['first_name']!;
      final lastName = params['last_name']!;
      final storeName = params['brand_name']!;
      final phone =
          params['phone']?.isNotEmpty == true ? params['phone'] : null;
      final company =
          params['company']?.isNotEmpty == true ? params['company'] : null;
      final acceptTerms = params['accept_terms']?.toLowerCase() == 'true';
      final subscribeNewsletter =
          params['subscribe_newsletter']?.toLowerCase() == 'true';
      final referralCode = params['referral_code']?.isNotEmpty == true
          ? params['referral_code']
          : null;

      debugPrint('📝 Starting user sign up for: $email in store: $storeName');

      // Use WooAuthService from the package
      final authService = GetIt.I<WooAuthService>();

      // Create signup request
      final signupRequest = UserSignUpRequest(
        email: email,
        password: password,
        firstName: firstName,
        lastName: lastName,
        phone: phone,
        company: company,
        acceptTerms: acceptTerms,
        subscribeNewsletter: subscribeNewsletter,
        referralCode: referralCode,
      );

      // Use store name from parameters
      final response = await authService.userSignUp(storeName, signupRequest);

      if (response.success) {
        debugPrint('✅ User sign up successful');

        return {
          "status": "success",
          "message": response.message,
          "user_data": {
            "user_id": response.data?.userId,
            "email": response.data?.email,
            "first_name": response.data?.firstName,
            "last_name": response.data?.lastName,
            "phone": response.data?.phone,
            "company": response.data?.company,
            "created_at": response.data?.createdAt?.toIso8601String(),
          },
          "metadata": response.metadata,
          "params": params,
          "timestamp": DateTime.now().toIso8601String(),
        };
      } else {
        debugPrint('❌ User sign up failed: ${response.message}');

        return {
          "status": "error",
          "message": response.message,
          "error_details": {
            "type": "signup_failed",
            "error": response.error,
          },
          "metadata": response.metadata,
          "params": params,
          "timestamp": DateTime.now().toIso8601String(),
        };
      }
    } catch (e) {
      debugPrint("🚨 User Sign Up Error Details: $e");

      String errorMessage = "Failed to sign up user: ${e.toString()}";
      Map<String, dynamic> errorDetails = {};

      // Check if it's a network/HTTP related error
      if (e.toString().contains('DioException') ||
          e.toString().contains('DioError')) {
        debugPrint("🔍 Network Error detected");

        if (e.toString().contains('409')) {
          errorDetails['status_code'] = 409;
          errorMessage = "User already exists with this email";
        } else if (e.toString().contains('422')) {
          errorDetails['status_code'] = 422;
          errorMessage = "Invalid input data - check all fields";
        } else if (e.toString().contains('400')) {
          errorDetails['status_code'] = 400;
          errorMessage = "Bad request - invalid signup data";
        } else {
          errorMessage = "Network error occurred while signing up";
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
            name: 'password',
            label: 'Password',
            hint: 'User password',
            isRequired: true,
          ),
          const ApiField(
            name: 'first_name',
            label: 'First Name',
            hint: 'User first name',
            isRequired: true,
          ),
          const ApiField(
            name: 'last_name',
            label: 'Last Name',
            hint: 'User last name',
            isRequired: true,
          ),
          const ApiField(
            name: 'phone',
            label: 'Phone',
            hint: 'User phone number',
          ),
          const ApiField(
            name: 'company',
            label: 'Company',
            hint: 'User company name',
          ),
          const ApiField(
            name: 'accept_terms',
            label: 'Accept Terms',
            hint: 'Accept terms and conditions (true/false)',
          ),
          const ApiField(
            name: 'subscribe_newsletter',
            label: 'Subscribe Newsletter',
            hint: 'Subscribe to newsletter (true/false)',
          ),
          const ApiField(
            name: 'referral_code',
            label: 'Referral Code',
            hint: 'Referral code if any',
          ),
        ],
      };
}
