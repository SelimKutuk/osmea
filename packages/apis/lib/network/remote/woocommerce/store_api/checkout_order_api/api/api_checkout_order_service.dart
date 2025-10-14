import 'package:apis/apis.dart';
import 'package:apis/dio_config/dio_client/api_dio_client.dart';
import 'package:apis/network/remote/woocommerce/store_api/checkout_order_api/abstract/checkout_order_service.dart';
import 'package:apis/network/remote/woocommerce/store_api/checkout_order_api/freezed_model/request/process_payment_and_order_request_model.dart';
import 'package:apis/network/remote/woocommerce/store_api/checkout_order_api/freezed_model/response/process_payment_and_order_response_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'api_checkout_order_service.g.dart';

/// 🌐 CheckoutOrderServiceClient
/// Retrofit client for WooCommerce Store API Checkout Order.
/// Make sure WooNetwork.storeUrl is set before using! 🏬🔑
@RestApi()
@Injectable(as: CheckoutOrderService)
abstract class CheckoutOrderServiceClient implements CheckoutOrderService {
  /// 🏭 Factory for dependency injection
  @factoryMethod
  factory CheckoutOrderServiceClient(Dio dio) => _CheckoutOrderServiceClient(
        ApiDioClient.wooDio(),
        baseUrl: WooNetwork.baseUrl,
      );

  /// 🛒 Process payment and order in WooCommerce Store API
  /// Processes payment and creates the final order
  @override
  @POST('/wp-json/wc/store/{api_version}/checkout/order')
  Future<ProcessPaymentAndOrderResponseModel> processPaymentAndOrder({
    @Path('api_version') required String apiVersion,
    @Body() required ProcessPaymentAndOrderRequestModel requestData,
  });
}
