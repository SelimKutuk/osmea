import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:apis/apis.dart';
import 'package:get_it/get_it.dart';
import 'package:apis/network/remote/woocommerce/store_api/cart_api/abstract/cart_service.dart';

/// 🛒 Cart Token Widget
///
/// Gets cart token from WooCommerce Store API cart endpoint
class CartTokenWidget extends StatefulWidget {
  const CartTokenWidget({super.key});

  @override
  State<CartTokenWidget> createState() => _CartTokenWidgetState();
}

class _CartTokenWidgetState extends State<CartTokenWidget> {
  bool _isCreating = false;

  /// Get cart token from cart API call
  Future<void> _getCartToken() async {
    try {
      setState(() {
        _isCreating = true;
      });

      // Make cart API call to get cart token
      final cartService = GetIt.I<CartService>();
      final response = await cartService.getCart(
        apiVersion: WooNetwork.apiVersion,
      );

      debugPrint('🛒 Cart API response received: ${response.toJson()}');

      // Cart token should be automatically saved by interceptor
      // Check if cart token was saved
      final cartToken = await WooCartTokenStorage.loadCartToken();

      if (cartToken != null) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content:
                  OsmeaComponents.text('✅ Cart token retrieved successfully!'),
              backgroundColor: OsmeaColors.forestHeart,
              duration: const Duration(seconds: 3),
            ),
          );
        }
        debugPrint('✅ Cart token retrieved: ${cartToken.cartToken}');
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content:
                  OsmeaComponents.text('⚠️ Cart token not found in response'),
              backgroundColor: OsmeaColors.amberFlame,
              duration: const Duration(seconds: 3),
            ),
          );
        }
        debugPrint('⚠️ Cart token not found in response');
      }
    } catch (e) {
      debugPrint('❌ Error getting cart token: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: OsmeaComponents.text('❌ Error getting cart token: $e'),
            backgroundColor: OsmeaColors.slate,
            duration: const Duration(seconds: 3),
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isCreating = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return OsmeaComponents.container(
      padding: EdgeInsets.all(context.spacing16),
      decoration: BoxDecoration(
        color: isDark
            ? OsmeaColors.deepSea.withValues(alpha: 0.1)
            : OsmeaColors.snow,
        borderRadius: context.borderRadiusMinStandard,
        border: Border.all(
          color: isDark
              ? OsmeaColors.deepSea.withValues(alpha: 0.2)
              : OsmeaColors.silver.withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: OsmeaComponents.column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OsmeaComponents.row(
            children: [
              Icon(
                Icons.science,
                size: 20,
                color: OsmeaColors.amberFlame,
              ),
              OsmeaComponents.sizedBox(width: context.spacing8),
              OsmeaComponents.text(
                'Cart Token',
                variant: OsmeaTextVariant.titleMedium,
                fontWeight: FontWeight.w600,
                color: isDark ? Colors.white : OsmeaColors.steel,
              ),
            ],
          ),
          OsmeaComponents.sizedBox(height: context.spacing12),
          OsmeaComponents.text(
            'Get cart token from WooCommerce Store API cart endpoint.',
            variant: OsmeaTextVariant.bodySmall,
            color: isDark
                ? Colors.white.withValues(alpha: 0.7)
                : OsmeaColors.steel.withValues(alpha: 0.7),
          ),
          OsmeaComponents.sizedBox(height: context.spacing16),
          OsmeaComponents.button(
            text: _isCreating ? 'Getting...' : 'Get Cart Token',
            variant: ButtonVariant.primary,
            size: ButtonSize.medium,
            onPressed: _isCreating ? null : _getCartToken,
            icon: _isCreating
                ? OsmeaComponents.sizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  )
                : Icon(
                    Icons.add_circle_outline,
                    size: 16,
                    color: Colors.white,
                  ),
            backgroundColor: OsmeaColors.amberFlame,
          ),
        ],
      ),
    );
  }
}
