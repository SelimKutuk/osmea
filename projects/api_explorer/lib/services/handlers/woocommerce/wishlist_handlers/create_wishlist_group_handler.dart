import 'package:apis/network/remote/woocommerce/wishlist/abstract/woo_wishlist_service.dart';
import 'package:apis/network/remote/woocommerce/wishlist/freezed_model/request/create_wishlist_group_request.dart';
import 'package:api_explorer/services/api_request_handler.dart';
import 'package:get_it/get_it.dart';
import 'package:api_explorer/services/api_service_registry.dart';

///*******************************************************************
///*************** ✨ CREATE WISHLIST GROUP HANDLER ****************
///*******************************************************************

class CreateWishlistGroupHandler implements ApiRequestHandler {
  @override
  Future<Map<String, dynamic>> handleRequest(
    String method,
    Map<String, String> params,
  ) async {
    if (method != 'POST') {
      return {
        "status": "error",
        "message": "Method $method not supported for Create Wishlist Group API",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }

    // Validate required parameter
    if (!params.containsKey('name') || params['name']!.isEmpty) {
      return {
        "status": "error",
        "message": "Group name is required",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }

    try {
      // Parse parameters
      final name = params['name']!;
      final description = params['description'];

      // Create wishlist group request
      final groupData = CreateWishlistGroupRequest(
        name: name,
        description: description,
      );

      final response = await GetIt.I<WooWishlistService>().createGroup(
        apiVersion: 'v1',
        request: groupData,
      );

      // Check if the response was successful
      if (response.success == true && response.data != null) {
        return {
          "status": "success",
          "message": response.message ?? "Wishlist group created successfully",
          "group": response.data!.toJson(),
          "params": params,
          "timestamp": DateTime.now().toIso8601String(),
        };
      } else {
        return {
          "status": "error",
          "message": response.message ?? "Failed to create wishlist group",
          "params": params,
          "timestamp": DateTime.now().toIso8601String(),
        };
      }
    } catch (e) {
      return {
        "status": "error",
        "message": "Failed to create wishlist group: ${e.toString()}",
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
            name: 'name',
            label: 'Group Name',
            hint: 'Name of the wishlist group',
            isRequired: true,
          ),
          const ApiField(
            name: 'description',
            label: 'Description',
            hint: 'Optional description for the group',
          ),
        ],
      };
}