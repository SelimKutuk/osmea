import 'package:api_explorer/services/api_request_handler.dart';
import 'package:api_explorer/services/api_service_registry.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_collection_data_api/abstract/store_product_collection_data_service.dart';
import 'package:get_it/get_it.dart';

/// Handler for WooCommerce Store API Product Collection Data operations
class ProductCollectionDataHandler extends ApiRequestHandler {
  String get serviceName => 'Product Collection Data API';

  String get serviceDescription =>
      'Get product collection data including price ranges, attribute counts, rating counts, and taxonomy counts';

  String get serviceCategory => 'WooCommerce Store API';

  List<String> get supportedMethods => ['GET'];

  Map<String, List<ApiField>> get requiredFields => {
        'GET': [
          const ApiField(
            name: 'api_version',
            label: 'API Version',
            hint: 'e.g., v1',
            isRequired: true,
          ),
        ],
      };

  Map<String, List<ApiField>> get optionalFields => {
        'GET': [
          const ApiField(
            name: 'context',
            label: 'Context',
            hint: 'Context under which the request is made (default: view)',
          ),
          const ApiField(
            name: 'page',
            label: 'Page',
            hint: 'Current page of the collection (default: 1)',
            type: ApiFieldType.number,
          ),
          const ApiField(
            name: 'per_page',
            label: 'Per Page',
            hint:
                'Maximum number of items to be returned (default: 10, max: 100)',
            type: ApiFieldType.number,
          ),
          const ApiField(
            name: 'search',
            label: 'Search',
            hint: 'Limit results to those matching a string',
          ),
          const ApiField(
            name: 'exclude',
            label: 'Exclude',
            hint: 'Ensure result set excludes specific IDs (comma-separated)',
          ),
          const ApiField(
            name: 'include',
            label: 'Include',
            hint: 'Limit result set to specific IDs (comma-separated)',
          ),
          const ApiField(
            name: 'offset',
            label: 'Offset',
            hint: 'Offset the result set by a specific number of items',
            type: ApiFieldType.number,
          ),
          const ApiField(
            name: 'order',
            label: 'Order',
            hint:
                'Order sort attribute ascending or descending (default: desc)',
          ),
          const ApiField(
            name: 'orderby',
            label: 'Order By',
            hint: 'Sort collection by object attribute (default: date)',
          ),
          const ApiField(
            name: 'hide_empty',
            label: 'Hide Empty',
            hint:
                'Whether to hide resources not assigned to any products (default: false)',
            type: ApiFieldType.boolean,
          ),
          const ApiField(
            name: 'product',
            label: 'Product ID',
            hint:
                'Limit result set to resources assigned to a specific product',
            type: ApiFieldType.number,
          ),
          const ApiField(
            name: 'slug',
            label: 'Slug',
            hint: 'Limit result set to resources with a specific slug',
          ),
          const ApiField(
            name: 'attribute',
            label: 'Attribute',
            hint: 'Limit result set to resources with a specific attribute',
          ),
          const ApiField(
            name: 'attribute_term',
            label: 'Attribute Term',
            hint:
                'Limit result set to resources with a specific attribute term',
          ),
          const ApiField(
            name: 'featured',
            label: 'Featured',
            hint: 'Limit result set to featured products (default: false)',
            type: ApiFieldType.boolean,
          ),
          const ApiField(
            name: 'category',
            label: 'Category ID',
            hint:
                'Limit result set to products assigned a specific category ID',
            type: ApiFieldType.number,
          ),
          const ApiField(
            name: 'category_operator',
            label: 'Category Operator',
            hint: 'Operator to compare products (default: in)',
          ),
          const ApiField(
            name: 'tag',
            label: 'Tag ID',
            hint: 'Limit result set to products assigned a specific tag ID',
            type: ApiFieldType.number,
          ),
          const ApiField(
            name: 'tag_operator',
            label: 'Tag Operator',
            hint: 'Operator to compare product tags (default: in)',
          ),
          const ApiField(
            name: 'on_sale',
            label: 'On Sale',
            hint: 'Limit result set to products on sale (default: false)',
            type: ApiFieldType.boolean,
          ),
          const ApiField(
            name: 'min_price',
            label: 'Min Price',
            hint: 'Limit result set to products based on a minimum price',
          ),
          const ApiField(
            name: 'max_price',
            label: 'Max Price',
            hint: 'Limit result set to products based on a maximum price',
          ),
          const ApiField(
            name: 'stock_status',
            label: 'Stock Status',
            hint: 'Limit result set to products with specified stock status',
          ),
          const ApiField(
            name: 'featured_image',
            label: 'Featured Image',
            hint:
                'Limit result set to products with featured image (default: false)',
            type: ApiFieldType.boolean,
          ),
          const ApiField(
            name: 'shipping_class',
            label: 'Shipping Class ID',
            hint:
                'Limit result set to products assigned a specific shipping class ID',
            type: ApiFieldType.number,
          ),
          const ApiField(
            name: 'shipping_class_operator',
            label: 'Shipping Class Operator',
            hint: 'Operator to compare products (default: in)',
          ),
          const ApiField(
            name: 'min_rating',
            label: 'Min Rating',
            hint: 'Limit result set to products with a minimum rating',
            type: ApiFieldType.number,
          ),
          const ApiField(
            name: 'max_rating',
            label: 'Max Rating',
            hint: 'Limit result set to products with a maximum rating',
            type: ApiFieldType.number,
          ),
          const ApiField(
            name: 'reviews_only',
            label: 'Reviews Only',
            hint:
                'Limit result set to products with reviews only (default: false)',
            type: ApiFieldType.boolean,
          ),
          const ApiField(
            name: 'parent',
            label: 'Parent ID',
            hint: 'Limit result set to products with a specific parent ID',
            type: ApiFieldType.number,
          ),
          const ApiField(
            name: 'parent_exclude',
            label: 'Parent Exclude',
            hint:
                'Limit result set to products with a specific parent ID excluded (comma-separated)',
          ),
          const ApiField(
            name: 'type',
            label: 'Type',
            hint: 'Limit result set to products of a specific type',
          ),
          const ApiField(
            name: 'sku',
            label: 'SKU',
            hint: 'Limit result set to products with a specific SKU',
          ),
          const ApiField(
            name: 'featured_image_id',
            label: 'Featured Image ID',
            hint:
                'Limit result set to products with a specific featured image ID',
            type: ApiFieldType.number,
          ),
          const ApiField(
            name: 'catalog_visibility',
            label: 'Catalog Visibility',
            hint:
                'Limit result set to products with a specific catalog visibility',
          ),
          const ApiField(
            name: 'manage_stock',
            label: 'Manage Stock',
            hint:
                'Limit result set to products with a specific stock management setting',
            type: ApiFieldType.boolean,
          ),
          const ApiField(
            name: 'stock_quantity',
            label: 'Stock Quantity',
            hint: 'Limit result set to products with a specific stock quantity',
            type: ApiFieldType.number,
          ),
          const ApiField(
            name: 'backorders',
            label: 'Backorders',
            hint:
                'Limit result set to products with a specific backorders setting',
          ),
          const ApiField(
            name: 'sold_individually',
            label: 'Sold Individually',
            hint:
                'Limit result set to products with a specific sold individually setting',
            type: ApiFieldType.boolean,
          ),
          const ApiField(
            name: 'weight',
            label: 'Weight',
            hint: 'Limit result set to products with a specific weight',
          ),
          const ApiField(
            name: 'dimensions',
            label: 'Dimensions',
            hint: 'Limit result set to products with a specific dimension',
          ),
          const ApiField(
            name: 'shipping_required',
            label: 'Shipping Required',
            hint:
                'Limit result set to products with a specific shipping required setting',
            type: ApiFieldType.boolean,
          ),
          const ApiField(
            name: 'shipping_taxable',
            label: 'Shipping Taxable',
            hint:
                'Limit result set to products with a specific shipping taxable setting',
            type: ApiFieldType.boolean,
          ),
          const ApiField(
            name: 'shipping_class_id',
            label: 'Shipping Class ID',
            hint:
                'Limit result set to products with a specific shipping class ID',
            type: ApiFieldType.number,
          ),
          const ApiField(
            name: 'reviews_allowed',
            label: 'Reviews Allowed',
            hint:
                'Limit result set to products with a specific reviews allowed setting',
            type: ApiFieldType.boolean,
          ),
          const ApiField(
            name: 'average_rating',
            label: 'Average Rating',
            hint: 'Limit result set to products with a specific average rating',
          ),
          const ApiField(
            name: 'rating_count',
            label: 'Rating Count',
            hint: 'Limit result set to products with a specific rating count',
            type: ApiFieldType.number,
          ),
          const ApiField(
            name: 'related_ids',
            label: 'Related IDs',
            hint:
                'Limit result set to products with a specific related IDs (comma-separated)',
          ),
          const ApiField(
            name: 'upsell_ids',
            label: 'Upsell IDs',
            hint:
                'Limit result set to products with a specific upsell IDs (comma-separated)',
          ),
          const ApiField(
            name: 'cross_sell_ids',
            label: 'Cross Sell IDs',
            hint:
                'Limit result set to products with a specific cross-sell IDs (comma-separated)',
          ),
          const ApiField(
            name: 'parent_id',
            label: 'Parent ID',
            hint: 'Limit result set to products with a specific parent ID',
            type: ApiFieldType.number,
          ),
          const ApiField(
            name: 'purchase_note',
            label: 'Purchase Note',
            hint: 'Limit result set to products with a specific purchase note',
          ),
          const ApiField(
            name: 'menu_order',
            label: 'Menu Order',
            hint: 'Limit result set to products with a specific menu order',
            type: ApiFieldType.number,
          ),
        ],
      };

