import 'package:apis/network/remote/woocommerce/store_api/product_reviews_api/freezed_model/response/list_product_reviews_response_model.dart';

/// 📝 Abstract service for WooCommerce Store Product Reviews API operations
abstract class StoreProductReviewsService {
  /// 📋 List all product reviews (Store API)
  Future<List<ListProductReviewsResponseModel>> listProductReviews({
    required String apiVersion,
    String? context,
    int? page,
    int? perPage,
    String? search,
    List<int>? exclude,
    List<int>? include,
    int? offset,
    String? order,
    String? orderby,
    int? product,
    String? reviewer,
    String? reviewerEmail,
    int? rating,
    String? status,
  });

  /// 🔍 Retrieve a single product review (Store API)
  Future<ListProductReviewsResponseModel> retrieveProductReview({
    required String apiVersion,
    required int reviewId,
    String? context,
  });
}
