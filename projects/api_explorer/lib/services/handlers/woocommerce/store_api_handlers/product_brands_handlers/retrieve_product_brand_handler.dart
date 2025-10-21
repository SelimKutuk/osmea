import 'package:api_explorer/services/api_request_handler.dart';
import 'package:api_explorer/services/api_service_registry.dart';
import 'package:get_it/get_it.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_brands_api/abstract/store_product_brands_service.dart';

class StoreRetrieveProductBrandHandler extends ApiRequestHandler {
  String get serviceName => 'Retrieve Product Brand';

  String get serviceDescription =>
      'Retrieve a specific product brand by ID from WooCommerce Store API';

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
          const ApiField(
              name: 'brand_id',
              label: 'Brand ID',
              hint: 'ID of the brand to retrieve',
              isRequired: true,
              type: ApiFieldType.number),
        ],
      };

  Map<String, List<ApiField>> get optionalFields => {
        'GET': [
          const ApiField(
              name: 'context', label: 'Context', hint: 'view or edit'),
        ],
      };

  String get documentation => '''
# Retrieve Product Brand

Retrieve a specific product brand by ID from WooCommerce Store API.

## Endpoint
- **Method**: GET
- **URL**: `/wp-json/wc/store/{api_version}/products/brands/{brand_id}`

## Required Parameters
- **api_version**: API version (e.g., v1)
- **brand_id**: ID of the brand to retrieve

## Optional Parameters
- **context**: Response context (view, edit)

## Response
Returns a single product brand with the following structure:
```json
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
```

## Example Usage
To retrieve brand with ID 5:
- api_version: v1
- brand_id: 5
- context: view (optional)
''';

  @override
  Future<Map<String, dynamic>> handleRequest(
      String method, Map<String, dynamic> params) async {
    try {
      if (method != 'GET') {
        throw Exception('Only GET method is supported');
      }

      final apiVersion = params['api_version']!;
      final brandId = int.parse(params['brand_id'].toString());

      final service = GetIt.I<StoreProductBrandsService>();

      final brand = await service.retrieveProductBrand(
        apiVersion: apiVersion,
        brandId: brandId,
        context: params['context'],
      );

      return {
        'success': true,
        'data': brand.toJson(),
        'method': 'GET',
        'endpoint': '/wp-json/wc/store/$apiVersion/products/brands/$brandId',
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