  Future<Map<String, dynamic>> handleRequest(
    String method,
    Map<String, String> params,
  ) async {
    switch (method.toUpperCase()) {
      case 'GET':
        return await _getProductCollectionData(params);
      default:
        throw ArgumentError('Unsupported HTTP method: $method');
    }
  }

  Future<Map<String, dynamic>> _getProductCollectionData(
    Map<String, String> params,
  ) async {
    try {
      final apiVersion = params['api_version']!;

      // Get the service from GetIt
      final service = GetIt.I<StoreProductCollectionDataService>();

      // Parse parameters
      final context = params['context'];
      final page =
          params['page'] != null ? int.tryParse(params['page']!) : null;
      final perPage =
          params['per_page'] != null ? int.tryParse(params['per_page']!) : null;
      final search = params['search'];
      final exclude = params['exclude']
          ?.split(',')
          .map(int.tryParse)
          .where((e) => e != null)
          .cast<int>()
          .toList();
      final include = params['include']
          ?.split(',')
          .map(int.tryParse)
          .where((e) => e != null)
          .cast<int>()
          .toList();
      final offset =
          params['offset'] != null ? int.tryParse(params['offset']!) : null;
      final order = params['order'];
      final orderby = params['orderby'];
      final hideEmpty = params['hide_empty']?.toLowerCase() == 'true';
      final product =
          params['product'] != null ? int.tryParse(params['product']!) : null;
      final slug = params['slug'];
      final attribute = params['attribute'];
      final attributeTerm = params['attribute_term'];
      final featured = params['featured']?.toLowerCase() == 'true';
      final category =
          params['category'] != null ? int.tryParse(params['category']!) : null;
      final categoryOperator = params['category_operator'];
      final tag = params['tag'] != null ? int.tryParse(params['tag']!) : null;
      final tagOperator = params['tag_operator'];
      final onSale = params['on_sale']?.toLowerCase() == 'true';
      final minPrice = params['min_price'];
      final maxPrice = params['max_price'];
      final stockStatus = params['stock_status'];
      final featuredImage = params['featured_image']?.toLowerCase() == 'true';
      final shippingClass = params['shipping_class'] != null
          ? int.tryParse(params['shipping_class']!)
          : null;
      final shippingClassOperator = params['shipping_class_operator'];
      final minRating = params['min_rating'] != null
          ? int.tryParse(params['min_rating']!)
          : null;
      final maxRating = params['max_rating'] != null
          ? int.tryParse(params['max_rating']!)
          : null;
      final reviewsOnly = params['reviews_only']?.toLowerCase() == 'true';
      final parent =
          params['parent'] != null ? int.tryParse(params['parent']!) : null;
      final parentExclude = params['parent_exclude']
          ?.split(',')
          .map(int.tryParse)
          .where((e) => e != null)
          .cast<int>()
          .toList();
      final type = params['type'];
      final sku = params['sku'];
      final featuredImageId = params['featured_image_id'] != null
          ? int.tryParse(params['featured_image_id']!)
          : null;
      final catalogVisibility = params['catalog_visibility'];
      final manageStock = params['manage_stock']?.toLowerCase() == 'true';
      final stockQuantity = params['stock_quantity'] != null
          ? int.tryParse(params['stock_quantity']!)
          : null;
      final backorders = params['backorders'];
      final soldIndividually =
          params['sold_individually']?.toLowerCase() == 'true';
      final weight = params['weight'];
      final dimensions = params['dimensions'];
      final shippingRequired =
          params['shipping_required']?.toLowerCase() == 'true';
      final shippingTaxable =
          params['shipping_taxable']?.toLowerCase() == 'true';
      final shippingClassId = params['shipping_class_id'] != null
          ? int.tryParse(params['shipping_class_id']!)
          : null;
      final reviewsAllowed = params['reviews_allowed']?.toLowerCase() == 'true';
      final averageRating = params['average_rating'];
      final ratingCount = params['rating_count'] != null
          ? int.tryParse(params['rating_count']!)
          : null;
      final relatedIds = params['related_ids']
          ?.split(',')
          .map(int.tryParse)
          .where((e) => e != null)
          .cast<int>()
          .toList();
      final upsellIds = params['upsell_ids']
          ?.split(',')
          .map(int.tryParse)
          .where((e) => e != null)
          .cast<int>()
          .toList();
      final crossSellIds = params['cross_sell_ids']
          ?.split(',')
          .map(int.tryParse)
          .where((e) => e != null)
          .cast<int>()
          .toList();
      final parentId = params['parent_id'] != null
          ? int.tryParse(params['parent_id']!)
          : null;
      final purchaseNote = params['purchase_note'];
      final menuOrder = params['menu_order'] != null
          ? int.tryParse(params['menu_order']!)
          : null;

      // Call the service
      final result = await service.getProductCollectionData(
        apiVersion: apiVersion,
        context: context,
        page: page,
        perPage: perPage,
        search: search,
        exclude: exclude,
        include: include,
        offset: offset,
        order: order,
        orderby: orderby,
        hideEmpty: hideEmpty,
        product: product,
        slug: slug,
        attribute: attribute,
        attributeTerm: attributeTerm,
        featured: featured,
        category: category,
        categoryOperator: categoryOperator,
        tag: tag,
        tagOperator: tagOperator,
        onSale: onSale,
        minPrice: minPrice,
        maxPrice: maxPrice,
        stockStatus: stockStatus,
        featuredImage: featuredImage,
        shippingClass: shippingClass,
        shippingClassOperator: shippingClassOperator,
        minRating: minRating,
        maxRating: maxRating,
        reviewsOnly: reviewsOnly,
        parent: parent,
        parentExclude: parentExclude,
        type: type,
        sku: sku,
        featuredImageId: featuredImageId,
        catalogVisibility: catalogVisibility,
        manageStock: manageStock,
        stockQuantity: stockQuantity,
        backorders: backorders,
        soldIndividually: soldIndividually,
        weight: weight,
        dimensions: dimensions,
        shippingRequired: shippingRequired,
        shippingTaxable: shippingTaxable,
        shippingClassId: shippingClassId,
        reviewsAllowed: reviewsAllowed,
        averageRating: averageRating,
        ratingCount: ratingCount,
        relatedIds: relatedIds,
        upsellIds: upsellIds,
        crossSellIds: crossSellIds,
        parentId: parentId,
        purchaseNote: purchaseNote,
        menuOrder: menuOrder,
      );

      return {
        'success': true,
        'data': result.toJson(),
        'message': 'Product collection data retrieved successfully',
      };
    } catch (e) {
      return {
        'success': false,
        'error': e.toString(),
        'message': 'Failed to retrieve product collection data',
      };
    }
  }

