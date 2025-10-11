import 'package:apis/apis.dart';
import 'package:apis/dio_config/dio_client/api_dio_client.dart';
import 'package:apis/network/remote/woocommerce/store_api/order_api/abstract/order_service.dart';
import 'package:apis/network/remote/woocommerce/store_api/order_api/freezed_model/response/list_order_response_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'api_order_service.g.dart';

/// 🌐 OrderServiceClient
/// Retrofit client for WooCommerce Store API Order.
/// Make sure WooNetwork.storeUrl is set before using! 🏬🔑
@RestApi()
@Injectable(as: OrderService)
abstract class OrderServiceClient implements OrderService {
  /// 🏭 Factory for dependency injection
  @factoryMethod
  factory OrderServiceClient(Dio dio) => _OrderServiceClient(
        ApiDioClient.wooDio(),
        baseUrl: WooNetwork.baseUrl,
      );

  /// 🛒 Get order from WooCommerce Store API
  /// Retrieves order details, items, totals, and addresses
  @override
  @GET('/wp-json/wc/store/{api_version}/order/{order_key}')
  Future<ListOrderResponseModel> getOrder({
    @Path('api_version') required String apiVersion,
    @Path('order_key') required String orderKey,
  });
}
