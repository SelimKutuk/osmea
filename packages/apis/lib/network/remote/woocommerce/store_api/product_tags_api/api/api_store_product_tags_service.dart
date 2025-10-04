import 'package:apis/apis.dart';
import 'package:apis/dio_config/dio_client/api_dio_client.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:injectable/injectable.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_tags_api/abstract/store_product_tags_service.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_tags_api/freezed_model/response/list_product_tags_response_model.dart';

part 'api_store_product_tags_service.g.dart';

@RestApi()
@Injectable(as: StoreProductTagsService)
abstract class StoreProductTagsServiceClient
    implements StoreProductTagsService {
  @factoryMethod
  factory StoreProductTagsServiceClient(Dio dio) =>
      _StoreProductTagsServiceClient(
        ApiDioClient.wooDio(),
        baseUrl: WooNetwork.baseUrl,
      );

  @override
  @GET('/wp-json/wc/store/{apiVersion}/products/tags')
  Future<List<ListProductTagsResponseModel>> listProductTags({
    @Path('apiVersion') required String apiVersion,
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
  @GET('/wp-json/wc/store/{apiVersion}/products/tags/{tagId}')
  Future<ListProductTagsResponseModel> retrieveProductTag({
    @Path('apiVersion') required String apiVersion,
    @Path('tagId') required int tagId,
    @Query('context') String? context,
  });
}
