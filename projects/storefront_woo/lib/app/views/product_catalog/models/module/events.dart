/*
 * ProductCatalog Events
 * ---------------------
 * Events for the product catalog view following OSMEA architecture.
 */

/// Base event for product catalog
abstract class ProductCatalogEvent {}

/// Initial event to load products
class ProductCatalogInitialEvent extends ProductCatalogEvent {}

/// Load more products event
class ProductCatalogLoadMoreEvent extends ProductCatalogEvent {}

/// Refresh products event
class ProductCatalogRefreshEvent extends ProductCatalogEvent {}

/// Search products event
class ProductCatalogSearchEvent extends ProductCatalogEvent {
  final String query;

  ProductCatalogSearchEvent({required this.query});
}

/// Clear search event
class ProductCatalogClearSearchEvent extends ProductCatalogEvent {}

/// Filter by category event
class ProductCatalogFilterByCategoryEvent extends ProductCatalogEvent {
  final int? categoryId;

  ProductCatalogFilterByCategoryEvent({this.categoryId});
}

/// Add to cart event
class ProductCatalogAddToCartEvent extends ProductCatalogEvent {
  final int productId;

  ProductCatalogAddToCartEvent({required this.productId});
}

/// Add to wishlist event
class ProductCatalogAddToWishlistEvent extends ProductCatalogEvent {
  final int productId;

  ProductCatalogAddToWishlistEvent({required this.productId});
}


