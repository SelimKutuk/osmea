import 'package:api_explorer/services/api_request_handler.dart';
import 'package:api_explorer/services/api_service_registry.dart';
import 'package:get_it/get_it.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_attributes_api/abstract/store_product_attributes_service.dart';

class StoreRetrieveProductAttributeHandler extends ApiRequestHandler {
  String get serviceName => 'Retrieve Product Attribute';

  String get serviceDescription =>
      'Retrieve a specific product attribute by ID from WooCommerce Store API';

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
              name: 'attribute_id',
              label: 'Attribute ID',
              hint: 'ID of the attribute to retrieve',
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
# Retrieve Product Attribute

Retrieve a specific product attribute by ID from WooCommerce Store API.

## Endpoint

- **Method**: GET
- **URL**: `/wp-json/wc/store/{api_version}/products/attributes/{attribute_id}`

## Parameters

- **api_version** (required): API version (e.g., v1)
- **attribute_id** (required): ID of the attribute to retrieve
- **context**: Response context (view, edit)

## Response

Returns a product attribute with the following structure:
```json
{
  "id": 1,
  "name": "Color",
  "taxonomy": "pa_color",
  "type": "select",
  "order": "menu_order",
  "has_archives": true,
  "count": 5
}
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
      final attributeId = params['attribute_id']!;

      final service = GetIt.I<StoreProductAttributesService>();

      // Retrieve specific attribute
      final attribute = await service.retrieveProductAttribute(
        apiVersion: apiVersion,
        attributeId: int.parse(attributeId.toString()),
        context: params['context'],
      );

      return {
        'success': true,
        'data': attribute.toJson(),
        'method': 'GET',
        'endpoint':
            '/wp-json/wc/store/$apiVersion/products/attributes/$attributeId',
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
