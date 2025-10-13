/*
 * Product Detail Widgets
 * ----------------------
 * Widgets for the product detail view following OSMEA architecture.
 * Uses OsmeaComponents for consistent UI.
 */

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:apis/network/remote/woocommerce/store_api/product_api/freezed_model/response/retrieve_product_response_model.dart';
import 'package:storefront_woo/app/views/view_product_detail/models/product_detail_view_model.dart';
import 'package:storefront_woo/app/views/view_product_detail/models/module/states.dart';

/// Main content widget for product detail view
class ProductDetailContentWidget extends StatelessWidget {
  final ProductDetailViewModel viewModel;
  final ProductDetailLoadedState state;

  const ProductDetailContentWidget({
    super.key,
    required this.viewModel,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product images
          _buildProductImages(),

          // Ultra-elegant product info section
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product name with stronger typography
                Text(
                  state.product.name ?? 'Unknown Product',
                  style: OsmeaTextStyle.headlineLarge(context).copyWith(
                    fontWeight: FontWeight.w300,
                    letterSpacing: -0.8,
                    height: 1.0,
                    color: OsmeaColors.thunder,
                  ),
                ),

                const SizedBox(height: 8),

                // Price with vibrant styling
                Text(
                  _formatPrice(state.product.prices),
                  style: OsmeaTextStyle.headlineSmall(context).copyWith(
                    color: OsmeaColors.nordicBlue,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.5,
                    height: 1.1,
                  ),
                ),

                const SizedBox(height: 32),

                // Ultra-elegant action section with all actions in same row
                _buildUltraElegantActionSection(context),

                const SizedBox(height: 32),

                // Ultra-minimalist description
                if (state.product.description?.isNotEmpty == true) ...[
                  Text(
                    'Details',
                    style: OsmeaTextStyle.titleSmall(context).copyWith(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                      color: OsmeaColors.thunder.withOpacity(0.8),
                    ),
                  ),
                  const SizedBox(height: 12),
                  _buildDescriptionSection(context, state.product.description!),
                  const SizedBox(height: 28),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Builds the product images widget - Simple and clean
  Widget _buildProductImages() {
    if (state.imageUrls.isEmpty) {
      return Container(
        height: 300,
        width: double.infinity,
        color: OsmeaColors.grayMaterial[100],
        child: const Icon(Icons.image, size: 100),
      );
    }

    return SizedBox(
      height: 300,
      child: PageView.builder(
        itemCount: state.imageUrls.length,
        onPageChanged: (index) {
          // TODO: Update current image index
        },
        itemBuilder: (context, index) {
          return Image.network(
            state.imageUrls[index],
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: OsmeaColors.grayMaterial[100],
                child: const Icon(Icons.image, size: 100),
              );
            },
          );
        },
      ),
    );
  }

  /// Builds the action buttons widget
  /// Ultra-elegant action section with sophisticated design
  /// Ultra-elegant action section with all actions in same row
  Widget _buildUltraElegantActionSection(BuildContext context) {
    return Row(
      children: [
        // Like button
        _buildMinimalSecondaryButton(
          context,
          icon: state.isInWishlist ? Icons.favorite : Icons.favorite_outline,
          isActive: state.isInWishlist,
          onPressed: () =>
              viewModel.addProductToWishlist(state.product.id ?? 0),
        ),

        const SizedBox(width: 8),

        // Share button
        _buildMinimalSecondaryButton(
          context,
          icon: Icons.share_outlined,
          onPressed: () {
            // TODO: Implement share functionality
          },
        ),

        const SizedBox(width: 8),

        // Quantity selector - Fixed width
        SizedBox(width: 100, child: _buildInlineQuantitySelector(context)),

        const SizedBox(width: 8),

        // Add to Cart Button - Flexible
        Expanded(
          child: SizedBox(
            height: 44,
            child: ElevatedButton(
              onPressed: state.isInCart
                  ? null
                  : () => viewModel.addProductToCart(
                      state.product.id ?? 0,
                      quantity: state.selectedQuantity,
                    ),
              style: ElevatedButton.styleFrom(
                backgroundColor: state.isInCart
                    ? OsmeaColors.pewter.withOpacity(0.15)
                    : OsmeaColors.nordicBlue,
                foregroundColor: OsmeaColors.white,
                elevation: 0,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_cart_outlined,
                    size: 16,
                    color: OsmeaColors.white,
                  ),
                  const SizedBox(width: 4),
                  Flexible(
                    child: Text(
                      state.isInCart ? 'In Cart' : 'Add to Cart',
                      style: OsmeaTextStyle.bodySmall(context).copyWith(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.2,
                        color: OsmeaColors.white,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Inline quantity selector for the action row - Compact version
  Widget _buildInlineQuantitySelector(BuildContext context) {
    return Container(
      height: 44,
      decoration: BoxDecoration(
        color: OsmeaColors.pewter.withOpacity(0.05),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: OsmeaColors.pewter.withOpacity(0.1),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildInlineQuantityButton(
            context,
            icon: Icons.remove,
            onPressed: state.selectedQuantity > 1
                ? () => viewModel.updateQuantity(state.selectedQuantity - 1)
                : null,
          ),
          Text(
            '${state.selectedQuantity}',
            style: OsmeaTextStyle.bodySmall(
              context,
            ).copyWith(fontWeight: FontWeight.w500, letterSpacing: 0.2),
          ),
          _buildInlineQuantityButton(
            context,
            icon: Icons.add,
            onPressed: () =>
                viewModel.updateQuantity(state.selectedQuantity + 1),
          ),
        ],
      ),
    );
  }

  /// Inline quantity button
  Widget _buildInlineQuantityButton(
    BuildContext context, {
    required IconData icon,
    required VoidCallback? onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          color: onPressed != null
              ? OsmeaColors.nordicBlue.withOpacity(0.1)
              : OsmeaColors.pewter.withOpacity(0.05),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Icon(
          icon,
          color: onPressed != null
              ? OsmeaColors.nordicBlue.withOpacity(0.8)
              : OsmeaColors.pewter.withOpacity(0.3),
          size: 14,
        ),
      ),
    );
  }

  /// Minimal secondary button with clean design
  Widget _buildMinimalSecondaryButton(
    BuildContext context, {
    required IconData icon,
    required VoidCallback onPressed,
    bool isActive = false,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: isActive
              ? OsmeaColors.red.withOpacity(0.08)
              : OsmeaColors.pewter.withOpacity(0.06),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Icon(
          icon,
          color: isActive
              ? OsmeaColors.red
              : OsmeaColors.pewter.withOpacity(0.7),
          size: 16,
        ),
      ),
    );
  }

  /// Builds description section with show more/show less functionality
  Widget _buildDescriptionSection(BuildContext context, String description) {
    return _DescriptionWidget(description: description);
  }

  /// Formats price with currency symbol and handles sale prices
  String _formatPrice(Prices? prices) {
    if (prices == null) {
      debugPrint('❌ ProductDetailWidget: Prices is null');
      return PriceInfoCurrencyHelper.getDefaultPrice();
    }

    debugPrint('💰 ProductDetailWidget: Price data: ${prices.toJson()}');

    // Determine which price to show
    String? priceString;
    if (prices.salePrice != null &&
        prices.salePrice!.isNotEmpty &&
        prices.regularPrice != null &&
        prices.regularPrice!.isNotEmpty) {
      priceString = prices.salePrice;
      debugPrint('💰 ProductDetailWidget: Using sale price: $priceString');
    } else {
      priceString = prices.regularPrice ?? prices.price ?? '0.00';
      debugPrint(
        '💰 ProductDetailWidget: Using regular/main price: $priceString',
      );
    }

    // Parse the price to double for proper formatting
    final cleanPrice = priceString!.replaceAll(RegExp(r'[^\d.,]'), '');
    final parsedPrice = double.tryParse(cleanPrice) ?? 0.0;

    // Use PriceInfoCurrencyHelper for proper formatting
    final formattedPrice = PriceInfoCurrencyHelper.formatPrice(
      parsedPrice,
      currencyCode: prices.currencyCode,
      decimalPlaces: prices.currencyMinorUnit ?? 2,
    );

    debugPrint(
      '💰 ProductDetailWidget: Final formatted price: "$formattedPrice"',
    );
    return formattedPrice;
  }
}

/// Loading widget for product detail view
class ProductDetailLoadingWidget extends StatelessWidget {
  const ProductDetailLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

/// Error widget for product detail view
class ProductDetailErrorWidget extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const ProductDetailErrorWidget({
    super.key,
    required this.message,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 64, color: OsmeaColors.red),
          const SizedBox(height: 16),
          Text(
            message,
            style: OsmeaTextStyle.bodyMedium(context),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          ElevatedButton(onPressed: onRetry, child: const Text('Retry')),
        ],
      ),
    );
  }
}

/// Description widget with show more/show less functionality using WebViewerHelper
class _DescriptionWidget extends StatefulWidget {
  final String description;

  const _DescriptionWidget({required this.description});

  @override
  State<_DescriptionWidget> createState() => _DescriptionWidgetState();
}

class _DescriptionWidgetState extends State<_DescriptionWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Ultra-elegant description content
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: OsmeaColors.pewter.withOpacity(0.01),
            borderRadius: BorderRadius.circular(8),
          ),
          child: _isExpanded
              ? _buildExpandedDescription(context)
              : _buildCollapsedDescription(context),
        ),

        // Ultra-elegant show more/less button
        if (_shouldShowButton()) ...[
          const SizedBox(height: 8),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: OsmeaColors.nordicBlue.withOpacity(0.04),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  _isExpanded ? 'Show Less' : 'Show More',
                  style: OsmeaTextStyle.bodySmall(context).copyWith(
                    color: OsmeaColors.nordicBlue.withOpacity(0.8),
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }

  /// Check if description is long enough to need show more/less button
  bool _shouldShowButton() {
    // Simple check: if description has more than 200 characters, show button
    return widget.description.length > 200;
  }

  /// Builds expanded description with all bullet points
  Widget _buildExpandedDescription(BuildContext context) {
    final structuredItems = _parseDescriptionToBulletPoints();

    return OsmeaComponents.column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Show all bullet points
        ...structuredItems.map((item) => _buildBulletPoint(context, item)),
      ],
    );
  }

  /// Builds collapsed description with structured bullet points
  Widget _buildCollapsedDescription(BuildContext context) {
    // Parse description into structured format
    final structuredItems = _parseDescriptionToBulletPoints();

    // Show only first 2-3 items when collapsed
    final itemsToShow = structuredItems.take(2).toList();
    final hasMoreItems = structuredItems.length > 2;

    return OsmeaComponents.column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Show first few bullet points
        ...itemsToShow.map((item) => _buildBulletPoint(context, item)),

        // Show "..." if there are more items
        if (hasMoreItems) ...[
          OsmeaComponents.sizedBox(height: 4),
          OsmeaComponents.text(
            '...',
            textStyle: OsmeaTextStyle.bodyMedium(
              context,
            ).copyWith(fontSize: 14, fontWeight: FontWeight.bold),
            color: OsmeaColors.pewter,
          ),
        ],
      ],
    );
  }

  /// Parses description text into structured bullet points
  List<String> _parseDescriptionToBulletPoints() {
    // Strip HTML tags
    final plainText = widget.description
        .replaceAll(RegExp(r'<[^>]*>'), '')
        .replaceAll(RegExp(r'\s+'), ' ')
        .trim();

    // Split by common separators and create bullet points
    final items = <String>[];

    // Try to split by common patterns
    final patterns = [
      RegExp(r'[•\-\*]\s*'), // Bullet points
      RegExp(r'\n\s*'), // Line breaks
      RegExp(r'\.\s+(?=[A-Z])'), // Period followed by capital letter
      RegExp(r':\s*'), // Colon separators
    ];

    String workingText = plainText;

    for (final pattern in patterns) {
      if (workingText.contains(pattern)) {
        final parts = workingText.split(pattern);
        for (final part in parts) {
          final trimmed = part.trim();
          if (trimmed.isNotEmpty && trimmed.length > 10) {
            items.add(trimmed);
          }
        }
        break;
      }
    }

    // If no patterns found, try to split by length
    if (items.isEmpty && plainText.length > 100) {
      final sentences = plainText.split(RegExp(r'[.!?]\s+'));
      for (final sentence in sentences) {
        final trimmed = sentence.trim();
        if (trimmed.isNotEmpty) {
          items.add(trimmed);
        }
      }
    }

    // If still no items, use the whole text
    if (items.isEmpty) {
      items.add(plainText);
    }

    return items;
  }

  /// Builds ultra-elegant bullet point with sophisticated styling
  Widget _buildBulletPoint(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 3,
            height: 3,
            margin: const EdgeInsets.only(top: 12, right: 14),
            decoration: BoxDecoration(
              color: OsmeaColors.nordicBlue.withOpacity(0.4),
              borderRadius: BorderRadius.circular(1.5),
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: OsmeaTextStyle.bodySmall(context).copyWith(
                fontSize: 13,
                height: 1.7,
                fontWeight: FontWeight.w200,
                letterSpacing: 0.3,
                color: OsmeaColors.thunder.withOpacity(0.7),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
