import 'package:apis/apis.dart';
import 'package:apis/network/remote/woocommerce/store_api/cart_api/abstract/cart_service.dart';
import 'package:api_explorer/services/api_request_handler.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:api_explorer/services/api_service_registry.dart';

///*******************************************************************
//******************* 🛒 GET CART HANDLER ***************************
///*******************************************************************

class GetCartHandler implements ApiRequestHandler {
  @override
  Future<Map<String, dynamic>> handleRequest(
    String method,
    Map<String, String> params,
  ) async {
    if (method != 'GET') {
      return {
        "status": "error",
        "message": "Method $method not supported for Get Cart API",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }
    try {
      final response = await GetIt.I<CartService>().getCart(
        apiVersion: WooNetwork.apiVersion,
      );

      // Extract cart token from response headers if available
      String? cartToken;
      String? cartId;

      // Try to get cart token from current storage
      try {
        debugPrint('🔍 Loading cart token from storage...');
        final storedToken = await WooCartTokenStorage.loadCartToken();
        cartToken = storedToken?.cartToken;
        cartId = storedToken?.cartId;

        if (cartToken != null) {
          debugPrint(
              '🛒 Cart token loaded from storage: ${cartToken.length > 20 ? cartToken.substring(0, 20) + "..." : cartToken}');
        } else {
          debugPrint('⚠️ No cart token found in storage');
        }
      } catch (e) {
        // If we can't load from storage, that's okay - we'll continue without it
        debugPrint('❌ Could not load cart token from storage: $e');
      }

      return {
        "status": "success",
        "cart": response.toJson(),
        "cart_token": cartToken,
        "cart_id": cartId,
        "params": params,
        "timestamp": DateTime.now().toIso8601String(),
      };
    } catch (e) {
      return {
        "status": "error",
        "message": "Failed to fetch cart: ${e.toString()}",
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
          // No additional parameters required for Store API Cart GET
          // The API version is handled automatically
        ],
      };
}
