 import 'package:apis/apis.dart';
import 'package:apis/dio_config/dio_client/api_dio_client.dart';
import 'package:apis/network/remote/woocommerce/store_api/cart_items_api/abstract/cart_items_service.dart';
import 'package:apis/network/remote/woocommerce/store_api/cart_items_api/freezed_model/response/cart_item.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'api_cart_items_service.g.dart';

/// 🌐 CartItemsServiceClient
/// Retrofit client for WooCommerce Store API Cart Items.
/// Make sure WooNetwork.storeUrl is set and authentication is configured before using! 🏬🔑
@RestApi()
@Injectable(as: CartItemsService)
abstract class CartItemsServiceClient implements CartItemsService {
  /// 🏭 Factory for dependency injection
  @factoryMethod
  factory CartItemsServiceClient(Dio dio) => _CartItemsServiceClient(
        ApiDioClient.wooDio(),
        baseUrl: WooNetwork.baseUrl,
      );

  /// 🛒 Get cart items from WooCommerce Store API
  /// This endpoint provides detailed information about all items currently in the cart.
  /// Returns a List<CartItem> since the API returns an array, not an object.
  /// No extra parameters are needed according to the documentation.
  @override
  @GET('/wp-json/wc/store/{api_version}/cart/items')
  Future<List<CartItem>> listCartItems({
    @Path('api_version') required String apiVersion,
  });
}
