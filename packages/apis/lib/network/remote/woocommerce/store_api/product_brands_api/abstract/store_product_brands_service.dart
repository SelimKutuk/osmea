import 'package:apis/network/remote/woocommerce/store_api/product_brands_api/freezed_model/response/list_product_brands_response_model.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_brands_api/freezed_model/response/retrieve_product_brand_response_model.dart';

abstract class StoreProductBrandsService {
  Future<List<ListProductBrandsResponseModel>> listProductBrands({
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

  Future<RetrieveProductBrandResponseModel> retrieveProductBrand({
    required String apiVersion,
    required int brandId,
    String? context,
  });
}
