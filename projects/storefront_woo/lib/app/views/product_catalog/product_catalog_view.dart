/*
 * ProductCatalogView
 * ------------------
 * A product catalog view following OSMEA architecture.
 * Uses MasterView pattern with BLoC state management.
 */

import 'dart:async';
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
    super.navbarSpacer =
        const SpacerVisibility.disabled(), // Hide navbar spacer
    super.footerSpacer =
        const SpacerVisibility.disabled(), // Hide footer spacer
  }) : super(
         coreAppBar: (context, viewModel) =>
             productCatalogCoreAppBar(context, viewModel, arguments),
       );

  @override
  Future<void> initialContent(
    ProductCatalogViewModel viewModel,
    BuildContext context,
  ) async {
    // Initialize product catalog
    viewModel.initial();
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
        onRetry: () => viewModel.initial(),
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
}

/// Returns a coreAppBar for the product catalog view
AppBar productCatalogCoreAppBar(
  BuildContext context,
  ProductCatalogViewModel viewModel,
  Map<String, dynamic>? arguments,
) {
  // Get current state to determine title
  final state = viewModel.state;
  String title = 'Products';
  if (state is ProductCatalogLoadedState &&
      state.searchQuery?.isNotEmpty == true) {
    title = 'Search: "${state.searchQuery}"';
  }

  return AppBar(
    title: OsmeaComponents.row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OsmeaComponents.text(
          title,
          color: OsmeaColors.black,
          textStyle: OsmeaTextStyle.titleLarge(context),
        ),
        // Product count indicator
        if (state is ProductCatalogLoadedState)
          OsmeaComponents.text(
            '${state.products.length} items',
            color: OsmeaColors.grayMaterial[500],
            textStyle: OsmeaTextStyle.bodySmall(context),
          ),
      ],
    ),
    backgroundColor: OsmeaColors.white,
    foregroundColor: OsmeaColors.black,
    elevation: 0,
    actions: [
      OsmeaComponents.iconButton(
        onPressed: () {
          // Restart button - reload all products
          viewModel.restart();
        },
        icon: Icon(Icons.refresh, color: OsmeaColors.orange),
        backgroundColor: OsmeaColors.transparent,
        tooltip: 'Restart',
      ),
      OsmeaComponents.iconButton(
        onPressed: () {
          // TODO: Implement cart view navigation
        },
        icon: Icon(Icons.shopping_cart, color: OsmeaColors.black),
        backgroundColor: OsmeaColors.transparent,
        tooltip: 'Cart',
      ),
    ],
  );
}
