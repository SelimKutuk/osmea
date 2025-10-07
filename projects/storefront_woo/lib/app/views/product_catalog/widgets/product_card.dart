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
    return OsmeaComponents.imageCard(
      title: product.name ?? 'Unknown Product',
      subtitle: _buildPriceText(context),
      content: _buildActionButtonsText(context),
      imageWidget: _buildProductImage(),
      imageHeight: context.highValue*1.2,
      imagePosition: ComponentPosition.top,
      imageFit: fill,
      imageAlignment: center,
      showOverlay: false,
      variant: ComponentAppearance.elevated,
      size: ComponentSize.small,
      backgroundColor: OsmeaColors.white,
      titleColor: OsmeaColors.black,
      subtitleColor: OsmeaColors.forestHeart,
      contentColor: OsmeaColors.black,
      spacing: context.spacing4,
      borderRadius: BorderRadius.circular(12),
      elevation: 2.0,
      margin: EdgeInsets.zero,
      onTap: onTap,
    );
  }

  Widget _buildProductImage() {
    return OsmeaComponents.container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: OsmeaColors.grayMaterial[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: OsmeaComponents.clipRRect(
        borderRadius: BorderRadius.circular(8),
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
          size: 32, 
        ),
      ),
    );
  }

  String _buildPriceText(BuildContext context) {
    final prices = product.prices;

    if (prices == null) {
      return 'Price not available';
    }

    final currentPrice = prices.currencyCode != null
        ? '${prices.currencyCode} ${prices.price}'
        : '${prices.price}';
    final regularPrice = prices.regularPrice;
    final salePrice = prices.salePrice;

    final hasDiscount =
        salePrice != null && salePrice.isNotEmpty && salePrice != prices.price;

    if (hasDiscount) {
      return '$currentPrice (was $regularPrice)';
    } else {
      return currentPrice;
    }
  }

  String _buildActionButtonsText(BuildContext context) {
    return 'Add to Cart • Wishlist';
  }
}
