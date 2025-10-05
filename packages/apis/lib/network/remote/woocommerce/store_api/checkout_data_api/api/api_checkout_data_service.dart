import 'package:apis/apis.dart';
import 'package:apis/dio_config/dio_client/api_dio_client.dart';
import 'package:apis/network/remote/woocommerce/store_api/checkout_data_api/abstract/checkout_data_service.dart';
import 'package:apis/network/remote/woocommerce/store_api/checkout_data_api/freezed_model/request/update_checkout_data_request_model.dart';
import 'package:apis/network/remote/woocommerce/store_api/checkout_data_api/freezed_model/response/list_checkout_data_response_model.dart';
import 'package:apis/network/remote/woocommerce/store_api/checkout_data_api/freezed_model/response/update_checkout_data_response_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'api_checkout_data_service.g.dart';

/// 🌐 CheckoutDataServiceClient
/// Retrofit client for WooCommerce Store API Checkout Data.
/// Make sure WooNetwork.storeUrl is set before using! 🏬🔑
@RestApi()
@Injectable(as: CheckoutDataService)
abstract class CheckoutDataServiceClient implements CheckoutDataService {
  /// 🏭 Factory for dependency injection
  @factoryMethod
  factory CheckoutDataServiceClient(Dio dio) => _CheckoutDataServiceClient(
        ApiDioClient.wooDio(),
        baseUrl: WooNetwork.baseUrl,
      );

  /// 🛒 Get checkout data from WooCommerce Store API
  /// Retrieves order details, billing/shipping addresses, and payment information
  @override
  @GET('/wp-json/wc/store/{api_version}/checkout')
  Future<ListCheckoutDataResponseModel> getCheckoutData({
    @Path('api_version') required String apiVersion,
    String? orderKey,
  });

  /// 🛒 Update checkout data in WooCommerce Store API
  /// Updates payment method, additional fields, and order notes
  @override
  @POST('/wp-json/wc/store/{api_version}/checkout')
  Future<UpdateCheckoutDataResponseModel> updateCheckoutData({
    @Path('api_version') required String apiVersion,
    @Body() required UpdateCheckoutDataRequestModel requestData,
  });
}
