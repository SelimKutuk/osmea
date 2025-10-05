import 'package:apis/apis.dart';
import 'package:apis/dio_config/dio_client/api_dio_client.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:injectable/injectable.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_attribute_terms/abstract/store_product_attribute_terms_service.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_attribute_terms/freezed_model/response/list_product_attribute_terms_response_model.dart';

part 'api_store_product_attribute_terms_service.g.dart';

@RestApi()
@Injectable(as: StoreProductAttributeTermsService)
abstract class StoreProductAttributeTermsServiceClient
    implements StoreProductAttributeTermsService {
  @factoryMethod
  factory StoreProductAttributeTermsServiceClient(Dio dio) =>
      _StoreProductAttributeTermsServiceClient(
        ApiDioClient.wooDio(),
        baseUrl: WooNetwork.baseUrl,
      );

  @override
  @GET(
      '/wp-json/wc/store/{api_version}/products/attributes/{attribute_id}/terms')
  Future<List<ListProductAttributeTermsResponseModel>>
      listProductAttributeTerms({
    @Path('api_version') required String apiVersion,
    @Path('attribute_id') required int attributeId,
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
  @GET(
      '/wp-json/wc/store/{api_version}/products/attributes/{attribute_id}/terms/{term_id}')
  Future<ListProductAttributeTermsResponseModel> retrieveProductAttributeTerm({
    @Path('api_version') required String apiVersion,
    @Path('attribute_id') required int attributeId,
    @Path('term_id') required int termId,
    @Query('context') String? context,
  });
}
