import 'package:apis/apis.dart';
import 'package:apis/network/remote/woocommerce/store_api/checkout_data_api/abstract/checkout_data_service.dart';
import 'package:api_explorer/services/api_request_handler.dart';
import 'package:api_explorer/services/api_service_registry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

///*******************************************************************
//******************* 🛒 GET CHECKOUT DATA HANDLER *******************
///*******************************************************************

class GetCheckoutDataHandler implements ApiRequestHandler {
  @override
  Future<Map<String, dynamic>> handleRequest(
    String method,
    Map<String, String> params,
  ) async {
    if (method != 'GET') {
      return {
        "status": "error",
        "message": "Method $method not supported for Get Checkout Data API",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }

    try {
      debugPrint('🔍 Fetching checkout data');

      final response = await GetIt.I<CheckoutDataService>().getCheckoutData(
        apiVersion: WooNetwork.apiVersion,
        // No order key needed for general checkout data
      );

      debugPrint('✅ Checkout data retrieved successfully');

      return {
        "status": "success",
        "message": "Checkout data retrieved successfully",
        "data": response.toJson(),
        "timestamp": DateTime.now().toIso8601String(),
      };
    } catch (e) {
      debugPrint('❌ Error fetching checkout data: $e');
      return {
        "status": "error",
        "message": "Failed to fetch checkout data: ${e.toString()}",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }
  }

  @override
  List<String> get supportedMethods => ['GET'];

  @override
  Map<String, List<ApiField>> get requiredFields => {
        'GET': [], // No parameters required for general checkout data
      };
}
