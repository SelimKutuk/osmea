import 'package:apis/apis.dart';
import 'package:apis/network/remote/woocommerce/store_api/checkout_data_api/abstract/checkout_data_service.dart';
import 'package:apis/network/remote/woocommerce/store_api/checkout_data_api/freezed_model/request/process_payment_and_order_request_model.dart';
import 'package:api_explorer/services/api_request_handler.dart';
import 'package:api_explorer/services/api_service_registry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

///*******************************************************************
//******************* 💳 PROCESS PAYMENT AND ORDER HANDLER *******************
///*******************************************************************

class ProcessPaymentAndOrderHandler implements ApiRequestHandler {
  @override
  Future<Map<String, dynamic>> handleRequest(
    String method,
    Map<String, String> params,
  ) async {
    if (method != 'POST') {
      return {
        "status": "error",
        "message":
            "Method $method not supported for Process Payment and Order API",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }

    try {
      // Parse request data from params
      final requestData = ProcessPaymentAndOrderRequestModel(
        paymentMethod: params['payment_method'],
        billingAddress: IngAddress(
          firstName: params['billing_first_name'],
          lastName: params['billing_last_name'],
          company: params['billing_company'],
          address1: params['billing_address_1'],
          address2: params['billing_address_2'],
          city: params['billing_city'],
          state: params['billing_state'],
          postcode: params['billing_postcode'],
          country: params['billing_country'],
          email: params['billing_email'],
          phone: params['billing_phone'],
        ),
        shippingAddress: IngAddress(
          firstName: params['shipping_first_name'],
          lastName: params['shipping_last_name'],
          company: params['shipping_company'],
          address1: params['shipping_address_1'],
          address2: params['shipping_address_2'],
          city: params['shipping_city'],
          state: params['shipping_state'],
          postcode: params['shipping_postcode'],
          country: params['shipping_country'],
          email: params['shipping_email'],
          phone: params['shipping_phone'],
        ),
        customerNote: params['customer_note'],
        additionalFields: const AdditionalFields(),
        paymentResult: params['payment_status'] != null
            ? PaymentResult(
                paymentStatus: params['payment_status'],
                redirectUrl: params['redirect_url'],
              )
            : null,
      );

      debugPrint('🔍 Processing payment and order');

      final response =
          await GetIt.I<CheckoutDataService>().processPaymentAndOrder(
        apiVersion: WooNetwork.apiVersion,
        requestData: requestData,
      );

      debugPrint('✅ Payment and order processed successfully');

      return {
        "status": "success",
        "message": "Payment and order processed successfully",
        "data": response.toJson(),
        "timestamp": DateTime.now().toIso8601String(),
      };
    } catch (e) {
      debugPrint('❌ Error processing payment and order: $e');
      return {
        "status": "error",
        "message": "Failed to process payment and order: ${e.toString()}",
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
            isRequired: true,
            type: ApiFieldType.text,
          ),
          ApiField(
            name: 'billing_first_name',
            label: 'Billing First Name',
            hint: 'First name for billing address',
            isRequired: false,
            type: ApiFieldType.text,
          ),
          ApiField(
            name: 'billing_last_name',
            label: 'Billing Last Name',
            hint: 'Last name for billing address',
            isRequired: false,
            type: ApiFieldType.text,
          ),
          ApiField(
            name: 'billing_email',
            label: 'Billing Email',
            hint: 'Email address for billing',
            isRequired: false,
            type: ApiFieldType.text,
          ),
          ApiField(
            name: 'billing_phone',
            label: 'Billing Phone',
            hint: 'Phone number for billing',
            isRequired: false,
            type: ApiFieldType.text,
          ),
          ApiField(
            name: 'billing_address_1',
            label: 'Billing Address Line 1',
            hint: 'Primary address line for billing',
            isRequired: false,
            type: ApiFieldType.text,
          ),
          ApiField(
            name: 'billing_city',
            label: 'Billing City',
            hint: 'City for billing address',
            isRequired: false,
            type: ApiFieldType.text,
          ),
          ApiField(
            name: 'billing_country',
            label: 'Billing Country',
            hint: 'Country code for billing (e.g., US, TR)',
            isRequired: false,
            type: ApiFieldType.text,
          ),
          ApiField(
            name: 'customer_note',
            label: 'Customer Note',
            hint: 'Additional notes from customer',
            isRequired: false,
            type: ApiFieldType.text,
          ),
        ],
      };
}
