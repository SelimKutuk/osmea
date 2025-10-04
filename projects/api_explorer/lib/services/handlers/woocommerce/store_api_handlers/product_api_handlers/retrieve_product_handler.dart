import 'package:apis/network/remote/woocommerce/store_api/product_api/abstract/product_service.dart';
import 'package:api_explorer/services/api_request_handler.dart';
import 'package:api_explorer/services/api_service_registry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

///*******************************************************************
//******************* 🔍 RETRIEVE PRODUCT HANDLER ******************
///*******************************************************************

class StoreRetrieveProductHandler implements ApiRequestHandler {
  @override
  Future<Map<String, dynamic>> handleRequest(
    String method,
    Map<String, String> params,
  ) async {
    if (method != 'GET') {
      return {
        "status": "error",
        "message": "Method $method not supported for Retrieve Product API",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }

    try {
      // Extract parameters
      final apiVersion = params['api_version'] ?? 'v1';
      final productId = int.tryParse(params['product_id'] ?? '');

      if (productId == null) {
        return {
          "status": "error",
          "message": "Product ID is required and must be a valid integer",
          "timestamp": DateTime.now().toIso8601String(),
        };
      }

      debugPrint('🔍 Starting retrieve product:');
      debugPrint('  - API Version: $apiVersion');
      debugPrint('  - Product ID: $productId');

      // Get ProductService from DI
      final productService = GetIt.I<ProductService>();

      // Call the service
      final product = await productService.retrieveProduct(
        apiVersion: apiVersion,
        productId: productId,
      );

      debugPrint('✅ Product retrieved successfully');
      debugPrint('   - Product: ${product.name} (ID: ${product.id})');

      // Calculate summary statistics
      double? productValue;
      String? currencyCode;
      String? currencySymbol;

      if (product.prices?.price != null) {
        try {
          productValue = double.parse(product.prices!.price!);
        } catch (e) {
          debugPrint(
              'Could not parse price for ${product.name}: ${product.prices!.price}');
        }
      }

      if (product.prices?.currencyCode != null) {
        currencyCode = product.prices!.currencyCode;
      }
      if (product.prices?.currencySymbol != null) {
        currencySymbol = product.prices!.currencySymbol;
      }

      return {
        "status": "success",
        "message": "Product retrieved successfully",
        "product_summary": {
          "id": product.id,
          "name": product.name,
          "type": product.type,
          "sku": product.sku,
          "on_sale": product.onSale,
          "is_in_stock": product.isInStock,
          "is_purchasable": product.isPurchasable,
          "sold_individually": product.soldIndividually,
          "has_options": product.hasOptions,
          "product_value": productValue,
          "currency_info": currencyCode != null
              ? {
                  "currency_code": currencyCode,
                  "currency_symbol": currencySymbol,
                }
              : null,
        },
        "product": {
          "id": product.id,
          "name": product.name,
          "slug": product.slug,
          "parent": product.parent,
          "type": product.type,
          "variation": product.variation,
          "permalink": product.permalink,
          "sku": product.sku,
          "short_description": product.shortDescription,
          "description": product.description,
          "on_sale": product.onSale,
          "prices": product.prices != null
              ? {
                  "price": product.prices!.price,
                  "regular_price": product.prices!.regularPrice,
                  "sale_price": product.prices!.salePrice,
                  "price_range": product.prices!.priceRange,
                  "currency_code": product.prices!.currencyCode,
                  "currency_symbol": product.prices!.currencySymbol,
                  "currency_minor_unit": product.prices!.currencyMinorUnit,
                  "currency_decimal_separator":
                      product.prices!.currencyDecimalSeparator,
                  "currency_thousand_separator":
                      product.prices!.currencyThousandSeparator,
                  "currency_prefix": product.prices!.currencyPrefix,
                  "currency_suffix": product.prices!.currencySuffix,
                }
              : null,
          "price_html": product.priceHtml,
          "average_rating": product.averageRating,
          "review_count": product.reviewCount,
          "images": product.images,
          "categories": product.categories,
          "tags": product.tags,
          "brands": product.brands,
          "attributes": product.attributes,
          "variations": product.variations,
          "grouped_products": product.groupedProducts,
          "has_options": product.hasOptions,
          "is_purchasable": product.isPurchasable,
          "is_in_stock": product.isInStock,
          "is_on_backorder": product.isOnBackorder,
          "low_stock_remaining": product.lowStockRemaining,
          "stock_availability": product.stockAvailability != null
              ? {
                  "text": product.stockAvailability!.text,
                  "class": product.stockAvailability!.stockAvailabilityClass,
                }
              : null,
          "sold_individually": product.soldIndividually,
          "add_to_cart": product.addToCart != null
              ? {
                  "text": product.addToCart!.text,
                  "description": product.addToCart!.description,
                  "url": product.addToCart!.url,
                  "single_text": product.addToCart!.singleText,
                  "minimum": product.addToCart!.minimum,
                  "maximum": product.addToCart!.maximum,
                  "multiple_of": product.addToCart!.multipleOf,
                }
              : null,
          "extensions": product.extensions?.toJson(),
        },
        "params": params,
        "timestamp": DateTime.now().toIso8601String(),
      };
    } catch (e) {
      debugPrint("🚨 Retrieve Product Error Details: $e");

      String errorMessage = "Failed to retrieve product: ${e.toString()}";
      Map<String, dynamic> errorDetails = {};

      // Check if it's a network/HTTP related error
      if (e.toString().contains('DioException') ||
          e.toString().contains('DioError')) {
        debugPrint("🔍 Network Error detected");

        if (e.toString().contains('400')) {
          errorDetails['status_code'] = 400;
          errorMessage =
              "Bad request. Please check your API configuration and product ID";
        } else if (e.toString().contains('401')) {
          errorDetails['status_code'] = 401;
          errorMessage = "Unauthorized. Please check your authentication";
        } else if (e.toString().contains('403')) {
          errorDetails['status_code'] = 403;
          errorMessage = "Access denied. Please check your permissions";
        } else if (e.toString().contains('404')) {
          errorDetails['status_code'] = 404;
          errorMessage = "Product not found. Please check the product ID";
        } else if (e.toString().contains('500')) {
          errorDetails['status_code'] = 500;
          errorMessage = "Server error occurred while retrieving the product";
        } else {
          errorMessage = "Network error occurred while retrieving the product";
        }

        errorDetails['type'] = 'network_error';
      } else if (e.toString().contains('product') ||
          e.toString().contains('Product')) {
        errorDetails['type'] = 'product_error';
        errorMessage = "Product service error while retrieving the product";
      } else if (e.toString().contains('service') ||
          e.toString().contains('Service')) {
        errorDetails['type'] = 'service_error';
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
          ),
          const ApiField(
            name: 'product_id',
            label: 'Product ID',
            hint: 'The ID of the product to retrieve',
          ),
        ],
      };
}
