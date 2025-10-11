import 'package:apis/network/remote/woocommerce/store_api/product_tags_api/freezed_model/response/list_product_tags_response_model.dart';

/// 🏷️ Abstract service for WooCommerce Store Product Tags API operations
abstract class StoreProductTagsService {
  /// 📋 List all product tags (Store API)
  Future<List<ListProductTagsResponseModel>> listProductTags({
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
    bool? hideEmpty,
    int? product,
    String? slug,
  });

  /// 🔍 Retrieve a single product tag (Store API)
  Future<ListProductTagsResponseModel> retrieveProductTag({
    required String apiVersion,
    required int tagId,
    String? context,
  });
}
