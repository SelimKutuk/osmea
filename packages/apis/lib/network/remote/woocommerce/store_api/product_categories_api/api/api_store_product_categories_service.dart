import 'package:apis/apis.dart';
import 'package:apis/dio_config/dio_client/api_dio_client.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:injectable/injectable.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_categories_api/abstract/store_product_categories_service.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_categories_api/freezed_model/response/list_product_categories_response_model.dart';

part 'api_store_product_categories_service.g.dart';

@RestApi()
@Injectable(as: StoreProductCategoriesService)
abstract class StoreProductCategoriesServiceClient
    implements StoreProductCategoriesService {
  @factoryMethod
  factory StoreProductCategoriesServiceClient(Dio dio) =>
      _StoreProductCategoriesServiceClient(
        ApiDioClient.wooDio(),
        baseUrl: WooNetwork.baseUrl,
      );

  @override
  @GET('/wp-json/wc/store/{api_version}/products/categories')
  Future<List<ListProductCategoriesResponseModel>> listProductCategories({
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
    @Query('parent') int? parent,
    @Query('product') int? product,
    @Query('slug') String? slug,
  });

  @override
  @GET('/wp-json/wc/store/{api_version}/products/categories/{category_id}')
  Future<ListProductCategoriesResponseModel> retrieveProductCategory({
    @Path('api_version') required String apiVersion,
    @Path('category_id') required int categoryId,
    @Query('context') String? context,
  });
}
