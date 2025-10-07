/*
 * ProductCatalog Widgets
 * ----------------------
 * Widgets for the product catalog view following OSMEA architecture.
 */

import 'package:apis/network/remote/woocommerce/store_api/product_api/freezed_model/response/list_all_products_response_model.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:storefront_woo/app/views/product_catalog/models/product_catalog_view_model.dart';
import 'package:storefront_woo/app/views/product_catalog/models/module/states.dart';
import 'package:storefront_woo/app/views/product_catalog/widgets/product_card.dart';

/// Main product catalog content widget
class ProductCatalogContentWidget extends StatelessWidget {
  final ProductCatalogViewModel viewModel;
  final ProductCatalogLoadedState state;

  const ProductCatalogContentWidget({
    super.key,
    required this.viewModel,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return OsmeaComponents.column(
      children: [
        // Search Bar
        _buildSearchBar(context),

        // Product Grid
        OsmeaComponents.expanded(child: _buildProductGrid(context)),
      ],
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return OsmeaComponents.container(
      padding: const EdgeInsets.all(16),
      color: OsmeaColors.white,
      child: OsmeaComponents.textField(
        hint: 'Search products...',
        prefixIcon: Icon(Icons.search),
        suffixIcon: state.searchQuery?.isNotEmpty == true
            ? Icon(Icons.clear)
            : null,
        onChanged: (value) {
          if (value.isEmpty) {
            viewModel.clearSearch();
          } else if (value.length >= 3) {
            viewModel.search(value);
          }
        },
        borderColor: OsmeaColors.grayMaterial[300],
        focusColor: OsmeaColors.black,
      ),
    );
  }

  Widget _buildProductGrid(BuildContext context) {
    if (state.products.isEmpty) {
      return _buildEmptyState(context);
    }

    return RefreshIndicator(
      onRefresh: () async => viewModel.refresh(),
      child: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.7,
        ),
        itemCount: state.hasMore
            ? state.products.length + 1
            : state.products.length,
        itemBuilder: (context, index) {
          if (index >= state.products.length) {
            return _buildLoadingMoreWidget();
          }

          final product = state.products[index];
          return ProductCardWidget(
            product: product,
            onTap: () => _navigateToProductDetail(context, product),
            onAddToCart: () => viewModel.addToCart(product.id ?? 0),
            onAddToWishlist: () => viewModel.addToWishlist(product.id ?? 0),
          );
        },
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return OsmeaComponents.center(
      child: OsmeaComponents.column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.inventory_2_outlined,
            size: 64,
            color: OsmeaColors.grayMaterial[400],
          ),
          OsmeaComponents.sizedBox(height: 16),
          OsmeaComponents.text(
            'No products found',
            color: OsmeaColors.grayMaterial[500],
            textStyle: OsmeaTextStyle.titleMedium(context),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingMoreWidget() {
    return OsmeaComponents.center(
      child: OsmeaComponents.loading(
        type: LoadingType.circularFade,
        color: OsmeaColors.black,
      ),
    );
  }

  void _navigateToProductDetail(
    BuildContext context,
    ListAllProductsResponseModel product,
  ) {
    // TODO: Implement navigation to product detail view
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Navigate to ${product.name}'),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}

/// Error widget for product catalog
class ProductCatalogErrorWidget extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const ProductCatalogErrorWidget({
    super.key,
    required this.message,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return OsmeaComponents.center(
      child: OsmeaComponents.column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 64, color: OsmeaColors.red),
          OsmeaComponents.sizedBox(height: 16),
          OsmeaComponents.text(
            'Error loading products',
            color: OsmeaColors.black,
            textStyle: OsmeaTextStyle.headlineSmall(context),
          ),
          OsmeaComponents.sizedBox(height: 8),
          OsmeaComponents.text(
            message,
            color: OsmeaColors.grayMaterial[500],
            textAlign: TextAlign.center,
            textStyle: OsmeaTextStyle.bodyMedium(context),
          ),
          OsmeaComponents.sizedBox(height: 16),
          OsmeaComponents.button(
            onPressed: onRetry,
            backgroundColor: OsmeaColors.black,
            textColor: OsmeaColors.white,
            text: 'Retry',
          ),
        ],
      ),
    );
  }
}

/// Loading widget for product catalog
class ProductCatalogLoadingWidget extends StatelessWidget {
  const ProductCatalogLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OsmeaComponents.center(
      child: OsmeaComponents.loading(
        type: LoadingType.circularFade,
        color: OsmeaColors.black,
      ),
    );
  }
}
