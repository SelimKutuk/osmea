import 'package:api_explorer/services/api_request_handler.dart';
import 'package:api_explorer/services/api_service_registry.dart';
import 'package:get_it/get_it.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_attribute_terms/abstract/store_product_attribute_terms_service.dart';

class ProductAttributeTermsHandler extends ApiRequestHandler {
  String get serviceName => 'Product Attribute Terms API';

  String get serviceDescription =>
      'WooCommerce Store API for managing product attribute terms';

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
              hint: 'ID of the attribute',
              isRequired: true,
              type: ApiFieldType.number),
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
              hint: 'Hide empty terms',
              type: ApiFieldType.boolean),
          const ApiField(
              name: 'term_id',
              label: 'Term ID',
              hint: 'Specific term ID for retrieval',
              type: ApiFieldType.number),
        ],
      };

  String get documentation => '''
# Product Attribute Terms API

WooCommerce Store API for managing product attribute terms.

## Endpoints

### List Product Attribute Terms
- **Method**: GET
- **Endpoint**: `/wp-json/wc/store/{api_version}/products/attributes/{attribute_id}/terms`
- **Description**: Retrieve all terms for a specific product attribute

### Retrieve Product Attribute Term
- **Method**: GET  
- **Endpoint**: `/wp-json/wc/store/{api_version}/products/attributes/{attribute_id}/terms/{term_id}`
- **Description**: Retrieve a specific product attribute term

## Parameters

- **api_version** (required): API version (e.g., v1)
- **attribute_id** (required): ID of the attribute to get terms for
- **term_id** (optional): Term ID for specific retrieval
- **context**: Response context (view, edit)
- **page**: Page number for pagination
- **per_page**: Number of items per page
- **search**: Search term
- **exclude**: Comma-separated list of term IDs to exclude
- **include**: Comma-separated list of term IDs to include
- **offset**: Offset for pagination
- **order**: Sort order (asc, desc)
- **orderby**: Field to sort by
- **hide_empty**: Hide terms with no products

## Response

Returns product attribute terms with the following structure:
```json
{
  "id": 1,
  "name": "Red",
  "slug": "red",
  "description": "Red color variant",
  "parent": 0,
  "count": 15
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
      final attributeId = int.parse(params['attribute_id']!);
      final termId = params['term_id'];

      final service = GetIt.I<StoreProductAttributeTermsService>();

      if (termId != null) {
        // Retrieve specific term
        final term = await service.retrieveProductAttributeTerm(
          apiVersion: apiVersion,
          attributeId: attributeId,
          termId: int.parse(termId.toString()),
          context: params['context'],
        );

        return {
          'success': true,
          'data': term.toJson(),
          'method': 'GET',
          'endpoint':
              '/wp-json/wc/store/$apiVersion/products/attributes/$attributeId/terms/$termId',
        };
      } else {
        // List all terms for the attribute
        final terms = await service.listProductAttributeTerms(
          apiVersion: apiVersion,
          attributeId: attributeId,
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
          'data': terms.map((term) => term.toJson()).toList(),
          'method': 'GET',
          'endpoint':
              '/wp-json/wc/store/$apiVersion/products/attributes/$attributeId/terms',
          'count': terms.length,
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

