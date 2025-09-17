import 'package:apis/apis.dart';
import 'package:api_explorer/services/api_request_handler.dart';
import 'package:api_explorer/services/api_service_registry.dart';
import 'package:flutter/material.dart';

///*******************************************************************
///******************* 🔐 JWT AUTH TEST HANDLER ********************
///*******************************************************************

class JwtAuthTestHandler implements ApiRequestHandler {
  @override
  Future<Map<String, dynamic>> handleRequest(
    String method,
    Map<String, String> params,
  ) async {
    if (method != 'POST') {
      return {
        "status": "error",
        "message": "Method $method not supported for JWT Auth Test API",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }

    // Validate required parameters
    if (!params.containsKey('brand_name') || params['brand_name']!.isEmpty) {
      return {
        "status": "error",
        "message": "Brand name is required",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }

    if (!params.containsKey('username') || params['username']!.isEmpty) {
      return {
        "status": "error",
        "message": "Username is required",
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

    try {
      final brandName = params['brand_name']!;
      final username = params['username']!;
      final password = params['password']!;

      debugPrint(
          '🔐 Testing JWT authentication for user: $username in brand: $brandName');

      // Test JWT authentication using the package service
      final result = await WooJwtSignInManager.instance.signIn(
        username: username,
        password: password,
        brandName: brandName,
      );

      if (result.isSuccess) {
        debugPrint('✅ JWT authentication test successful');

        return {
          "status": "success",
          "message": "JWT authentication successful",
          "token_info": {
            "access_token": result.token?.accessToken,
            "jwt": result
                .token?.accessToken, // Also include as 'jwt' for compatibility
            "token_type": result.token?.tokenType,
            "expires_at": result.token != null
                ? result.token!.issuedAt
                    .add(Duration(seconds: result.token!.expiresIn))
                    .toIso8601String()
                : null,
            "user_data": result.token?.userData,
          },
          "params": params,
          "timestamp": DateTime.now().toIso8601String(),
        };
      } else {
        debugPrint('❌ JWT authentication test failed: ${result.message}');

        return {
          "status": "error",
          "message": result.message,
          "error_details": {
            "type": "authentication_failed",
            "error": result.error,
          },
          "params": params,
          "timestamp": DateTime.now().toIso8601String(),
        };
      }
    } catch (e) {
      debugPrint("🚨 JWT Auth Test Error Details: $e");

      String errorMessage =
          "Failed to test JWT authentication: ${e.toString()}";
      Map<String, dynamic> errorDetails = {};

      // Check if it's a network/HTTP related error
      if (e.toString().contains('DioException') ||
          e.toString().contains('DioError')) {
        debugPrint("🔍 Network Error detected");

        if (e.toString().contains('401')) {
          errorDetails['status_code'] = 401;
          errorMessage = "Invalid username or password";
        } else if (e.toString().contains('403')) {
          errorDetails['status_code'] = 403;
          errorMessage =
              "JWT authentication is not enabled on this WooCommerce site";
        } else if (e.toString().contains('404')) {
          errorDetails['status_code'] = 404;
          errorMessage =
              "JWT authentication endpoint not found. Please install JWT Authentication plugin";
        } else {
          errorMessage = "Network error occurred while testing authentication";
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
            label: 'Brand Name',
            hint: 'WooCommerce brand/store name',
            isRequired: true,
          ),
          const ApiField(
            name: 'username',
            label: 'Username',
            hint: 'WooCommerce username or email',
            isRequired: true,
          ),
          const ApiField(
            name: 'password',
            label: 'Password',
            hint: 'WooCommerce password',
            isRequired: true,
          ),
        ],
      };
}
