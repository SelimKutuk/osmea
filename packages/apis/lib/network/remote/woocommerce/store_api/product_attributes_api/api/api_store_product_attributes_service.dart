import 'package:apis/apis.dart';
import 'package:apis/dio_config/dio_client/api_dio_client.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:injectable/injectable.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_attributes_api/abstract/store_product_attributes_service.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_attributes_api/freezed_model/response/list_product_attributes_response_model.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_attributes_api/freezed_model/response/retrieve_product_attribute_response_model.dart';

part 'api_store_product_attributes_service.g.dart';

@RestApi()
@Injectable(as: StoreProductAttributesService)
abstract class StoreProductAttributesServiceClient
    implements StoreProductAttributesService {
  @factoryMethod
  factory StoreProductAttributesServiceClient(Dio dio) =>
      _StoreProductAttributesServiceClient(
        ApiDioClient.wooDio(),
        baseUrl: WooNetwork.baseUrl,
      );

  @override
  @GET('/wp-json/wc/store/{api_version}/products/attributes')
  Future<List<ListProductAttributesResponseModel>> listProductAttributes({
    @Path('api_version') required String apiVersion,
    @Query('context') String? context,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('search') String? search,
    @Query('exclude') List<int>? exclude,
    @Query('include') List<int>? include,
    @Query('offset') int? offset,
    @Query('order') String? order,
    @Query('orderby') String? orderby,
    @Query('hide_empty') bool? hideEmpty,
  });

  @override
  @GET('/wp-json/wc/store/{api_version}/products/attributes/{attribute_id}')
  Future<RetrieveProductAttributeResponseModel> retrieveProductAttribute({
    @Path('api_version') required String apiVersion,
    @Path('attribute_id') required int attributeId,
    @Query('context') String? context,
  });
}
