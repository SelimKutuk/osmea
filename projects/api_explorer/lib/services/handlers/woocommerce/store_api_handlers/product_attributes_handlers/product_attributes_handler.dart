import 'package:api_explorer/services/api_request_handler.dart';
import 'package:api_explorer/services/api_service_registry.dart';
import 'package:get_it/get_it.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_attributes_api/abstract/store_product_attributes_service.dart';

class ProductAttributesHandler extends ApiRequestHandler {
  String get serviceName => 'Product Attributes API';

  String get serviceDescription =>
      'WooCommerce Store API for managing product attributes';

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
              hint: 'Hide empty attributes',
              type: ApiFieldType.boolean),
          const ApiField(
              name: 'attribute_id',
              label: 'Attribute ID',
              hint: 'Specific attribute ID for retrieval',
              type: ApiFieldType.number),
        ],
      };

  String get documentation => '''
# Product Attributes API

WooCommerce Store API for managing product attributes.

## Endpoints

### List Product Attributes
- **Method**: GET
- **Endpoint**: `/wp-json/wc/store/{api_version}/products/attributes`
- **Description**: Retrieve all product attributes

### Retrieve Product Attribute
- **Method**: GET  
- **Endpoint**: `/wp-json/wc/store/{api_version}/products/attributes/{attribute_id}`
- **Description**: Retrieve a specific product attribute

## Parameters

- **api_version** (required): API version (e.g., v1)
- **attribute_id** (optional): Attribute ID for specific retrieval
- **context**: Response context (view, edit)
- **page**: Page number for pagination
- **per_page**: Number of items per page
- **search**: Search term
- **exclude**: Comma-separated list of attribute IDs to exclude
- **include**: Comma-separated list of attribute IDs to include
- **offset**: Offset for pagination
- **order**: Sort order (asc, desc)
- **orderby**: Field to sort by
- **hide_empty**: Hide attributes with no products

## Response

Returns product attributes with the following structure:
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
      final attributeId = params['attribute_id'];

      final service = GetIt.I<StoreProductAttributesService>();

      if (attributeId != null) {
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
      } else {
        // List all attributes
        final attributes = await service.listProductAttributes(
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
        );

        return {
          'success': true,
          'data': attributes.map((attribute) => attribute.toJson()).toList(),
          'method': 'GET',
          'endpoint': '/wp-json/wc/store/$apiVersion/products/attributes',
          'count': attributes.length,
        };
      }
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
