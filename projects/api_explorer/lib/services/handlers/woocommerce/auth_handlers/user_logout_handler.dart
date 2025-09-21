import 'package:apis/apis.dart';
import 'package:api_explorer/services/api_request_handler.dart';
import 'package:api_explorer/services/api_service_registry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

///*******************************************************************
///******************* 🚪 USER LOGOUT HANDLER **********************
///*******************************************************************

class UserLogoutHandler implements ApiRequestHandler {
  @override
  Future<Map<String, dynamic>> handleRequest(
    String method,
    Map<String, String> params,
  ) async {
    if (method != 'POST') {
      return {
        "status": "error",
        "message": "Method $method not supported for User Logout API",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }

    try {
      debugPrint('🚪 Starting user logout process');

      // Use WooAuthManager from the package
      final authManager = GetIt.I<WooAuthManager>();

      final result = await authManager.logout();

      if (result.isSuccess) {
        debugPrint('✅ User logout successful');

        return {
          "status": "success",
          "message": result.message,
          "params": params,
          "timestamp": DateTime.now().toIso8601String(),
        };
      } else {
        debugPrint('❌ User logout failed: ${result.message}');

        return {
          "status": "error",
          "message": result.message,
          "error_details": {
            "type": "logout_failed",
            "error": result.error,
          },
          "params": params,
          "timestamp": DateTime.now().toIso8601String(),
        };
      }
    } catch (e) {
      debugPrint("🚨 User Logout Error Details: $e");

      String errorMessage = "Failed to logout user: ${e.toString()}";
      Map<String, dynamic> errorDetails = {};

      // Check if it's a network/HTTP related error
      if (e.toString().contains('DioException') ||
          e.toString().contains('DioError')) {
        debugPrint("🔍 Network Error detected");

        if (e.toString().contains('401')) {
          errorDetails['status_code'] = 401;
          errorMessage = "User not authenticated";
        } else if (e.toString().contains('403')) {
          errorDetails['status_code'] = 403;
          errorMessage = "Access denied for logout";
        } else {
          errorMessage = "Network error occurred while logging out";
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
        'POST': [],
      };
}
