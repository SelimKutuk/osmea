import 'package:apis/network/remote/woocommerce/store_api/product_api/abstract/product_service.dart';
import 'package:api_explorer/services/api_request_handler.dart';
import 'package:api_explorer/services/api_service_registry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:apis/apis.dart'; // Import WooNetwork

///*******************************************************************
//******************* 🛍️ LIST ALL PRODUCTS HANDLER *****************
///*******************************************************************

class StoreListAllProductsHandler implements ApiRequestHandler {
  @override
  Future<Map<String, dynamic>> handleRequest(
    String method,
    Map<String, String> params,
  ) async {
    if (method != 'GET') {
      return {
        "status": "error",
        "message": "Method $method not supported for List All Products API",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }

    try {
      final apiVersion = params['api_version'] ?? WooNetwork.apiVersion;
      final page = int.tryParse(params['page'] ?? '1') ?? 1;
      final perPage = int.tryParse(params['per_page'] ?? '10') ?? 10;
      final search = params['search'];
      final orderBy = params['order_by'];
      final order = params['order'];
      final category = int.tryParse(params['category'] ?? '');
      final tag = int.tryParse(params['tag'] ?? '');
      final onSale = params['on_sale'] == 'true';
      final inStock = params['in_stock'] == 'true';
      final minPrice = params['min_price'];
      final maxPrice = params['max_price'];

      debugPrint('🔍 Starting list all products:');
      debugPrint('  - API Version: $apiVersion');
      debugPrint('  - Page: $page');
      debugPrint('  - Per Page: $perPage');
      debugPrint('  - Search: $search');
      debugPrint('  - Order By: $orderBy');
      debugPrint('  - Order: $order');
      debugPrint('  - Category: $category');
      debugPrint('  - Tag: $tag');
      debugPrint('  - On Sale: $onSale');
      debugPrint('  - In Stock: $inStock');
      debugPrint('  - Min Price: $minPrice');
      debugPrint('  - Max Price: $maxPrice');

      final productService = GetIt.I<ProductService>();

      final products = await productService.listAllProducts(
        apiVersion: apiVersion,
        page: page,
        perPage: perPage,
        search: search,
        orderBy: orderBy,
        order: order,
        category: category,
        tag: tag,
        onSale: onSale,
        minPrice: minPrice,
        maxPrice: maxPrice,
      );

      debugPrint('✅ Products listed successfully');
      debugPrint('   - Found ${products.length} products');

      double totalValue = 0.0;
      int onSaleCount = 0;
      int inStockCount = 0;

      for (final product in products) {
        if (product.prices?.price != null) {
          try {
            totalValue += double.parse(product.prices!.price!);
          } catch (e) {
            debugPrint(
                'Could not parse price for ${product.name}: ${product.prices!.price}');
          }
        }

        // Count on sale products
        if (product.onSale == true) onSaleCount++;

        // Count in stock products
        if (product.isInStock == true) inStockCount++;
      }

      return {
        "status": "success",
        "message": "Products retrieved successfully",
        "product_summary": {
          "total_products": products.length,
          "total_value_of_products": totalValue,
          "on_sale_products": onSaleCount,
          "in_stock_products": inStockCount,
          "currency_info":
              products.isNotEmpty && products.first.prices?.currencyCode != null
                  ? {
                      "currency_code": products.first.prices!.currencyCode,
                      "currency_symbol": products.first.prices!.currencySymbol,
                    }
                  : null,
        },
        "products": products.map((product) => product.toJson()).toList(),
        "params": params,
        "timestamp": DateTime.now().toIso8601String(),
      };
    } catch (e) {
      debugPrint("🚨 List All Products Error Details: $e");

      String errorMessage = "Failed to list products: ${e.toString()}";
      Map<String, dynamic> errorDetails = {};

      if (e.toString().contains('DioException') ||
          e.toString().contains('DioError')) {
        debugPrint("🔍 Network Error detected");

        if (e.toString().contains('400')) {
          errorDetails['status_code'] = 400;
          errorMessage = "Bad request. Please check your API configuration";
        } else if (e.toString().contains('401')) {
          errorDetails['status_code'] = 401;
          errorMessage = "Unauthorized. Please check your authentication";
        } else if (e.toString().contains('403')) {
          errorDetails['status_code'] = 403;
          errorMessage = "Access denied. Please check your permissions";
        } else if (e.toString().contains('404')) {
          errorDetails['status_code'] = 404;
          errorMessage =
              "Products endpoint not found. Please check API version";
        } else if (e.toString().contains('500')) {
          errorDetails['status_code'] = 500;
          errorMessage = "Server error occurred while fetching products";
        } else {
          errorMessage = "Network error occurred while fetching products";
        }

        errorDetails['type'] = 'network_error';
      } else if (e.toString().contains('product') ||
          e.toString().contains('Product')) {
        errorDetails['type'] = 'product_service_error';
        errorMessage = "Product service error while fetching products";
      } else if (e.toString().contains('service') ||
          e.toString().contains('Service')) {
        errorDetails['type'] = 'service_configuration_error';
        errorMessage = "Product service is not properly configured";
      } else {
        errorDetails['type'] = 'unknown_error';
      }

      return {
        "status": "error",
        "message": errorMessage,
        "error_details": errorDetails,
        "full_error": e.toString(),
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
            name: 'api_version',
            label: 'API Version',
            hint: 'WooCommerce Store API version (default: v1)',
            isRequired: false,
          ),
          const ApiField(
            name: 'page',
            label: 'Page Number',
            hint: 'Current page of the collection.',
            isRequired: false,
          ),
          const ApiField(
            name: 'per_page',
            label: 'Items Per Page',
            hint: 'Maximum number of items to be returned in result set.',
            isRequired: false,
          ),
          const ApiField(
            name: 'search',
            label: 'Search Keyword',
            hint: 'Limit results to those matching a string.',
            isRequired: false,
          ),
          const ApiField(
            name: 'order_by',
            label: 'Order By',
            hint: 'Sort collection by object attribute.',
            isRequired: false,
          ),
          const ApiField(
            name: 'order',
            label: 'Order Direction',
            hint: 'Order sort attribute ascending or descending.',
            isRequired: false,
          ),
          const ApiField(
            name: 'category',
            label: 'Category ID',
            hint: 'Limit results to products in a specific category ID.',
            isRequired: false,
          ),
          const ApiField(
            name: 'tag',
            label: 'Tag ID',
            hint: 'Limit results to products with a specific tag ID.',
            isRequired: false,
          ),
          const ApiField(
            name: 'on_sale',
            label: 'On Sale',
            hint: 'Limit results to products on sale.',
            isRequired: false,
          ),
          const ApiField(
            name: 'in_stock',
            label: 'In Stock',
            hint: 'Limit results to products in stock.',
            isRequired: false,
          ),
          const ApiField(
            name: 'min_price',
            label: 'Minimum Price',
            hint: 'Minimum product price.',
            isRequired: false,
          ),
          const ApiField(
            name: 'max_price',
            label: 'Maximum Price',
            hint: 'Maximum product price.',
            isRequired: false,
          ),
        ],
      };
}
