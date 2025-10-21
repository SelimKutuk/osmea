import 'package:api_explorer/services/api_request_handler.dart';
import 'package:api_explorer/services/api_service_registry.dart';
import 'package:get_it/get_it.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_brands_api/abstract/store_product_brands_service.dart';

class StoreListProductBrandsHandler extends ApiRequestHandler {
  String get serviceName => 'List Product Brands';

  String get serviceDescription =>
      'List all product brands from WooCommerce Store API';

  String get serviceCategory => 'Store API';

  @override
  List<String> get supportedMethods => ['GET'];

  @override
  Map<String, List<ApiField>> get requiredFields => {
        'GET': [
          const ApiField(
              name: 'api_version',
              label: 'API Version',
              hint: 'e.g., v1',
              isRequired: true),
        ],
      };

  Map<String, List<ApiField>> get optionalFields => {
        'GET': [
          const ApiField(
              name: 'context', label: 'Context', hint: 'view or edit'),
          const ApiField(
              name: 'page',
              label: 'Page',
              hint: 'Page number',
              type: ApiFieldType.number),
          const ApiField(
              name: 'per_page',
              label: 'Per Page',
              hint: 'Items per page',
              type: ApiFieldType.number),
          const ApiField(name: 'search', label: 'Search', hint: 'Search term'),
          const ApiField(
              name: 'exclude',
              label: 'Exclude',
              hint: 'Comma-separated IDs to exclude'),
          const ApiField(
              name: 'include',
              label: 'Include',
              hint: 'Comma-separated IDs to include'),
          const ApiField(
              name: 'offset',
              label: 'Offset',
              hint: 'Offset for pagination',
              type: ApiFieldType.number),
          const ApiField(name: 'order', label: 'Order', hint: 'asc or desc'),
          const ApiField(
              name: 'orderby', label: 'Order By', hint: 'Field to order by'),
          const ApiField(
              name: 'hide_empty',
              label: 'Hide Empty',
              hint: 'Hide empty brands',
              type: ApiFieldType.boolean),
          const ApiField(
              name: 'product',
              label: 'Product ID',
              hint: 'Filter by product ID',
              type: ApiFieldType.number),
          const ApiField(name: 'slug', label: 'Slug', hint: 'Brand slug'),
        ],
      };

  String get documentation => '''
# List Product Brands

Retrieve all product brands from WooCommerce Store API.

## Endpoint
- **Method**: GET
- **URL**: `/wp-json/wc/store/{api_version}/products/brands`

## Required Parameters
- **api_version**: API version (e.g., v1)

## Optional Parameters
- **context**: Response context (view, edit)
- **page**: Page number for pagination
- **per_page**: Number of items per page
- **search**: Search term
- **exclude**: Comma-separated list of brand IDs to exclude
- **include**: Comma-separated list of brand IDs to include
- **offset**: Offset for pagination
- **order**: Sort order (asc, desc)
- **orderby**: Field to sort by
- **hide_empty**: Hide brands with no products
- **product**: Filter by product ID
- **slug**: Brand slug

## Response
Returns an array of product brands with the following structure:
```json
[
  {
    "id": 1,
    "name": "Brand Name",
    "slug": "brand-slug",
    "description": "Brand description",
    "parent": 0,
    "count": 10,
    "image": {
      "id": 1,
      "src": "image-url",
      "thumbnail": "thumbnail-url",
      "alt": "Alt text"
    },
    "review_count": 5,
    "permalink": "brand-permalink"
  }
]
```
''';

  @override
  Future<Map<String, dynamic>> handleRequest(
      String method, Map<String, dynamic> params) async {
    try {
      if (method != 'GET') {
        throw Exception('Only GET method is supported');
      }

      final apiVersion = params['api_version']!;

      final service = GetIt.I<StoreProductBrandsService>();

      final brands = await service.listProductBrands(
        apiVersion: apiVersion,
        context: params['context'],
        page: params['page'] != null
            ? int.parse(params['page'].toString())
            : null,
        perPage: params['per_page'] != null
            ? int.parse(params['per_page'].toString())
            : null,
        search: params['search'],
        exclude: params['exclude'] != null
            ? (params['exclude'] as String)
                .split(',')
                .map((e) => int.parse(e.trim()))
                .toList()
            : null,
        include: params['include'] != null
            ? (params['include'] as String)
                .split(',')
                .map((e) => int.parse(e.trim()))
                .toList()
            : null,
        offset: params['offset'] != null
            ? int.parse(params['offset'].toString())
            : null,
        order: params['order'],
        orderby: params['orderby'],
        hideEmpty:
            params['hide_empty'] == 'true' || params['hide_empty'] == true,
        product: params['product'] != null
            ? int.parse(params['product'].toString())
            : null,
        slug: params['slug'],
      );

      return {
        'success': true,
        'data': brands.map((brand) => brand.toJson()).toList(),
        'method': 'GET',
        'endpoint': '/wp-json/wc/store/$apiVersion/products/brands',
        'count': brands.length,
      };
    } catch (e) {
      return {
        'success': false,
        'error': e.toString(),
        'method': method,
        'params': params,
      };
    }
  }
}
