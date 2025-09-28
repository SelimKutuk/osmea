import 'package:apis/network/remote/woocommerce/store_api/cart_items_api/freezed_model/response/cart_item.dart';
import 'package:apis/network/remote/woocommerce/store_api/cart_items_api/freezed_model/response/add_cart_item_response.dart';
import 'package:apis/network/remote/woocommerce/store_api/cart_items_api/freezed_model/response/edit_single_cart_item_response.dart';

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

  /// 🛒 Add an item to the cart via WooCommerce Store API.
  /// Requires JWT authentication and cart token headers for proper authorization.
  /// Returns AddCartItemResponse with the newly added cart item details.
  Future<AddCartItemResponse> addCartItem({
    required String apiVersion,
    required String cartToken,
    required String jwtToken,
    required int id,
    required int quantity,
    List<Map<String, dynamic>>? variation,
  });

  /// 🛒 Edit a single cart item by its key via WooCommerce Store API.
  /// Requires JWT authentication and cart token headers for proper authorization.
  /// Returns EditSingleCartItemResponse with the updated cart item details.
  Future<EditSingleCartItemResponse> editSingleCartItem({
    required String apiVersion,
    required String cartToken,
    required String jwtToken,
    required String key,
    required int quantity,
  });

  /// 🗑️ Delete all cart items from the cart via WooCommerce Store API.
  /// Requires JWT authentication and cart token headers for proper authorization.
  /// Returns empty List<CartItem> when successful (cart becomes empty).
  Future<List<CartItem>> deleteAllCartItems({
    required String apiVersion,
    required String cartToken,
    required String jwtToken,
  });
}
