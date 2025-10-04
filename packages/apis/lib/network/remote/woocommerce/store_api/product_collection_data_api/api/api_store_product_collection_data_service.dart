import 'package:apis/apis.dart';
import 'package:apis/dio_config/dio_client/api_dio_client.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:injectable/injectable.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_collection_data_api/abstract/store_product_collection_data_service.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_collection_data_api/freezed_model/response/list_product_collection_data_response_model.dart';

part 'api_store_product_collection_data_service.g.dart';

@RestApi()
@Injectable(as: StoreProductCollectionDataService)
abstract class StoreProductCollectionDataServiceClient
    implements StoreProductCollectionDataService {
  @factoryMethod
  factory StoreProductCollectionDataServiceClient(Dio dio) =>
      _StoreProductCollectionDataServiceClient(
        ApiDioClient.wooDio(),
        baseUrl: WooNetwork.baseUrl,
      );

  @override
  @GET('/wp-json/wc/store/{api_version}/products/collection-data')
  Future<ListProductCollectionDataResponseModel> getProductCollectionData({
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
    @Query('attribute') String? attribute,
    @Query('attribute_term') String? attributeTerm,
    @Query('featured') bool? featured,
    @Query('category') int? category,
    @Query('category_operator') String? categoryOperator,
    @Query('tag') int? tag,
    @Query('tag_operator') String? tagOperator,
    @Query('on_sale') bool? onSale,
    @Query('min_price') String? minPrice,
    @Query('max_price') String? maxPrice,
    @Query('stock_status') String? stockStatus,
    @Query('featured_image') bool? featuredImage,
    @Query('shipping_class') int? shippingClass,
    @Query('shipping_class_operator') String? shippingClassOperator,
    @Query('min_rating') int? minRating,
    @Query('max_rating') int? maxRating,
    @Query('reviews_only') bool? reviewsOnly,
    @Query('parent') int? parent,
    @Query('parent_exclude') List<int>? parentExclude,
    @Query('type') String? type,
    @Query('sku') String? sku,
    @Query('featured_image_id') int? featuredImageId,
    @Query('catalog_visibility') String? catalogVisibility,
    @Query('manage_stock') bool? manageStock,
    @Query('stock_quantity') int? stockQuantity,
    @Query('backorders') String? backorders,
    @Query('sold_individually') bool? soldIndividually,
    @Query('weight') String? weight,
    @Query('dimensions') String? dimensions,
    @Query('shipping_required') bool? shippingRequired,
    @Query('shipping_taxable') bool? shippingTaxable,
    @Query('shipping_class_id') int? shippingClassId,
    @Query('reviews_allowed') bool? reviewsAllowed,
    @Query('average_rating') String? averageRating,
    @Query('rating_count') int? ratingCount,
    @Query('related_ids') List<int>? relatedIds,
    @Query('upsell_ids') List<int>? upsellIds,
    @Query('cross_sell_ids') List<int>? crossSellIds,
    @Query('parent_id') int? parentId,
    @Query('purchase_note') String? purchaseNote,
    @Query('categories') List<Map<String, dynamic>>? categories,
    @Query('tags') List<Map<String, dynamic>>? tags,
    @Query('images') List<Map<String, dynamic>>? images,
    @Query('attributes') List<Map<String, dynamic>>? attributes,
    @Query('default_attributes') List<Map<String, dynamic>>? defaultAttributes,
    @Query('variations') List<Map<String, dynamic>>? variations,
    @Query('grouped_products') List<int>? groupedProducts,
    @Query('menu_order') int? menuOrder,
    @Query('meta_data') List<Map<String, dynamic>>? metaData,
  });
}
