/*
 * ProductCatalog States
 * ---------------------
 * States for the product catalog view following OSMEA architecture.
 */

import 'package:apis/network/remote/woocommerce/store_api/product_api/freezed_model/response/list_all_products_response_model.dart';

/// Base state for product catalog
abstract class ProductCatalogState {}

/// Initial state
class ProductCatalogInitialState extends ProductCatalogState {}

/// Loading state
class ProductCatalogLoadingState extends ProductCatalogState {}

/// Loaded state with products
class ProductCatalogLoadedState extends ProductCatalogState {
  final List<ListAllProductsResponseModel> products;
  final bool hasMore;
  final int currentPage;
  final String? searchQuery;
  final int? selectedCategoryId;
  final bool isLoadingMore;

  ProductCatalogLoadedState({
    required this.products,
    this.hasMore = true,
    this.currentPage = 1,
    this.searchQuery,
    this.selectedCategoryId,
    this.isLoadingMore = false,
  });
}

/// Error state
class ProductCatalogErrorState extends ProductCatalogState {
  final String message;

  ProductCatalogErrorState({required this.message});
}

/// Refreshing state
class ProductCatalogRefreshingState extends ProductCatalogState {
  final List<ListAllProductsResponseModel> products;

  ProductCatalogRefreshingState({required this.products});
}

/// Loading more state
class ProductCatalogLoadingMoreState extends ProductCatalogState {
  final List<ListAllProductsResponseModel> products;
  final int currentPage;

  ProductCatalogLoadingMoreState({
    required this.products,
    required this.currentPage,
  });
}


