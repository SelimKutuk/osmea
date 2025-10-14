import 'package:apis/network/remote/woocommerce/store_api/order_api/freezed_model/response/list_order_response_model.dart';

/// 🔑 Abstract contract for WooCommerce Store API Order Service
/// Implement this to fetch orders from WooCommerce Store API! 🌐
abstract class OrderService {
  /// 🚀 Fetches the order from the WooCommerce Store API.
  /// This endpoint provides order details, items, totals, and addresses.
  Future<ListOrderResponseModel> getOrder({
    required String apiVersion,
    required String orderKey,
  });
}
