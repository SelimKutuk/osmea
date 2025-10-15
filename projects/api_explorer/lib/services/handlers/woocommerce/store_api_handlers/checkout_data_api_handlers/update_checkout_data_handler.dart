import 'package:apis/apis.dart';
import 'package:apis/network/remote/woocommerce/store_api/checkout_data_api/abstract/checkout_data_service.dart';
import 'package:apis/network/remote/woocommerce/store_api/checkout_data_api/freezed_model/request/update_checkout_data_request_model.dart';
import 'package:api_explorer/services/api_request_handler.dart';
import 'package:api_explorer/services/api_service_registry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

///*******************************************************************
//******************* 🛒 UPDATE CHECKOUT DATA HANDLER *******************
///*******************************************************************

class UpdateCheckoutDataHandler implements ApiRequestHandler {
  @override
  Future<Map<String, dynamic>> handleRequest(
    String method,
    Map<String, String> params,
  ) async {
    if (method != 'POST') {
      return {
        "status": "error",
        "message": "Method $method not supported for Update Checkout Data API",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }

    try {
      // Parse request data from params
      final requestData = UpdateCheckoutDataRequestModel(
        additionalFields: params['additional_fields'] != null &&
                params['additional_fields']!.isNotEmpty
            ? AdditionalFields(
                pluginNamespaceLeaveOnPorch:
                    params['leave_on_porch']?.toLowerCase() == 'true',
                pluginNamespaceLocationOnPorch: params['location_on_porch'],
              )
            : null,
        paymentMethod: params['payment_method'],
        orderNotes: params['order_notes'],
        // Send empty billing_address to avoid API error
        billingAddress: const IngAddress(),
        shippingAddress: null,
      );

      debugPrint('🔍 Updating checkout data');

      final response = await GetIt.I<CheckoutDataService>().updateCheckoutData(
        apiVersion: WooNetwork.apiVersion,
        requestData: requestData,
      );

      debugPrint('✅ Checkout data updated successfully');

      return {
        "status": "success",
        "message": "Checkout data updated successfully",
        "data": response.toJson(),
        "timestamp": DateTime.now().toIso8601String(),
      };
    } catch (e) {
      debugPrint('❌ Error updating checkout data: $e');
      return {
        "status": "error",
        "message": "Failed to update checkout data: ${e.toString()}",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }
  }

  @override
  List<String> get supportedMethods => ['POST'];

  @override
  Map<String, List<ApiField>> get requiredFields => {
        'POST': [
          ApiField(
            name: 'payment_method',
            label: 'Payment Method',
            hint:
                'Payment method to use for checkout (e.g., cod, bacs, stripe)',
            isRequired: false,
            type: ApiFieldType.text,
          ),
          ApiField(
            name: 'order_notes',
            label: 'Order Notes',
            hint: 'Additional notes for the order',
            isRequired: false,
            type: ApiFieldType.text,
          ),
          ApiField(
            name: 'leave_on_porch',
            label: 'Leave on Porch',
            hint: 'Whether to leave package on porch (true/false)',
            isRequired: false,
            type: ApiFieldType.boolean,
          ),
          ApiField(
            name: 'location_on_porch',
            label: 'Location on Porch',
            hint: 'Specific location on porch for package delivery',
            isRequired: false,
            type: ApiFieldType.text,
          ),
        ],
      };
}
