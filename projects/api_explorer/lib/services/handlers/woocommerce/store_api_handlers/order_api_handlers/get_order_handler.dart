import 'package:apis/apis.dart';
import 'package:apis/network/remote/woocommerce/store_api/order_api/abstract/order_service.dart';
import 'package:api_explorer/services/api_request_handler.dart';
import 'package:api_explorer/services/api_service_registry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

///*******************************************************************
//******************* 📦 GET ORDER HANDLER *******************
///*******************************************************************

class GetOrderHandler implements ApiRequestHandler {
  @override
  Future<Map<String, dynamic>> handleRequest(
    String method,
    Map<String, String> params,
  ) async {
    if (method != 'GET') {
      return {
        "status": "error",
        "message": "Method $method not supported for Get Order API",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }

    try {
      // Get order key from params
      final orderKey = params['order_key'];
      if (orderKey == null || orderKey.isEmpty) {
        return {
          "status": "error",
          "message": "Order key is required for order request",
          "timestamp": DateTime.now().toIso8601String(),
        };
      }

      debugPrint('🔍 Fetching order for order key: $orderKey');

      final response = await GetIt.I<OrderService>().getOrder(
        apiVersion: WooNetwork.apiVersion,
        orderKey: orderKey,
      );

      debugPrint('✅ Order retrieved successfully');

      return {
        "status": "success",
        "message": "Order retrieved successfully",
        "data": response.toJson(),
        "timestamp": DateTime.now().toIso8601String(),
      };
    } catch (e) {
      debugPrint('❌ Error fetching order: $e');
      return {
        "status": "error",
        "message": "Failed to fetch order: ${e.toString()}",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }
  }

  @override
  List<String> get supportedMethods => ['GET'];

  @override
  Map<String, List<ApiField>> get requiredFields => {
        'GET': [
          ApiField(
            name: 'order_key',
            label: 'Order Key',
            hint:
                'The order key to retrieve order details for (e.g., wc_order_1234567890abcdef)',
            isRequired: true,
            type: ApiFieldType.text,
          ),
        ],
      };
}
