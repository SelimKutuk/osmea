import 'package:apis/apis.dart';
import 'package:apis/dio_config/dio_client/api_dio_client.dart';
import 'package:apis/network/remote/woocommerce/store_api/cart_api/abstract/cart_service.dart';
import 'package:apis/network/remote/woocommerce/store_api/cart_api/freezed_model/response/get_cart_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'api_cart_service.g.dart';

/// 🌐 CartServiceClient
/// Retrofit client for WooCommerce Store API Cart.
/// Make sure WooNetwork.storeUrl is set and JWT auth is configured before using! 🏬🔑
@RestApi()
@Injectable(as: CartService)
abstract class CartServiceClient implements CartService {
  /// 🏭 Factory for dependency injection
  @factoryMethod
  factory CartServiceClient(Dio dio) => _CartServiceClient(
        ApiDioClient.wooDio(),
        baseUrl: WooNetwork.baseUrl,
      );

  /// 🛒 Get cart contents from WooCommerce Store API
  @override
  @GET('/wp-json/wc/store/{api_version}/cart')
  Future<GetCartResponse> getCart({
    @Path('api_version') required String apiVersion,
  });
}