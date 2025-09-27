import 'package:apis/network/remote/woocommerce/store_api/cart_items_api/freezed_model/response/cart_item.dart';

/// 🔑 Abstract contract for WooCommerce Store API Cart Items Service
/// Implement this to fetch cart items from WooCommerce Store API! 🌐
abstract class CartItemsService {
  /// 🚀 Fetches the cart items from the WooCommerce Store API.
  /// This endpoint returns a list of items currently in the cart with detailed information.
  /// Returns a simple List<CartItem> since the API returns an array, not an object.
  Future<List<CartItem>> listCartItems({
    required String apiVersion,
  });

  /// 🛒 Get a single cart item by its key from WooCommerce Store API.
  /// Requires JWT authentication and cart token headers for proper authorization.
  /// Returns List<CartItem> because API always returns array format, even for single item.
  Future<List<CartItem>> getSingleCartItem({
    required String apiVersion,
    required String cartToken,
    required String jwtToken,
    required String key,
  });
}
