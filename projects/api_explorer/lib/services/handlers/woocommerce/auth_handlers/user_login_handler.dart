import 'package:api_explorer/services/api_request_handler.dart';
import 'package:api_explorer/services/api_service_registry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:apis/network/remote/woocommerce/auth/abstract/woo_auth_service.dart';
import 'package:apis/network/remote/woocommerce/auth/freezed_model/request/user_login_request.dart';

///*******************************************************************
///******************* 🔑 USER LOGIN HANDLER ***********************
///*******************************************************************

class UserLoginHandler implements ApiRequestHandler {
  @override
  Future<Map<String, dynamic>> handleRequest(
    String method,
    Map<String, String> params,
  ) async {
    if (method != 'POST') {
      return {
        "status": "error",
        "message": "Method $method not supported for User Login API",
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
      final storeName = params['brand_name']!;
      final rememberMe = params['remember_me']?.toLowerCase() == 'true';
      final deviceId =
          params['device_id']?.isNotEmpty == true ? params['device_id'] : null;
      final deviceName = params['device_name']?.isNotEmpty == true
          ? params['device_name']
          : null;

      debugPrint('🔐 Starting user login for: $email in store: $storeName');

      // Use WooAuthService from the package
      final authService = GetIt.I<WooAuthService>();

      // Create login request
      final loginRequest = UserLoginRequest(
        email: email,
        password: password,
        rememberMe: rememberMe,
        deviceId: deviceId,
        deviceName: deviceName,
      );

      // Use store name from parameters
      final response = await authService.userLogin(storeName, loginRequest);

      debugPrint('🔍 Login Response Debug:');
      debugPrint('  - success: ${response.success}');
      debugPrint('  - message: ${response.message}');
      debugPrint('  - data: ${response.data}');
      debugPrint('  - user: ${response.data?.user}');
      debugPrint('  - user?.toJson(): ${response.data?.user?.toJson()}');
      debugPrint('  - jwt: ${response.data?.jwt}');
      debugPrint('  - accessToken: ${response.data?.accessToken}');
      debugPrint('  - tokenType: ${response.data?.tokenType}');
      debugPrint('  - expiresIn: ${response.data?.expiresIn}');
      debugPrint('  - refreshToken: ${response.data?.refreshToken}');
      debugPrint('  - scope: ${response.data?.scope}');

      if (response.success) {
        debugPrint('✅ User login successful');

        return {
          "status": "success",
          "message": response.message,
          "user_data": {
            "user_id": response.data?.user?.id,
            "email": response.data?.user?.email,
            "first_name": response.data?.user?.firstName,
            "last_name": response.data?.user?.lastName,
            "username": response.data?.user?.email, // Using email as username
            "roles": response.data?.user?.roles,
            "avatar_url": response.data?.user?.avatar,
            "phone": response.data?.user?.phone,
            "company": response.data?.user?.company,
            "is_active": response.data?.user?.isActive,
            "is_verified": response.data?.user?.isVerified,
            "created_at": response.data?.user?.createdAt?.toIso8601String(),
            "updated_at": response.data?.user?.updatedAt?.toIso8601String(),
            "last_login_at":
                response.data?.user?.lastLoginAt?.toIso8601String(),
          },
          "token_info": {
            "access_token": response.data?.jwt ?? response.data?.accessToken,
            "jwt": response.data?.jwt ?? response.data?.accessToken,
            "token_type": response.data?.tokenType,
            "expires_in": response.data?.expiresIn,
            "expires_at": response.data?.expiresAt?.toIso8601String(),
            "refresh_token": response.data?.refreshToken,
            "scope": response.data?.scope,
            "issued_at": response.data?.issuedAt?.toIso8601String(),
          },
          "metadata": response.metadata,
          "params": params,
          "timestamp": DateTime.now().toIso8601String(),
        };
      } else {
        debugPrint('❌ User login failed: ${response.message}');

        return {
          "status": "error",
          "message": response.message,
          "error_details": {
            "type": "login_failed",
            "error": response.error,
          },
          "metadata": response.metadata,
          "params": params,
          "timestamp": DateTime.now().toIso8601String(),
        };
      }
    } catch (e) {
      debugPrint("🚨 User Login Error Details: $e");

      String errorMessage = "Failed to login user: ${e.toString()}";
      Map<String, dynamic> errorDetails = {};

      // Check if it's a network/HTTP related error
      if (e.toString().contains('DioException') ||
          e.toString().contains('DioError')) {
        debugPrint("🔍 Network Error detected");

        if (e.toString().contains('401')) {
          errorDetails['status_code'] = 401;
          errorMessage = "Invalid email or password";
        } else if (e.toString().contains('403')) {
          errorDetails['status_code'] = 403;
          errorMessage = "Access denied. Please check your permissions";
        } else if (e.toString().contains('404')) {
          errorDetails['status_code'] = 404;
          errorMessage = "Authentication service not found";
        } else if (e.toString().contains('422')) {
          errorDetails['status_code'] = 422;
          errorMessage = "Invalid input data";
        } else {
          errorMessage = "Network error occurred while logging in";
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
            name: 'remember_me',
            label: 'Remember Me',
            hint: 'Keep user logged in (true/false)',
          ),
          const ApiField(
            name: 'device_id',
            label: 'Device ID',
            hint: 'Unique device identifier',
          ),
          const ApiField(
            name: 'device_name',
            label: 'Device Name',
            hint: 'Device name for tracking',
          ),
        ],
      };
}
