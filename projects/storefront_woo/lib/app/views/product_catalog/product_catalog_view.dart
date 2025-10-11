/*
 * ProductCatalogView
 * ------------------
 * A product catalog view following OSMEA architecture.
 * Uses MasterView pattern with BLoC state management.
 */

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:storefront_woo/app/views/product_catalog/models/product_catalog_view_model.dart';
import 'package:storefront_woo/app/views/product_catalog/models/module/events.dart';
import 'package:storefront_woo/app/views/product_catalog/models/module/states.dart';
import 'package:storefront_woo/app/views/product_catalog/widgets/product_catalog_widgets.dart';

/// ProductCatalogView displays a product catalog with search and filtering
class ProductCatalogView
    extends
        MasterView<
          ProductCatalogViewModel,
          ProductCatalogEvent,
          ProductCatalogState
        > {
  ProductCatalogView({
    super.key,
    super.arguments,
    super.currentView,
    super.snackBarFunction,
  });

  @override
  Future<void> initialContent(
    ProductCatalogViewModel viewModel,
    BuildContext context,
  ) async {
    // Initialize product catalog
    viewModel.loadProducts();
  }

  @override
  Widget viewContent(
    BuildContext context,
    ProductCatalogViewModel viewModel,
    ProductCatalogState state,
  ) {
    // Error state
    if (state is ProductCatalogErrorState) {
      return ProductCatalogErrorWidget(
        message: state.message,
        onRetry: () => viewModel.loadProducts(),
      );
    }

    // Loading state
    if (state is ProductCatalogLoadingState) {
      return const ProductCatalogLoadingWidget();
    }

    // Loaded state
    if (state is ProductCatalogLoadedState) {
      return ProductCatalogContentWidget(viewModel: viewModel, state: state);
    }

    // Refreshing state
    if (state is ProductCatalogRefreshingState) {
      return ProductCatalogContentWidget(
        viewModel: viewModel,
        state: ProductCatalogLoadedState(
          products: state.products,
          hasMore: true,
          currentPage: 1,
        ),
      );
    }

    // Loading more state
    if (state is ProductCatalogLoadingMoreState) {
      return ProductCatalogContentWidget(
        viewModel: viewModel,
        state: ProductCatalogLoadedState(
          products: state.products,
          hasMore: true,
          currentPage: state.currentPage,
          isLoadingMore: true,
        ),
      );
    }

    // Default loading state
    return const ProductCatalogLoadingWidget();
  }

  PreferredSizeWidget? appBar(
    BuildContext context,
    ProductCatalogViewModel viewModel,
    ProductCatalogState state,
  ) {
    return OsmeaComponents.appBar(
      title: OsmeaComponents.text(
        'Products',
        color: OsmeaColors.black,
        textStyle: OsmeaTextStyle.titleLarge(context),
      ),
      backgroundColor: OsmeaColors.white,
      foregroundColor: OsmeaColors.black,
      elevation: 0,
      actions: [
        OsmeaComponents.iconButton(
          onPressed: () {
            // TODO: Implement cart view navigation
          },
          icon: Icon(Icons.shopping_cart),
          backgroundColor: OsmeaColors.transparent,
        ),
      ],
    );
  }
}
