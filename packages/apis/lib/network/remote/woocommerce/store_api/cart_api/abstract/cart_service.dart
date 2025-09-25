import 'package:apis/network/remote/woocommerce/store_api/cart_api/freezed_model/response/get_cart_response.dart';

/// 🔑 Abstract contract for WooCommerce Store API Cart Service
/// Implement this to fetch cart from WooCommerce Store API! 🌐
abstract class CartService {
  /// 🚀 Fetches the cart contents from the WooCommerce Store API.
  Future<GetCartResponse> getCart({
    required String apiVersion,
  });
}