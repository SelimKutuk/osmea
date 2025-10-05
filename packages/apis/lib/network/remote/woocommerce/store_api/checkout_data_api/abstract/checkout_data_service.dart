import 'package:apis/network/remote/woocommerce/store_api/checkout_data_api/freezed_model/request/update_checkout_data_request_model.dart';
import 'package:apis/network/remote/woocommerce/store_api/checkout_data_api/freezed_model/response/list_checkout_data_response_model.dart';
import 'package:apis/network/remote/woocommerce/store_api/checkout_data_api/freezed_model/response/update_checkout_data_response_model.dart';

/// 🔑 Abstract contract for WooCommerce Store API Checkout Data Service
/// Implement this to fetch and update checkout data from WooCommerce Store API! 🌐
abstract class CheckoutDataService {
  /// 🚀 Fetches the checkout data from the WooCommerce Store API.
  /// This endpoint provides order details, billing/shipping addresses, and payment information.
  Future<ListCheckoutDataResponseModel> getCheckoutData({
    required String apiVersion,
    String? orderKey,
  });

  /// 🚀 Updates the checkout data in the WooCommerce Store API.
  /// This endpoint allows updating payment method, additional fields, and order notes.
  Future<UpdateCheckoutDataResponseModel> updateCheckoutData({
    required String apiVersion,
    required UpdateCheckoutDataRequestModel requestData,
  });
}
