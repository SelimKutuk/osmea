import 'package:apis/apis.dart';
import 'package:apis/dio_config/dio_client/api_dio_client.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:injectable/injectable.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_reviews_api/abstract/store_product_reviews_service.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_reviews_api/freezed_model/response/list_product_reviews_response_model.dart';

part 'api_store_product_reviews_service.g.dart';

@RestApi()
@Injectable(as: StoreProductReviewsService)
abstract class StoreProductReviewsServiceClient
    implements StoreProductReviewsService {
  @factoryMethod
  factory StoreProductReviewsServiceClient(Dio dio) =>
      _StoreProductReviewsServiceClient(
        ApiDioClient.wooDio(),
        baseUrl: WooNetwork.baseUrl,
      );

  @override
  @GET('/wp-json/wc/store/{api_version}/products/reviews')
  Future<List<ListProductReviewsResponseModel>> listProductReviews({
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
    @Query('product') int? product,
    @Query('reviewer') String? reviewer,
    @Query('reviewer_email') String? reviewerEmail,
    @Query('rating') int? rating,
    @Query('status') String? status,
  });

  @override
  @GET('/wp-json/wc/store/{api_version}/products/reviews/{review_id}')
  Future<ListProductReviewsResponseModel> retrieveProductReview({
    @Path('api_version') required String apiVersion,
    @Path('review_id') required int reviewId,
    @Query('context') String? context,
  });
}
