import 'package:apis/network/remote/woocommerce/wishlist/abstract/woo_wishlist_service.dart';
import 'package:api_explorer/services/api_request_handler.dart';
import 'package:get_it/get_it.dart';
import 'package:api_explorer/services/api_service_registry.dart';

///*******************************************************************
///*************** 📋 GET WISHLIST ITEMS HANDLER ******************
///*******************************************************************

class GetWishlistItemsHandler implements ApiRequestHandler {
  @override
  Future<Map<String, dynamic>> handleRequest(
    String method,
    Map<String, String> params,
  ) async {
    if (method != 'GET') {
      return {
        "status": "error",
        "message": "Method $method not supported for Get Wishlist Items API",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }

    try {
      // Parse query parameters
      final groupId =
          params['group_id'] != null ? int.tryParse(params['group_id']!) : null;
      final page =
          params['page'] != null ? int.tryParse(params['page']!) : null;
      final perPage =
          params['per_page'] != null ? int.tryParse(params['per_page']!) : null;

      final response = await GetIt.I<WooWishlistService>().getWishlistItems(
        apiVersion: 'v1',
        groupId: groupId,
        page: page,
        perPage: perPage,
      );

      return {
        "status": "success",
        "items": response.map((e) => e.toJson()).toList(),
        "total": response.length,
        "params": params,
        "timestamp": DateTime.now().toIso8601String(),
      };
    } catch (e) {
      return {
        "status": "error",
        "message": "Failed to fetch wishlist items: ${e.toString()}",
        "params": params,
        "timestamp": DateTime.now().toIso8601String(),
      };
    }
  }

  @override
  List<String> get supportedMethods => ['GET'];

  @override
  Map<String, List<ApiField>> get requiredFields => {
        'GET': [
          const ApiField(
            name: 'group_id',
            label: 'Group ID',
            hint: 'Filter items by specific group ID',
            type: ApiFieldType.number,
          ),
          const ApiField(
            name: 'page',
            label: 'Page',
            hint: 'Current page of the collection',
            type: ApiFieldType.number,
          ),
          const ApiField(
            name: 'per_page',
            label: 'Per Page',
            hint: 'Maximum number of items to be returned in result set',
            type: ApiFieldType.number,
          ),
        ],
      };
}