import 'package:api_explorer/services/api_request_handler.dart';
import 'package:api_explorer/services/api_service_registry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:apis/network/remote/woocommerce/auth/abstract/woo_auth_service.dart';
import 'package:apis/network/remote/woocommerce/auth/freezed_model/request/delete_user_request.dart';

///*******************************************************************
///******************* 🗑️ DELETE USER HANDLER **********************
///*******************************************************************

class DeleteUserHandler implements ApiRequestHandler {
  @override
  Future<Map<String, dynamic>> handleRequest(
    String method,
    Map<String, String> params,
  ) async {
    if (method != 'DELETE') {
      return {
        "status": "error",
        "message": "Method $method not supported for Delete User API",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }

    // Validate required parameters
    if (!params.containsKey('user_id') || params['user_id']!.isEmpty) {
      return {
        "status": "error",
        "message": "User ID is required",
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
      final userId = params['user_id']!;
      final storeName = params['brand_name']!;
      final reason =
          params['reason']?.isNotEmpty == true ? params['reason'] : null;
      final deleteOrders = params['delete_orders']?.toLowerCase() == 'true';
      final deleteReviews = params['delete_reviews']?.toLowerCase() == 'true';

      debugPrint(
          '🗑️ Starting user deletion for ID: $userId in store: $storeName');

      // Use WooAuthService from the package
      final authService = GetIt.I<WooAuthService>();

      // Create delete user request
      final deleteRequest = DeleteUserRequest(
        userId: userId,
        reason: reason,
        deleteOrders: deleteOrders,
        deleteReviews: deleteReviews,
      );

      // Use store name from parameters
      final response = await authService.deleteUser(storeName, deleteRequest);

      if (response.success) {
        debugPrint('✅ User deletion successful');

        return {
          "status": "success",
          "message": response.message,
          "deletion_data": {
            "user_id": response.data?.userId,
            "deleted_at": response.data?.deletedAt?.toIso8601String(),
            "reason": response.data?.reason,
            "orders_deleted": response.data?.ordersDeleted,
            "reviews_deleted": response.data?.reviewsDeleted,
          },
          "metadata": response.metadata,
          "params": params,
          "timestamp": DateTime.now().toIso8601String(),
        };
      } else {
        debugPrint('❌ User deletion failed: ${response.message}');

        return {
          "status": "error",
          "message": response.message,
          "error_details": {
            "type": "user_deletion_failed",
            "error": response.error,
          },
          "metadata": response.metadata,
          "params": params,
          "timestamp": DateTime.now().toIso8601String(),
        };
      }
    } catch (e) {
      debugPrint("🚨 Delete User Error Details: $e");

      String errorMessage = "Failed to delete user: ${e.toString()}";
      Map<String, dynamic> errorDetails = {};

      // Check if it's a network/HTTP related error
      if (e.toString().contains('DioException') ||
          e.toString().contains('DioError')) {
        debugPrint("🔍 Network Error detected");

        if (e.toString().contains('404')) {
          errorDetails['status_code'] = 404;
          errorMessage = "User not found";
        } else if (e.toString().contains('403')) {
          errorDetails['status_code'] = 403;
          errorMessage =
              "Access denied. You don't have permission to delete this user";
        } else if (e.toString().contains('422')) {
          errorDetails['status_code'] = 422;
          errorMessage = "Invalid user data";
        } else {
          errorMessage = "Network error occurred while deleting user";
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
  List<String> get supportedMethods => ['DELETE'];

  @override
  Map<String, List<ApiField>> get requiredFields => {
        'DELETE': [
          const ApiField(
            name: 'brand_name',
            label: 'Store Name',
            hint: 'WooCommerce store name',
            isRequired: true,
          ),
          const ApiField(
            name: 'user_id',
            label: 'User ID',
            hint: 'ID of the user to delete',
            isRequired: true,
          ),
          const ApiField(
            name: 'reason',
            label: 'Reason',
            hint: 'Reason for deletion (optional)',
          ),
          const ApiField(
            name: 'delete_orders',
            label: 'Delete Orders',
            hint: 'Delete user orders (true/false)',
          ),
          const ApiField(
            name: 'delete_reviews',
            label: 'Delete Reviews',
            hint: 'Delete user reviews (true/false)',
          ),
        ],
      };
}
