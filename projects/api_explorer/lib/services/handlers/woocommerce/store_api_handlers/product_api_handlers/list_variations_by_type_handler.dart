import 'package:apis/network/remote/woocommerce/store_api/product_api/abstract/product_service.dart';
import 'package:api_explorer/services/api_request_handler.dart';
import 'package:api_explorer/services/api_service_registry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

///*******************************************************************
//******************* 🎨 LIST VARIATIONS BY TYPE HANDLER ***********
///*******************************************************************

class StoreListVariationsByTypeHandler implements ApiRequestHandler {
  @override
  Future<Map<String, dynamic>> handleRequest(
    String method,
    Map<String, String> params,
  ) async {
    if (method != 'GET') {
      return {
        "status": "error",
        "message":
            "Method $method not supported for List Variations By Type API",
        "timestamp": DateTime.now().toIso8601String(),
      };
    }

    try {
      // Extract parameters
      final apiVersion = params['api_version'] ?? 'v1';
      final type = params['type'];

      if (type == null || type.isEmpty) {
        return {
          "status": "error",
          "message":
              "Product type is required (simple, variable, grouped, external).",
          "timestamp": DateTime.now().toIso8601String(),
        };
      }

      debugPrint('🎨 Starting list variations by type:');
      debugPrint('  - API Version: $apiVersion');
      debugPrint('  - Product Type: $type');

      // Get ProductService from DI
      final productService = GetIt.I<ProductService>();

      // Call the service
      final variations = await productService.listAllVariationsByType(
        apiVersion: apiVersion,
        type: type,
      );

      debugPrint('✅ Product variations listed successfully by type');
      debugPrint('   - Found ${variations.length} variations');

      // Calculate summary statistics
      double totalValue = 0.0;
      int onSaleCount = 0;
      int inStockCount = 0;
      Map<String, int> categoryCounts = {};
      Map<String, int> typeCounts = {};

      for (final variation in variations) {
        // Calculate total value
        if (variation.prices?.price != null) {
          try {
            totalValue += double.parse(variation.prices!.price!);
          } catch (e) {
            debugPrint(
                'Could not parse price for ${variation.name}: ${variation.prices!.price}');
          }
        }

        // Count on sale variations
        if (variation.onSale == true) onSaleCount++;

        // Count in stock variations
        if (variation.isInStock == true) inStockCount++;

        // Count by category
        if (variation.categories != null && variation.categories!.isNotEmpty) {
          for (final category in variation.categories!) {
            final categoryName = category.name?.toString() ?? 'Unknown';
            categoryCounts[categoryName] =
                (categoryCounts[categoryName] ?? 0) + 1;
          }
        }

        // Count by type
        if (variation.type != null) {
          typeCounts[variation.type!] = (typeCounts[variation.type!] ?? 0) + 1;
        }
      }

      return {
        "status": "success",
        "message": "Product variations retrieved successfully by type",
        "variations_summary": {
          "total_variations": variations.length,
          "filtered_by_type": type,
          "total_value_of_variations": totalValue,
          "on_sale_variations": onSaleCount,
          "in_stock_variations": inStockCount,
          "category_distribution": categoryCounts,
          "type_distribution": typeCounts,
          "currency_info": variations.isNotEmpty &&
                  variations.first.prices?.currencyCode != null
              ? {
                  "currency_code": variations.first.prices!.currencyCode,
                  "currency_symbol": variations.first.prices!.currencySymbol,
                }
              : null,
        },
        "variations": variations
            .map((variation) => {
                  "id": variation.id,
                  "name": variation.name,
                  "slug": variation.slug,
                  "parent": variation.parent,
                  "type": variation.type,
                  "variation": variation.variation,
                  "permalink": variation.permalink,
                  "sku": variation.sku,
                  "short_description": variation.shortDescription,
                  "description": variation.description,
                  "on_sale": variation.onSale,
                  "prices": variation.prices != null
                      ? {
                          "price": variation.prices!.price,
                          "regular_price": variation.prices!.regularPrice,
                          "sale_price": variation.prices!.salePrice,
                          "price_range": variation.prices!.priceRange,
                          "currency_code": variation.prices!.currencyCode,
                          "currency_symbol": variation.prices!.currencySymbol,
                          "currency_minor_unit":
                              variation.prices!.currencyMinorUnit,
                          "currency_decimal_separator":
                              variation.prices!.currencyDecimalSeparator,
                          "currency_thousand_separator":
                              variation.prices!.currencyThousandSeparator,
                          "currency_prefix": variation.prices!.currencyPrefix,
                          "currency_suffix": variation.prices!.currencySuffix,
                        }
                      : null,
                  "price_html": variation.priceHtml,
                  "average_rating": variation.averageRating,
                  "review_count": variation.reviewCount,
                  "images": variation.images
                      ?.map((image) => {
                            "id": image.id,
                            "src": image.src,
                            "thumbnail": image.thumbnail,
                            "srcset": image.srcset,
                            "sizes": image.sizes?.toString(),
                            "name": image.name,
                            "alt": image.alt,
                          })
                      .toList(),
                  "categories": variation.categories
                      ?.map((category) => {
                            "id": category.id,
                            "name": category.name?.toString(),
                            "slug": category.slug?.toString(),
                            "link": category.link,
                          })
                      .toList(),
                  "tags": variation.tags,
                  "brands": variation.brands,
                  "attributes": variation.attributes,
                  "variations": variation.variations,
                  "grouped_products": variation.groupedProducts,
                  "has_options": variation.hasOptions,
                  "is_purchasable": variation.isPurchasable,
                  "is_in_stock": variation.isInStock,
                  "is_on_backorder": variation.isOnBackorder,
                  "low_stock_remaining": variation.lowStockRemaining,
                  "stock_availability": variation.stockAvailability != null
                      ? {
                          "text": variation.stockAvailability!.text,
                          "class": variation
                              .stockAvailability!.stockAvailabilityClass,
                        }
                      : null,
                  "sold_individually": variation.soldIndividually,
                  "add_to_cart": variation.addToCart != null
                      ? {
                          "text": variation.addToCart!.text,
                          "description": variation.addToCart!.description,
                          "url": variation.addToCart!.url,
                          "single_text": variation.addToCart!.singleText,
                          "minimum": variation.addToCart!.minimum,
                          "maximum": variation.addToCart!.maximum,
                          "multiple_of": variation.addToCart!.multipleOf,
                        }
                      : null,
                  "extensions": variation.extensions?.toJson(),
                })
            .toList(),
        "params": params,
        "timestamp": DateTime.now().toIso8601String(),
      };
    } catch (e) {
      debugPrint("🚨 List Variations By Type Error Details: $e");

      String errorMessage =
          "Failed to list variations by type: ${e.toString()}";
      Map<String, dynamic> errorDetails = {};

      // Check if it's a network/HTTP related error
      if (e.toString().contains('DioException') ||
          e.toString().contains('DioError')) {
        debugPrint("🔍 Network Error detected");

        if (e.toString().contains('400')) {
          errorDetails['status_code'] = 400;
          errorMessage =
              "Bad request. Please check your API configuration and product type";
        } else if (e.toString().contains('401')) {
          errorDetails['status_code'] = 401;
          errorMessage = "Unauthorized. Please check your authentication";
        } else if (e.toString().contains('403')) {
          errorDetails['status_code'] = 403;
          errorMessage = "Access denied. Please check your permissions";
        } else if (e.toString().contains('404')) {
          errorDetails['status_code'] = 404;
          errorMessage = "No variations found for the specified product type";
        } else if (e.toString().contains('500')) {
          errorDetails['status_code'] = 500;
          errorMessage = "Server error occurred while fetching variations";
        } else {
          errorMessage = "Network error occurred while fetching variations";
        }

        errorDetails['type'] = 'network_error';
      } else if (e.toString().contains('variation') ||
          e.toString().contains('Variation')) {
        errorDetails['type'] = 'variation_error';
        errorMessage =
            "Product variation service error while fetching variations";
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
            name: 'type',
            label: 'Product Type',
            hint:
                'Filter by product type (simple, variable, grouped, external).',
          ),
        ],
      };
}
