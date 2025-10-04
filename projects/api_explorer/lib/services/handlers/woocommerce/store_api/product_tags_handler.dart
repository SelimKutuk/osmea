import 'package:api_explorer/services/api_request_handler.dart';
import 'package:api_explorer/services/api_service_registry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_tags_api/abstract/store_product_tags_service.dart';

///*******************************************************************
///******************* 🏷️ PRODUCT TAGS HANDLER **********************
///*******************************************************************

class ProductTagsHandler implements ApiRequestHandler {
  @override
  Future<Map<String, dynamic>> handleRequest(
    String method,
    Map<String, String> params,
  ) async {
    if (method != 'GET') {
      return {
        "status": "error",
        "message": "Method $method not supported for Product Tags API",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }

    // Validate required parameters
    if (!params.containsKey('api_version') || params['api_version']!.isEmpty) {
      return {
        "status": "error",
        "message": "API version is required",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }

    try {
      final apiVersion = params['api_version']!;
      final context = params['context'];
      final page =
          params['page'] != null ? int.tryParse(params['page']!) : null;
      final perPage =
          params['per_page'] != null ? int.tryParse(params['per_page']!) : null;
      final search = params['search'];
      final exclude = params['exclude'] != null
          ? params['exclude']!
              .split(',')
              .map((e) => int.tryParse(e.trim()))
              .where((e) => e != null)
              .cast<int>()
              .toList()
          : null;
      final include = params['include'] != null
          ? params['include']!
              .split(',')
              .map((e) => int.tryParse(e.trim()))
              .where((e) => e != null)
              .cast<int>()
              .toList()
          : null;
      final offset =
          params['offset'] != null ? int.tryParse(params['offset']!) : null;
      final order = params['order'];
      final orderby = params['orderby'];
      final hideEmpty = params['hide_empty']?.toLowerCase() == 'true';
      final product =
          params['product'] != null ? int.tryParse(params['product']!) : null;
      final slug = params['slug'];
      final tagId =
          params['tag_id'] != null ? int.tryParse(params['tag_id']!) : null;

      debugPrint('🏷️ Starting product tags request...');
      debugPrint('📋 API Version: $apiVersion');
      debugPrint('🔍 Tag ID: $tagId');
      debugPrint('📄 Page: $page');
      debugPrint('📊 Per Page: $perPage');
      debugPrint('🔎 Search: $search');

      // Use StoreProductTagsService from the package
      final service = GetIt.I<StoreProductTagsService>();

      if (tagId != null) {
        // Retrieve single product tag
        debugPrint('🔍 Retrieving single product tag with ID: $tagId');
        final tag = await service.retrieveProductTag(
          apiVersion: apiVersion,
          tagId: tagId,
          context: context,
        );

        return {
          "status": "success",
          "message": "Product tag retrieved successfully",
          "data": {
            "tag": {
              "id": tag.id,
              "name": tag.name,
              "slug": tag.slug,
              "description": tag.description,
              "parent": tag.parent,
              "count": tag.count,
            },
            "api_info": {
              "endpoint":
                  "GET /wp-json/wc/store/$apiVersion/products/tags/$tagId",
              "method": "GET",
              "api_version": apiVersion,
              "timestamp": DateTime.now().toIso8601String(),
            }
          },
          "timestamp": DateTime.now().toIso8601String(),
        };
      } else {
        // List all product tags
        debugPrint('📋 Listing all product tags...');
        final tags = await service.listProductTags(
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
        );

        return {
          "status": "success",
          "message": "Product tags retrieved successfully",
          "data": {
            "tags": tags
                .map((tag) => {
                      "id": tag.id,
                      "name": tag.name,
                      "slug": tag.slug,
                      "description": tag.description,
                      "parent": tag.parent,
                      "count": tag.count,
                    })
                .toList(),
            "count": tags.length,
            "api_info": {
              "endpoint": "GET /wp-json/wc/store/$apiVersion/products/tags",
              "method": "GET",
              "api_version": apiVersion,
              "timestamp": DateTime.now().toIso8601String(),
            }
          },
          "timestamp": DateTime.now().toIso8601String(),
        };
      }
    } catch (e, stackTrace) {
      debugPrint('❌ Product tags request failed: $e');
      debugPrint('❌ Stack trace: $stackTrace');

      return {
        "status": "error",
        "message": "Product tags request failed: $e",
        "error_details": {
          "error": e.toString(),
          "stack_trace": stackTrace.toString(),
          "timestamp": DateTime.now().toIso8601String(),
        },
        "timestamp": DateTime.now().toIso8601String(),
      };
    }
  }

  Map<String, List<ApiField>> get requiredFields => {
        'GET': [
          const ApiField(
            name: 'api_version',
            label: 'API Version',
            hint: 'WooCommerce API version (e.g., v1, v2, v3)',
            isRequired: true,
          ),
        ],
      };

  Map<String, List<ApiField>> get optionalFields => {
        'GET': [
          const ApiField(
            name: 'tag_id',
            label: 'Tag ID',
            hint: 'Specific product tag ID to retrieve (leave empty for list)',
            isRequired: false,
          ),
          const ApiField(
            name: 'context',
            label: 'Context',
            hint: 'Context under which the request is made (view, edit, embed)',
            isRequired: false,
          ),
          const ApiField(
            name: 'page',
            label: 'Page',
            hint: 'Current page of the collection',
            isRequired: false,
          ),
          const ApiField(
            name: 'per_page',
            label: 'Per Page',
            hint: 'Maximum number of items to be returned in result set',
            isRequired: false,
          ),
          const ApiField(
            name: 'search',
            label: 'Search',
            hint: 'Limit results to those matching a string',
            isRequired: false,
          ),
          const ApiField(
            name: 'exclude',
            label: 'Exclude',
            hint: 'Ensure result set excludes specific IDs (comma-separated)',
            isRequired: false,
          ),
          const ApiField(
            name: 'include',
            label: 'Include',
            hint: 'Limit result set to specific IDs (comma-separated)',
            isRequired: false,
          ),
          const ApiField(
            name: 'offset',
            label: 'Offset',
            hint: 'Offset the result set by a specific number of items',
            isRequired: false,
          ),
          const ApiField(
            name: 'order',
            label: 'Order',
            hint: 'Order sort attribute ascending or descending (asc, desc)',
            isRequired: false,
          ),
          const ApiField(
            name: 'orderby',
            label: 'Order By',
            hint:
                'Sort collection by object attribute (id, include, slug, name, count)',
            isRequired: false,
          ),
          const ApiField(
            name: 'hide_empty',
            label: 'Hide Empty',
            hint:
                'Whether to hide resources not assigned to any products (true/false)',
            isRequired: false,
          ),
          const ApiField(
            name: 'product',
            label: 'Product',
            hint:
                'Limit result set to resources assigned to a specific product',
            isRequired: false,
          ),
          const ApiField(
            name: 'slug',
            label: 'Slug',
            hint: 'Limit result set to resources with a specific slug',
            isRequired: false,
          ),
        ],
      };

  String get serviceName => 'Product Tags (Store API)';

  String get serviceDescription =>
      'Manage WooCommerce product tags using Store API';

  String get serviceCategory => 'WooCommerce Store API';

  List<String> get supportedMethods => ['GET'];

  String get documentation => '''
# Product Tags (Store API)

## Overview
Manage WooCommerce product tags using the Store API endpoints.

## Endpoints

### List Product Tags
- **Method**: GET
- **Endpoint**: `/wp-json/wc/store/{api_version}/products/tags`
- **Description**: Retrieve a list of product tags

### Retrieve Product Tag
- **Method**: GET  
- **Endpoint**: `/wp-json/wc/store/{api_version}/products/tags/{tag_id}`
- **Description**: Retrieve a single product tag by ID

## Parameters

### Required
- `api_version`: WooCommerce API version (e.g., v1, v2, v3)

### Optional
- `tag_id`: Specific product tag ID to retrieve
- `context`: Context under which the request is made
- `page`: Current page of the collection
- `per_page`: Maximum number of items to return
- `search`: Limit results to those matching a string
- `exclude`: Ensure result set excludes specific IDs
- `include`: Limit result set to specific IDs
- `offset`: Offset the result set by a specific number of items
- `order`: Order sort attribute (asc, desc)
- `orderby`: Sort collection by object attribute
- `hide_empty`: Whether to hide resources not assigned to any products
- `product`: Limit result set to resources assigned to a specific product
- `slug`: Limit result set to resources with a specific slug

## Response Format
Returns product tag data including ID, name, slug, description, parent, and count.
''';
}
