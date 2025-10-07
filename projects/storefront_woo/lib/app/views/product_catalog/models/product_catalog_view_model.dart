/*
 * ProductCatalogViewModel
 * -----------------------
 * ViewModel for the product catalog view following OSMEA architecture.
 * Uses BLoC pattern with events and states.
 */

import 'dart:async';
import 'package:apis/apis.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_api/abstract/product_service.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_api/freezed_model/response/list_all_products_response_model.dart';
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

  // State variables
  List<ListAllProductsResponseModel> _products = [];
  bool _hasMore = true;
  int _currentPage = 1;
  String? _searchQuery;
  int? _selectedCategoryId;
  bool _isLoadingMore = false;

  // Constants
  static const int _productsPerPage = 20;

  // Public getters
  List<ListAllProductsResponseModel> get products => _products;
  bool get hasMore => _hasMore;
  int get currentPage => _currentPage;
  String? get searchQuery => _searchQuery;
  int? get selectedCategoryId => _selectedCategoryId;
  bool get isLoadingMore => _isLoadingMore;

  // Public trigger functions
  void loadProducts() => add(ProductCatalogInitialEvent());
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

      // Use ProductService from GetIt
      final productService = GetIt.I<ProductService>();
      final products = await productService.listAllProducts(
        apiVersion: 'v1',
        page: _currentPage,
        perPage: _productsPerPage,
        status: 'publish',
        stockStatus: 'instock',
      );

      _products = products;
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
    if (_isLoadingMore || !_hasMore) return;

    try {
      _isLoadingMore = true;
      emit(
        ProductCatalogLoadingMoreState(
          products: _products,
          currentPage: _currentPage,
        ),
      );

      _currentPage++;

      // Use ProductService from GetIt
      final productService = GetIt.I<ProductService>();
      final newProducts = await productService.listAllProducts(
        apiVersion: 'v1',
        page: _currentPage,
        perPage: _productsPerPage,
        status: 'publish',
        stockStatus: 'instock',
        search: _searchQuery,
        category: _selectedCategoryId,
      );

      _products = [..._products, ...newProducts];
      _hasMore = newProducts.length == _productsPerPage;
      _isLoadingMore = false;

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
      _isLoadingMore = false;
      emit(
        ProductCatalogErrorState(message: 'Failed to load more products: $e'),
      );
    }
  }

  Future<void> _onRefreshEvent(
    ProductCatalogRefreshEvent event,
    Emitter<ProductCatalogState> emit,
  ) async {
    try {
      emit(ProductCatalogRefreshingState(products: _products));

      _currentPage = 1;
      _products = [];
      _hasMore = true;

      // Use ProductService from GetIt
      final productService = GetIt.I<ProductService>();
      final products = await productService.listAllProducts(
        apiVersion: 'v1',
        page: _currentPage,
        perPage: _productsPerPage,
        status: 'publish',
        stockStatus: 'instock',
        search: _searchQuery,
        category: _selectedCategoryId,
      );

      _products = products;
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
      emit(ProductCatalogErrorState(message: 'Failed to refresh products: $e'));
    }
  }

  Future<void> _onSearchEvent(
    ProductCatalogSearchEvent event,
    Emitter<ProductCatalogState> emit,
  ) async {
    try {
      emit(ProductCatalogLoadingState());

      _searchQuery = event.query;
      _currentPage = 1;
      _products = [];
      _hasMore = true;

      // Use ProductService from GetIt
      final productService = GetIt.I<ProductService>();
      final products = await productService.listAllProducts(
        apiVersion: 'v1',
        page: _currentPage,
        perPage: _productsPerPage,
        status: 'publish',
        stockStatus: 'instock',
        search: _searchQuery,
        category: _selectedCategoryId,
      );

      _products = products;
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
      emit(ProductCatalogErrorState(message: 'Failed to search products: $e'));
    }
  }

  Future<void> _onClearSearchEvent(
    ProductCatalogClearSearchEvent event,
    Emitter<ProductCatalogState> emit,
  ) async {
    try {
      emit(ProductCatalogLoadingState());

      _searchQuery = null;
      _currentPage = 1;
      _products = [];
      _hasMore = true;

      // Use ProductService from GetIt
      final productService = GetIt.I<ProductService>();
      final products = await productService.listAllProducts(
        apiVersion: 'v1',
        page: _currentPage,
        perPage: _productsPerPage,
        status: 'publish',
        stockStatus: 'instock',
        category: _selectedCategoryId,
      );

      _products = products;
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
      emit(ProductCatalogErrorState(message: 'Failed to clear search: $e'));
    }
  }

  Future<void> _onFilterByCategoryEvent(
    ProductCatalogFilterByCategoryEvent event,
    Emitter<ProductCatalogState> emit,
  ) async {
    try {
      emit(ProductCatalogLoadingState());

      _selectedCategoryId = event.categoryId;
      _currentPage = 1;
      _products = [];
      _hasMore = true;

      // Use ProductService from GetIt
      final productService = GetIt.I<ProductService>();
      final products = await productService.listAllProducts(
        apiVersion: 'v1',
        page: _currentPage,
        perPage: _productsPerPage,
        status: 'publish',
        stockStatus: 'instock',
        search: _searchQuery,
        category: _selectedCategoryId,
      );

      _products = products;
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
        ProductCatalogErrorState(message: 'Failed to filter by category: $e'),
      );
    }
  }

  Future<void> _onAddToCartEvent(
    ProductCatalogAddToCartEvent event,
    Emitter<ProductCatalogState> emit,
  ) async {
    // TODO: Implement add to cart functionality
    // This would typically call a cart service
  }

  Future<void> _onAddToWishlistEvent(
    ProductCatalogAddToWishlistEvent event,
    Emitter<ProductCatalogState> emit,
  ) async {
    // TODO: Implement add to wishlist functionality
    // This would typically call a wishlist service
  }
}
