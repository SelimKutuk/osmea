import 'package:apis/network/remote/woocommerce/wishlist/abstract/woo_wishlist_service.dart';
import 'package:apis/network/remote/woocommerce/wishlist/freezed_model/request/add_wishlist_item_request.dart';
import 'package:api_explorer/services/api_request_handler.dart';
import 'package:get_it/get_it.dart';
import 'package:api_explorer/services/api_service_registry.dart';

///*******************************************************************
///*************** ➕ ADD WISHLIST ITEM HANDLER ********************
///*******************************************************************

class AddWishlistItemHandler implements ApiRequestHandler {
  @override
  Future<Map<String, dynamic>> handleRequest(
    String method,
    Map<String, String> params,
  ) async {
    if (method != 'POST') {
      return {
        "status": "error",
        "message": "Method $method not supported for Add Wishlist Item API",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }

    // Validate required parameters
    if (!params.containsKey('product_id') || params['product_id']!.isEmpty) {
      return {
        "status": "error",
        "message": "Product ID is required",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }

    if (!params.containsKey('group_id') || params['group_id']!.isEmpty) {
      return {
        "status": "error",
        "message": "Group ID is required",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }

    try {
      // Parse required parameters
      final productId = int.tryParse(params['product_id']!);
      if (productId == null) {
        return {
          "status": "error",
          "message": "Product ID must be a valid integer",
          "timestamp": DateTime.now().toIso8601String(),
        };
      }

      final groupId = int.tryParse(params['group_id']!);
      if (groupId == null) {
        return {
          "status": "error",
          "message": "Group ID must be a valid integer",
          "timestamp": DateTime.now().toIso8601String(),
        };
      }

      // Parse optional parameters
      final quantity = params['quantity'] != null
          ? int.tryParse(params['quantity']!)
          : null;
      final variationId = params['variation_id'] != null
          ? int.tryParse(params['variation_id']!)
          : null;

      // Parse metadata if provided
      Map<String, dynamic>? metadata;
      if (params.containsKey('metadata') && params['metadata']!.isNotEmpty) {
        try {
          // Simple key-value pairs parsing (key1:value1,key2:value2)
          final pairs = params['metadata']!.split(',');
          metadata = {};
          for (final pair in pairs) {
            final keyValue = pair.split(':');
            if (keyValue.length == 2) {
              metadata[keyValue[0].trim()] = keyValue[1].trim();
            }
          }
        } catch (e) {
          // Ignore metadata parsing errors
        }
      }

      // Create add item request
      final itemData = AddWishlistItemRequest(
        productId: productId,
        groupId: groupId,
        quantity: quantity,
        variationId: variationId,
        metadata: metadata,
      );

      final response = await GetIt.I<WooWishlistService>().addItemToWishlist(
        apiVersion: 'v1',
        request: itemData,
      );

      return {
        "status": "success",
        "item": response.toJson(),
        "params": params,
        "timestamp": DateTime.now().toIso8601String(),
      };
    } catch (e) {
      return {
        "status": "error",
        "message": "Failed to add item to wishlist: ${e.toString()}",
        "params": params,
        "timestamp": DateTime.now().toIso8601String(),
      };
    }
  }

  @override
  List<String> get supportedMethods => ['POST'];

  @override
  Map<String, List<ApiField>> get requiredFields => {
        'POST': [
          const ApiField(
            name: 'product_id',
            label: 'Product ID',
            hint: 'ID of the product to add to wishlist',
            isRequired: true,
            type: ApiFieldType.number,
          ),
          const ApiField(
            name: 'group_id',
            label: 'Group ID',
            hint: 'ID of the wishlist group to add the product to',
            isRequired: true,
            type: ApiFieldType.number,
          ),
          const ApiField(
            name: 'quantity',
            label: 'Quantity',
            hint: 'Quantity of the product (optional)',
            type: ApiFieldType.number,
          ),
          const ApiField(
            name: 'variation_id',
            label: 'Variation ID',
            hint: 'ID of the product variation (if applicable)',
            type: ApiFieldType.number,
          ),
          const ApiField(
            name: 'metadata',
            label: 'Metadata',
            hint: 'Additional metadata as key:value pairs (key1:value1,key2:value2)',
          ),
        ],
      };
}