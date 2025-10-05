import 'package:apis/network/remote/woocommerce/store_api/product_attributes_api/freezed_model/response/list_product_attributes_response_model.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_attributes_api/freezed_model/response/retrieve_product_attribute_response_model.dart';

abstract class StoreProductAttributesService {
  Future<List<ListProductAttributesResponseModel>> listProductAttributes({
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
  });

  Future<RetrieveProductAttributeResponseModel> retrieveProductAttribute({
    required String apiVersion,
    required int attributeId,
    String? context,
  });
}
