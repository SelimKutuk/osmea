import 'package:apis/apis.dart';
import 'package:api_explorer/services/api_request_handler.dart';
import 'package:api_explorer/services/api_service_registry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

///*******************************************************************
///******************* 📊 AUTH STATUS HANDLER **********************
///*******************************************************************

class AuthStatusHandler implements ApiRequestHandler {
  @override
  Future<Map<String, dynamic>> handleRequest(
    String method,
    Map<String, String> params,
  ) async {
    if (method != 'GET') {
      return {
        "status": "error",
        "message": "Method $method not supported for Auth Status API",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }

    try {
      debugPrint('📊 Getting authentication status');

      // Use WooAuthManager from the package
      final authManager = GetIt.I<WooAuthManager>();

      final authStatus = await authManager.getAuthStatus();

      debugPrint('✅ Auth status retrieved successfully');

      return {
        "status": "success",
        "message": "Authentication status retrieved",
        "auth_status": {
          "is_logged_in": authStatus.isLoggedIn,
          "has_token": authStatus.hasToken,
          "is_expired": authStatus.isExpired,
          "needs_refresh": authStatus.needsRefresh,
          "current_user": authStatus.currentUser != null
              ? {
                  "id": authStatus.currentUser?.id,
                  "email": authStatus.currentUser?.email,
                  "first_name": authStatus.currentUser?.firstName,
                  "last_name": authStatus.currentUser?.lastName,
                  "username":
                      authStatus.currentUser?.email, // Using email as username
                  "roles": authStatus.currentUser?.roles,
                  "avatar_url": authStatus.currentUser?.avatar,
                }
              : null,
          "token_info": authStatus.tokenInfo,
          "error": authStatus.error,
        },
        "params": params,
        "timestamp": DateTime.now().toIso8601String(),
      };
    } catch (e) {
      debugPrint("🚨 Auth Status Error Details: $e");

      String errorMessage =
          "Failed to get authentication status: ${e.toString()}";
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
          errorMessage = "Access denied";
        } else {
          errorMessage = "Network error occurred while getting auth status";
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
  List<String> get supportedMethods => ['GET'];

  @override
  Map<String, List<ApiField>> get requiredFields => {
        'GET': [],
      };
}