  String get documentation => '''
# Product Collection Data API

## Overview
The Product Collection Data API provides aggregated data about product collections including price ranges, attribute counts, rating counts, and taxonomy counts.

## Endpoint
`GET /wp-json/wc/store/{api_version}/products/collection-data`

## Parameters

### Required Parameters
- **api_version** (string): API version (e.g., 'v1')

### Optional Parameters
- **context** (string): Context under which the request is made (default: 'view')
- **page** (integer): Current page of the collection (default: 1)
- **per_page** (integer): Maximum number of items to be returned (default: 10, max: 100)
- **search** (string): Limit results to those matching a string
- **exclude** (string): Ensure result set excludes specific IDs (comma-separated)
- **include** (string): Limit result set to specific IDs (comma-separated)
- **offset** (integer): Offset the result set by a specific number of items
- **order** (string): Order sort attribute ascending or descending (default: 'desc')
- **orderby** (string): Sort collection by object attribute (default: 'date')
- **hide_empty** (boolean): Whether to hide resources not assigned to any products (default: false)
- **product** (integer): Limit result set to resources assigned to a specific product
- **slug** (string): Limit result set to resources with a specific slug
- **attribute** (string): Limit result set to resources with a specific attribute
- **attribute_term** (string): Limit result set to resources with a specific attribute term
- **featured** (boolean): Limit result set to featured products (default: false)
- **category** (integer): Limit result set to products assigned a specific category ID
- **category_operator** (string): Operator to compare products (default: 'in')
- **tag** (integer): Limit result set to products assigned a specific tag ID
- **tag_operator** (string): Operator to compare product tags (default: 'in')
- **on_sale** (boolean): Limit result set to products on sale (default: false)
- **min_price** (string): Limit result set to products based on a minimum price
- **max_price** (string): Limit result set to products based on a maximum price
- **stock_status** (string): Limit result set to products with specified stock status
- **featured_image** (boolean): Limit result set to products with featured image (default: false)
- **shipping_class** (integer): Limit result set to products assigned a specific shipping class ID
- **shipping_class_operator** (string): Operator to compare products (default: 'in')
- **min_rating** (integer): Limit result set to products with a minimum rating
- **max_rating** (integer): Limit result set to products with a maximum rating
- **reviews_only** (boolean): Limit result set to products with reviews only (default: false)
- **parent** (integer): Limit result set to products with a specific parent ID
- **parent_exclude** (string): Limit result set to products with a specific parent ID excluded (comma-separated)
- **type** (string): Limit result set to products of a specific type
- **sku** (string): Limit result set to products with a specific SKU
- **featured_image_id** (integer): Limit result set to products with a specific featured image ID
- **catalog_visibility** (string): Limit result set to products with a specific catalog visibility
- **manage_stock** (boolean): Limit result set to products with a specific stock management setting
- **stock_quantity** (integer): Limit result set to products with a specific stock quantity
- **backorders** (string): Limit result set to products with a specific backorders setting
- **sold_individually** (boolean): Limit result set to products with a specific sold individually setting
- **weight** (string): Limit result set to products with a specific weight
- **dimensions** (string): Limit result set to products with a specific dimension
- **shipping_required** (boolean): Limit result set to products with a specific shipping required setting
- **shipping_taxable** (boolean): Limit result set to products with a specific shipping taxable setting
- **shipping_class_id** (integer): Limit result set to products with a specific shipping class ID
- **reviews_allowed** (boolean): Limit result set to products with a specific reviews allowed setting
- **average_rating** (string): Limit result set to products with a specific average rating
- **rating_count** (integer): Limit result set to products with a specific rating count
- **related_ids** (string): Limit result set to products with a specific related IDs (comma-separated)
- **upsell_ids** (string): Limit result set to products with a specific upsell IDs (comma-separated)
- **cross_sell_ids** (string): Limit result set to products with a specific cross-sell IDs (comma-separated)
- **parent_id** (integer): Limit result set to products with a specific parent ID
- **purchase_note** (string): Limit result set to products with a specific purchase note
- **menu_order** (integer): Limit result set to products with a specific menu order

## Response

The API returns a JSON object containing:

- **price_range**: Price range information including min/max prices and currency details
- **attribute_counts**: List of attribute counts
- **rating_counts**: List of rating counts
- **taxonomy_counts**: List of taxonomy counts

## Use Cases

This API is particularly useful for:
- Building product filters and faceted search
- Creating product collection pages
- Implementing price range sliders
- Displaying attribute-based navigation
- Generating product statistics and analytics

## Example Response

```json
{
  "price_range": {
    "currency_minor_unit": 2,
    "min_price": "10.00",
    "max_price": "100.00",
    "currency_code": "USD",
    "currency_symbol": "\$"
  },
  "attribute_counts": [
    {
      "term": 1,
      "count": 5
    }
  ],
  "rating_counts": [
    {
      "rating": 5,
      "count": 10
    }
  ],
  "taxonomy_counts": [
    {
      "term": 2,
      "count": 8
    }
  ]
}
```
''';
}
