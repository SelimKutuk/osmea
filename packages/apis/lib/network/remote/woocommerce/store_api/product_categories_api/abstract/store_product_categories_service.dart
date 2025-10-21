import 'package:apis/network/remote/woocommerce/store_api/product_categories_api/freezed_model/response/list_product_categories_response_model.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_categories_api/freezed_model/response/retrieve_product_category_response_model.dart';

abstract class StoreProductCategoriesService {
  /// List all product categories
  Future<List<ListProductCategoriesResponseModel>> listProductCategories({
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
    int? parent,
    int? product,
    String? slug,
  });

  /// Retrieve a single product category by ID
  Future<RetrieveProductCategoryResponseModel> retrieveProductCategory({
    required String apiVersion,
    required int categoryId,
    String? context,
  });
}
