import 'package:apis/network/remote/woocommerce/store_api/product_api/freezed_model/response/list_all_products_response_model.dart'
    hide Image;
import 'package:flutter/material.dart';
import 'package:core/core.dart';

/// 🛍️ Product Card Widget
///
/// Displays a product in a card format with image, title, price, and action buttons
class ProductCardWidget extends StatelessWidget {
  final ListAllProductsResponseModel product;
  final VoidCallback? onTap;
  final VoidCallback? onAddToCart;
  final VoidCallback? onAddToWishlist;

  const ProductCardWidget({
    super.key,
    required this.product,
    this.onTap,
    this.onAddToCart,
    this.onAddToWishlist,
  });

  @override
  Widget build(BuildContext context) {
    return OsmeaComponents.basicCard(
      elevation: 2,
      borderRadius: BorderRadius.circular(12),
      customContent: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            _buildProductImage(),

            // Product Info
            OsmeaComponents.container(
              padding: const EdgeInsets.all(12),
              child: OsmeaComponents.column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Title
                  _buildProductTitle(context),

                  OsmeaComponents.sizedBox(height: 8),

                  // Product Price
                  _buildProductPrice(context),

                  OsmeaComponents.sizedBox(height: 12),

                  // Action Buttons
                  _buildActionButtons(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductImage() {
    return OsmeaComponents.container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
        color: OsmeaColors.grayMaterial[100],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
        child: product.images?.isNotEmpty == true
            ? Image.network(
                product.images!.first.src ?? '',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    _buildImagePlaceholder(),
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return _buildImagePlaceholder();
                },
              )
            : _buildImagePlaceholder(),
      ),
    );
  }

  Widget _buildImagePlaceholder() {
    return OsmeaComponents.container(
      color: OsmeaColors.grayMaterial[200],
      child: OsmeaComponents.center(
        child: Icon(
          Icons.image_not_supported,
          color: OsmeaColors.grayMaterial[400],
          size: 48,
        ),
      ),
    );
  }

  Widget _buildProductTitle(BuildContext context) {
    return OsmeaComponents.text(
      product.name ?? 'Unknown Product',
      color: OsmeaColors.black,
      textStyle: OsmeaTextStyle.titleMedium(
        context,
      ).copyWith(fontWeight: FontWeight.w600, height: 1.2),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildProductPrice(BuildContext context) {
    final prices = product.prices;

    if (prices == null) {
      return OsmeaComponents.text(
        'Price not available',
        color: OsmeaColors.grayMaterial[500],
        textStyle: OsmeaTextStyle.bodySmall(context),
      );
    }

    final currentPrice = prices.currencyCode != null
        ? '${prices.currencyCode} ${prices.price}'
        : '${prices.price}';
    final regularPrice = prices.regularPrice;
    final salePrice = prices.salePrice;

    final hasDiscount =
        salePrice != null && salePrice.isNotEmpty && salePrice != prices.price;

    return OsmeaComponents.row(
      children: [
        if (hasDiscount) ...[
          OsmeaComponents.text(
            currentPrice,
            color: OsmeaColors.red,
            textStyle: OsmeaTextStyle.titleLarge(
              context,
            ).copyWith(fontWeight: FontWeight.bold),
          ),
          OsmeaComponents.sizedBox(width: 8),
          OsmeaComponents.text(
            regularPrice ?? prices.price ?? '',
            color: OsmeaColors.grayMaterial[500],
            textStyle: OsmeaTextStyle.bodySmall(
              context,
            ).copyWith(decoration: TextDecoration.lineThrough),
          ),
        ] else ...[
          OsmeaComponents.text(
            currentPrice,
            color: OsmeaColors.black,
            textStyle: OsmeaTextStyle.titleLarge(
              context,
            ).copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ],
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return OsmeaComponents.row(
      children: [
        // Add to Cart Button
        OsmeaComponents.expanded(
          child: OsmeaComponents.button(
            onPressed: onAddToCart,
            backgroundColor: OsmeaColors.black,
            textColor: OsmeaColors.white,
            padding: const EdgeInsets.symmetric(vertical: 8),
            text: 'Add to Cart',
            icon: Icon(Icons.shopping_cart, size: 18, color: OsmeaColors.white),
          ),
        ),

        OsmeaComponents.sizedBox(width: 8),

        // Wishlist Button
        OsmeaComponents.iconButton(
          onPressed: onAddToWishlist,
          icon: Icon(Icons.favorite_border),
          backgroundColor: OsmeaColors.grayMaterial[100],
        ),
      ],
    );
  }
}
