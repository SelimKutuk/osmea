import 'package:apis/apis.dart';
import 'package:apis/dio_config/dio_client/api_dio_client.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:injectable/injectable.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_brands_api/abstract/store_product_brands_service.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_brands_api/freezed_model/response/list_product_brands_response_model.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_brands_api/freezed_model/response/retrieve_product_brand_response_model.dart';

part 'api_store_product_brands_service.g.dart';

@RestApi()
@Injectable(as: StoreProductBrandsService)
abstract class StoreProductBrandsServiceClient
    implements StoreProductBrandsService {
  @factoryMethod
  factory StoreProductBrandsServiceClient(Dio dio) =>
      _StoreProductBrandsServiceClient(
        ApiDioClient.wooDio(),
        baseUrl: WooNetwork.baseUrl,
      );

  @override
  @GET('/wp-json/wc/store/{api_version}/products/brands')
  Future<List<ListProductBrandsResponseModel>> listProductBrands({
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
    @Query('product') int? product,
    @Query('slug') String? slug,
  });

  @override
  @GET('/wp-json/wc/store/{api_version}/products/brands/{brand_id}')
  Future<RetrieveProductBrandResponseModel> retrieveProductBrand({
    @Path('api_version') required String apiVersion,
    @Path('brand_id') required int brandId,
    @Query('context') String? context,
  });
}
