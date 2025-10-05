import 'package:apis/network/remote/woocommerce/store_api/checkout_order_api/freezed_model/request/process_payment_and_order_request_model.dart';
import 'package:apis/network/remote/woocommerce/store_api/checkout_order_api/freezed_model/response/process_payment_and_order_response_model.dart';

/// 🔑 Abstract contract for WooCommerce Store API Checkout Order Service
/// Implement this to process payment and create orders in WooCommerce Store API! 🌐
abstract class CheckoutOrderService {
  /// 🚀 Processes payment and creates order in the WooCommerce Store API.
  /// This endpoint processes payment and creates the final order.
  Future<ProcessPaymentAndOrderResponseModel> processPaymentAndOrder({
    required String apiVersion,
    required ProcessPaymentAndOrderRequestModel requestData,
  });
}
