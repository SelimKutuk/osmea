import 'package:apis/network/remote/woocommerce/store_api/product_attribute_terms/freezed_model/response/list_product_attribute_terms_response_model.dart';

abstract class StoreProductAttributeTermsService {
  Future<List<ListProductAttributeTermsResponseModel>>
      listProductAttributeTerms({
    required String apiVersion,
    required int attributeId,
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
  });

  Future<ListProductAttributeTermsResponseModel> retrieveProductAttributeTerm({
    required String apiVersion,
    required int attributeId,
    required int termId,
    String? context,
  });
}

