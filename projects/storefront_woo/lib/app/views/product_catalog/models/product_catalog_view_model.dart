/*
 * ProductCatalogViewModel
 * -----------------------
 * ViewModel for the product catalog view following OSMEA architecture.
 * Uses BLoC pattern with events and states.
 * Based on admin_dashboard pattern for consistency.
 */

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_api/freezed_model/response/list_all_products_response_model.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_api/abstract/product_service.dart';
import 'package:core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:storefront_woo/app/views/product_catalog/models/module/events.dart';
import 'package:storefront_woo/app/views/product_catalog/models/module/states.dart';
import 'package:get_it/get_it.dart';

@injectable
class ProductCatalogViewModel
    extends BaseViewModelBloc<ProductCatalogEvent, ProductCatalogState> {
  ProductCatalogViewModel() : super(ProductCatalogInitialState()) {
    on<ProductCatalogInitialEvent>(_onInitialEvent);
    on<ProductCatalogLoadMoreEvent>(_onLoadMoreEvent);
    on<ProductCatalogRefreshEvent>(_onRefreshEvent);
    on<ProductCatalogSearchEvent>(_onSearchEvent);
    on<ProductCatalogClearSearchEvent>(_onClearSearchEvent);
    on<ProductCatalogFilterByCategoryEvent>(_onFilterByCategoryEvent);
    on<ProductCatalogAddToCartEvent>(_onAddToCartEvent);
    on<ProductCatalogAddToWishlistEvent>(_onAddToWishlistEvent);
  }

  // Dependencies
  final ProductService _productService = GetIt.I<ProductService>();

  // Controllers - Simple approach following admin_dashboard pattern
  final TextEditingController searchController = TextEditingController();

  // State variables
  List<ListAllProductsResponseModel> _products = [];
  List<ListAllProductsResponseModel> _allProducts =
      []; // Store all products for local filtering
  bool _hasMore = true;
  int _currentPage = 1;
  String? _searchQuery;
  int? _selectedCategoryId;
  final int _productsPerPage = 20;

  // Public trigger functions - following admin_dashboard pattern
  void initial() => add(ProductCatalogInitialEvent());
  void loadMore() => add(ProductCatalogLoadMoreEvent());
  void refresh() => add(ProductCatalogRefreshEvent());
  void search(String query) => add(ProductCatalogSearchEvent(query: query));
  void clearSearch() => add(ProductCatalogClearSearchEvent());
  void filterByCategory(int? categoryId) =>
      add(ProductCatalogFilterByCategoryEvent(categoryId: categoryId));
  void addToCart(int productId) =>
      add(ProductCatalogAddToCartEvent(productId: productId));
  void addToWishlist(int productId) =>
      add(ProductCatalogAddToWishlistEvent(productId: productId));

  // Restart method to reload all products
  void restart() {
    searchController.clear();
    _searchQuery = null;
    _selectedCategoryId = null;
    _currentPage = 1;
    _products = [];
    _allProducts = [];
    _hasMore = true;
    add(ProductCatalogInitialEvent());
  }

  // Event handlers
  Future<void> _onInitialEvent(
    ProductCatalogInitialEvent event,
    Emitter<ProductCatalogState> emit,
  ) async {
    try {
      emit(ProductCatalogLoadingState());

      _currentPage = 1;
      _products = [];
      _hasMore = true;
      _searchQuery = null;
      _selectedCategoryId = null;

      final products = await _productService.listAllProducts(
        apiVersion: 'v1',
        page: _currentPage,
        perPage: _productsPerPage,
        status: 'publish',
        stockStatus: 'instock',
      );

      _products = products;
      _allProducts = List.from(
        products,
      ); // Store all products for local filtering
      _hasMore = products.length == _productsPerPage;

      emit(
        ProductCatalogLoadedState(
          products: _products,
          hasMore: _hasMore,
          currentPage: _currentPage,
          searchQuery: _searchQuery,
          selectedCategoryId: _selectedCategoryId,
        ),
      );
    } catch (e) {
      emit(ProductCatalogErrorState(message: 'Failed to load products: $e'));
    }
  }

  Future<void> _onLoadMoreEvent(
    ProductCatalogLoadMoreEvent event,
    Emitter<ProductCatalogState> emit,
  ) async {
    if (!_hasMore) return;

    try {
      _currentPage++;
      final products = await _productService.listAllProducts(
        apiVersion: 'v1',
        page: _currentPage,
        perPage: _productsPerPage,
        status: 'publish',
        stockStatus: 'instock',
      );

      _products.addAll(products);
      _allProducts.addAll(products); // Add to all products cache
      _hasMore = products.length == _productsPerPage;

      emit(
        ProductCatalogLoadedState(
          products: _products,
          hasMore: _hasMore,
          currentPage: _currentPage,
          searchQuery: _searchQuery,
          selectedCategoryId: _selectedCategoryId,
        ),
      );
    } catch (e) {
      emit(
        ProductCatalogErrorState(message: 'Failed to load more products: $e'),
      );
    }
  }

  Future<void> _onRefreshEvent(
    ProductCatalogRefreshEvent event,
    Emitter<ProductCatalogState> emit,
  ) async {
    add(ProductCatalogInitialEvent());
  }

  Future<void> _onSearchEvent(
    ProductCatalogSearchEvent event,
    Emitter<ProductCatalogState> emit,
  ) async {
    try {
      _searchQuery = event.query;

      // Update controller text
      if (searchController.text != event.query) {
        searchController.text = event.query;
      }

      if (event.query.isEmpty) {
        // If search is empty, show all products
        _products = List.from(_allProducts);
      } else {
        // Filter products locally
        _products = _allProducts.where((product) {
          final productName = product.name?.toLowerCase() ?? '';
          final productDescription = product.description?.toLowerCase() ?? '';
          final searchTerm = event.query.toLowerCase();

          return productName.contains(searchTerm) ||
              productDescription.contains(searchTerm);
        }).toList();
      }

      emit(
        ProductCatalogLoadedState(
          products: _products,
          hasMore: false, // Local filtering doesn't support pagination
          currentPage: 1,
          searchQuery: _searchQuery,
          selectedCategoryId: _selectedCategoryId,
        ),
      );
    } catch (e) {
      emit(ProductCatalogErrorState(message: 'Failed to search products: $e'));
    }
  }

  Future<void> _onClearSearchEvent(
    ProductCatalogClearSearchEvent event,
    Emitter<ProductCatalogState> emit,
  ) async {
    try {
      searchController.clear();
      _searchQuery = null;
      _products = List.from(_allProducts);

      emit(
        ProductCatalogLoadedState(
          products: _products,
          hasMore: _allProducts.length == _productsPerPage,
          currentPage: 1,
          searchQuery: _searchQuery,
          selectedCategoryId: _selectedCategoryId,
        ),
      );
    } catch (e) {
      emit(ProductCatalogErrorState(message: 'Failed to clear search: $e'));
    }
  }

  Future<void> _onFilterByCategoryEvent(
    ProductCatalogFilterByCategoryEvent event,
    Emitter<ProductCatalogState> emit,
  ) async {
    try {
      _selectedCategoryId = event.categoryId;

      if (event.categoryId == null) {
        // Show all products
        _products = List.from(_allProducts);
      } else {
        // Filter by category
        _products = _allProducts.where((product) {
          return product.categories?.any(
                (category) => category.id == event.categoryId,
              ) ??
              false;
        }).toList();
      }

      emit(
        ProductCatalogLoadedState(
          products: _products,
          hasMore: false, // Category filtering doesn't support pagination
          currentPage: 1,
          searchQuery: _searchQuery,
          selectedCategoryId: _selectedCategoryId,
        ),
      );
    } catch (e) {
      emit(
        ProductCatalogErrorState(message: 'Failed to filter by category: $e'),
      );
    }
  }

  Future<void> _onAddToCartEvent(
    ProductCatalogAddToCartEvent event,
    Emitter<ProductCatalogState> emit,
  ) async {
    try {
      // TODO: Implement add to cart logic
      debugPrint('Adding product ${event.productId} to cart');

      // For now, just show success state
      emit(
        ProductCatalogLoadedState(
          products: _products,
          hasMore: _hasMore,
          currentPage: _currentPage,
          searchQuery: _searchQuery,
          selectedCategoryId: _selectedCategoryId,
        ),
      );
    } catch (e) {
      emit(ProductCatalogErrorState(message: 'Failed to add to cart: $e'));
    }
  }

  Future<void> _onAddToWishlistEvent(
    ProductCatalogAddToWishlistEvent event,
    Emitter<ProductCatalogState> emit,
  ) async {
    try {
      // TODO: Implement add to wishlist logic
      debugPrint('Adding product ${event.productId} to wishlist');

      // For now, just show success state
      emit(
        ProductCatalogLoadedState(
          products: _products,
          hasMore: _hasMore,
          currentPage: _currentPage,
          searchQuery: _searchQuery,
          selectedCategoryId: _selectedCategoryId,
        ),
      );
    } catch (e) {
      emit(ProductCatalogErrorState(message: 'Failed to add to wishlist: $e'));
    }
  }

  // Dispose method
  @override
  Future<void> close() {
    searchController.dispose();
    return super.close();
  }
}
