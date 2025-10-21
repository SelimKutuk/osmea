import 'package:apis/network/remote/woocommerce/store_api/product_collection_data_api/freezed_model/response/list_product_collection_data_response_model.dart';

abstract class StoreProductCollectionDataService {
  /// Get product collection data including price ranges, attribute counts, rating counts, and taxonomy counts
  ///
  /// [apiVersion] - API version (e.g., 'v1')
  /// [context] - Context under which the request is made (default: 'view')
  /// [page] - Current page of the collection (default: 1)
  /// [perPage] - Maximum number of items to be returned (default: 10, max: 100)
  /// [search] - Limit results to those matching a string
  /// [exclude] - Ensure result set excludes specific IDs
  /// [include] - Limit result set to specific IDs
  /// [offset] - Offset the result set by a specific number of items
  /// [order] - Order sort attribute ascending or descending (default: 'desc')
  /// [orderby] - Sort collection by object attribute (default: 'date')
  /// [hideEmpty] - Whether to hide resources not assigned to any products (default: false)
  /// [product] - Limit result set to resources assigned to a specific product
  /// [slug] - Limit result set to resources with a specific slug
  /// [attribute] - Limit result set to resources with a specific attribute
  /// [attributeTerm] - Limit result set to resources with a specific attribute term
  /// [featured] - Limit result set to featured products (default: false)
  /// [category] - Limit result set to products assigned a specific category ID
  /// [categoryOperator] - Operator to compare products (default: 'in')
  /// [tag] - Limit result set to products assigned a specific tag ID
  /// [tagOperator] - Operator to compare product tags (default: 'in')
  /// [onSale] - Limit result set to products on sale (default: false)
  /// [minPrice] - Limit result set to products based on a minimum price
  /// [maxPrice] - Limit result set to products based on a maximum price
  /// [stockStatus] - Limit result set to products with specified stock status
  /// [featuredImage] - Limit result set to products with featured image (default: false)
  /// [shippingClass] - Limit result set to products assigned a specific shipping class ID
  /// [shippingClassOperator] - Operator to compare products (default: 'in')
  /// [minRating] - Limit result set to products with a minimum rating
  /// [maxRating] - Limit result set to products with a maximum rating
  /// [reviewsOnly] - Limit result set to products with reviews only (default: false)
  /// [parent] - Limit result set to products with a specific parent ID
  /// [parentExclude] - Limit result set to products with a specific parent ID excluded
  /// [type] - Limit result set to products of a specific type
  /// [sku] - Limit result set to products with a specific SKU
  /// [featuredImageId] - Limit result set to products with a specific featured image ID
  /// [catalogVisibility] - Limit result set to products with a specific catalog visibility
  /// [manageStock] - Limit result set to products with a specific stock management setting
  /// [stockQuantity] - Limit result set to products with a specific stock quantity
  /// [backorders] - Limit result set to products with a specific backorders setting
  /// [soldIndividually] - Limit result set to products with a specific sold individually setting
  /// [weight] - Limit result set to products with a specific weight
  /// [dimensions] - Limit result set to products with a specific dimension
  /// [shippingRequired] - Limit result set to products with a specific shipping required setting
  /// [shippingTaxable] - Limit result set to products with a specific shipping taxable setting
  /// [shippingClassId] - Limit result set to products with a specific shipping class ID
  /// [reviewsAllowed] - Limit result set to products with a specific reviews allowed setting
  /// [averageRating] - Limit result set to products with a specific average rating
  /// [ratingCount] - Limit result set to products with a specific rating count
  /// [relatedIds] - Limit result set to products with a specific related IDs
  /// [upsellIds] - Limit result set to products with a specific upsell IDs
  /// [crossSellIds] - Limit result set to products with a specific cross-sell IDs
  /// [parentId] - Limit result set to products with a specific parent ID
  /// [purchaseNote] - Limit result set to products with a specific purchase note
  /// [categories] - Limit result set to products assigned a specific category
  /// [tags] - Limit result set to products assigned a specific tag
  /// [images] - Limit result set to products with a specific image
  /// [attributes] - Limit result set to products with a specific attribute
  /// [defaultAttributes] - Limit result set to products with a specific default attribute
  /// [variations] - Limit result set to products with a specific variation
  /// [groupedProducts] - Limit result set to products with a specific grouped product
  /// [menuOrder] - Limit result set to products with a specific menu order
  /// [metaData] - Limit result set to products with a specific meta data
  Future<ListProductCollectionDataResponseModel> getProductCollectionData({
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
    String? attribute,
    String? attributeTerm,
    bool? featured,
    int? category,
    String? categoryOperator,
    int? tag,
    String? tagOperator,
    bool? onSale,
    String? minPrice,
    String? maxPrice,
    String? stockStatus,
    bool? featuredImage,
    int? shippingClass,
    String? shippingClassOperator,
    int? minRating,
    int? maxRating,
    bool? reviewsOnly,
    int? parent,
    List<int>? parentExclude,
    String? type,
    String? sku,
    int? featuredImageId,
    String? catalogVisibility,
    bool? manageStock,
    int? stockQuantity,
    String? backorders,
    bool? soldIndividually,
    String? weight,
    String? dimensions,
    bool? shippingRequired,
    bool? shippingTaxable,
    int? shippingClassId,
    bool? reviewsAllowed,
    String? averageRating,
    int? ratingCount,
    List<int>? relatedIds,
    List<int>? upsellIds,
    List<int>? crossSellIds,
    int? parentId,
    String? purchaseNote,
    List<Map<String, dynamic>>? categories,
    List<Map<String, dynamic>>? tags,
    List<Map<String, dynamic>>? images,
    List<Map<String, dynamic>>? attributes,
    List<Map<String, dynamic>>? defaultAttributes,
    List<Map<String, dynamic>>? variations,
    List<int>? groupedProducts,
    int? menuOrder,
    List<Map<String, dynamic>>? metaData,
  });
}
