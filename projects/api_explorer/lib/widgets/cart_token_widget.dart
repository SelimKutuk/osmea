import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:core/core.dart';
import 'package:apis/apis.dart';

/// 🛒 Cart Token Display Widget
///
/// Shows current cart token information and provides management options
class CartTokenWidget extends StatefulWidget {
  final VoidCallback? onTokenCopied;
  final VoidCallback? onTokenCleared;

  const CartTokenWidget({
    super.key,
    this.onTokenCopied,
    this.onTokenCleared,
  });

  @override
  State<CartTokenWidget> createState() => _CartTokenWidgetState();
}

class _CartTokenWidgetState extends State<CartTokenWidget> {
  WooCartToken? _cartToken;
  bool _isLoading = true;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _loadCartToken();
  }

  /// 🔍 Load cart token from storage
  Future<void> _loadCartToken() async {
    try {
      setState(() {
        _isLoading = true;
      });

      final token = await WooCartTokenStorage.loadCartToken();

      if (mounted) {
        setState(() {
          _cartToken = token;
          _isLoading = false;
        });
      }
    } catch (e) {
      debugPrint('❌ Error loading cart token: $e');
      if (mounted) {
        setState(() {
          _cartToken = null;
          _isLoading = false;
        });
      }
    }
  }

  /// 📋 Copy cart token to clipboard
  Future<void> _copyTokenToClipboard() async {
    try {
      if (_cartToken != null && _cartToken!.cartToken.isNotEmpty) {
        await Clipboard.setData(ClipboardData(text: _cartToken!.cartToken));
        widget.onTokenCopied?.call();

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: OsmeaComponents.text('✅ Cart token copied to clipboard'),
              backgroundColor: OsmeaColors.forestHeart,
              duration: const Duration(seconds: 2),
            ),
          );
        }
      }
    } catch (e) {
      debugPrint('❌ Failed to copy cart token: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: OsmeaComponents.text('❌ Failed to copy cart token'),
            backgroundColor: OsmeaColors.slate,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  /// 🗑️ Clear cart token
  Future<void> _clearCartToken() async {
    try {
      await WooCartTokenStorage.clearCartToken();
      widget.onTokenCleared?.call();

      if (mounted) {
        setState(() {
          _cartToken = null;
        });

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: OsmeaComponents.text('✅ Cart token cleared'),
            backgroundColor: OsmeaColors.forestHeart,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    } catch (e) {
      debugPrint('❌ Failed to clear cart token: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: OsmeaComponents.text('❌ Failed to clear cart token'),
            backgroundColor: OsmeaColors.slate,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  /// 🔄 Refresh cart token
  Future<void> _refreshCartToken() async {
    await _loadCartToken();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    if (_isLoading) {
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
        child: OsmeaComponents.row(
          children: [
            OsmeaComponents.sizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(
                  isDark ? Colors.white : OsmeaColors.nordicBlue,
                ),
              ),
            ),
            OsmeaComponents.sizedBox(width: context.spacing12),
            OsmeaComponents.text(
              'Loading cart token...',
              variant: OsmeaTextVariant.bodyMedium,
              color: isDark
                  ? Colors.white.withValues(alpha: 0.9)
                  : OsmeaColors.steel,
            ),
          ],
        ),
      );
    }

    if (_cartToken == null) {
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
                  Icons.shopping_cart_outlined,
                  size: 20,
                  color: isDark ? Colors.white : OsmeaColors.steel,
                ),
                OsmeaComponents.sizedBox(width: context.spacing8),
                OsmeaComponents.text(
                  'No Cart Token',
                  variant: OsmeaTextVariant.titleMedium,
                  fontWeight: FontWeight.w600,
                  color: isDark ? Colors.white : OsmeaColors.steel,
                ),
              ],
            ),
            OsmeaComponents.sizedBox(height: context.spacing8),
            OsmeaComponents.text(
              'No cart token found. Cart tokens are automatically managed when making cart-related API requests.',
              variant: OsmeaTextVariant.bodySmall,
              color: isDark
                  ? Colors.white.withValues(alpha: 0.7)
                  : OsmeaColors.steel.withValues(alpha: 0.7),
            ),
          ],
        ),
      );
    }

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
          // Header with title and actions
          OsmeaComponents.row(
            children: [
              Icon(
                Icons.shopping_cart,
                size: 20,
                color: OsmeaColors.forestHeart,
              ),
              OsmeaComponents.sizedBox(width: context.spacing8),
              OsmeaComponents.text(
                'Cart Token',
                variant: OsmeaTextVariant.titleMedium,
                fontWeight: FontWeight.w600,
                color: isDark ? Colors.white : OsmeaColors.steel,
              ),
              const Spacer(),
              // Copy button
              OsmeaComponents.iconButton(
                icon: Icon(
                  Icons.content_copy_rounded,
                  size: 16,
                  color: isDark ? Colors.white : OsmeaColors.steel,
                ),
                onPressed: _copyTokenToClipboard,
                variant: ButtonVariant.ghost,
                size: ButtonSize.small,
                tooltip: 'Copy cart token',
              ),
              OsmeaComponents.sizedBox(width: context.spacing4),
              // Refresh button
              OsmeaComponents.iconButton(
                icon: Icon(
                  Icons.refresh_rounded,
                  size: 16,
                  color: isDark ? Colors.white : OsmeaColors.steel,
                ),
                onPressed: _refreshCartToken,
                variant: ButtonVariant.ghost,
                size: ButtonSize.small,
                tooltip: 'Refresh cart token',
              ),
              OsmeaComponents.sizedBox(width: context.spacing4),
              // Clear button
              OsmeaComponents.iconButton(
                icon: Icon(
                  Icons.clear_rounded,
                  size: 16,
                  color: OsmeaColors.slate,
                ),
                onPressed: _clearCartToken,
                variant: ButtonVariant.ghost,
                size: ButtonSize.small,
                tooltip: 'Clear cart token',
              ),
              OsmeaComponents.sizedBox(width: context.spacing4),
              // Expand button
              OsmeaComponents.iconButton(
                icon: Icon(
                  _isExpanded ? Icons.expand_less : Icons.expand_more,
                  size: 16,
                  color: isDark ? Colors.white : OsmeaColors.steel,
                ),
                onPressed: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                variant: ButtonVariant.ghost,
                size: ButtonSize.small,
                tooltip: _isExpanded ? 'Collapse details' : 'Expand details',
              ),
            ],
          ),

          OsmeaComponents.sizedBox(height: context.spacing12),

          // Cart token display
          OsmeaComponents.container(
            padding: EdgeInsets.all(context.spacing12),
            decoration: BoxDecoration(
              color: isDark
                  ? Colors.black.withValues(alpha: 0.2)
                  : OsmeaColors.silver.withValues(alpha: 0.1),
              borderRadius: context.borderRadiusMinStandard,
              border: Border.all(
                color: isDark
                    ? Colors.white.withValues(alpha: 0.1)
                    : OsmeaColors.silver.withValues(alpha: 0.2),
                width: 1,
              ),
            ),
            child: OsmeaComponents.text(
              _cartToken!.cartToken,
              variant: OsmeaTextVariant.bodySmall,
              fontSize: 12,
              fontFamily: 'monospace',
              color: isDark ? Colors.white : OsmeaColors.steel,
            ),
          ),

          // Expanded details
          if (_isExpanded) ...[
            OsmeaComponents.sizedBox(height: context.spacing16),
            OsmeaComponents.text(
              'Token Details',
              variant: OsmeaTextVariant.titleSmall,
              fontWeight: FontWeight.w600,
              color: isDark ? Colors.white : OsmeaColors.steel,
            ),
            OsmeaComponents.sizedBox(height: context.spacing8),
            _buildDetailRow('Store URL', _cartToken!.storeUrl),
            _buildDetailRow(
                'Issued At', _cartToken!.issuedAt.toIso8601String()),
            if (_cartToken!.expiresAt != null)
              _buildDetailRow(
                  'Expires At', _cartToken!.expiresAt!.toIso8601String()),
            if (_cartToken!.lastRefreshed != null)
              _buildDetailRow('Last Refreshed',
                  _cartToken!.lastRefreshed!.toIso8601String()),
            if (_cartToken!.cartId != null)
              _buildDetailRow('Cart ID', _cartToken!.cartId!),
            if (_cartToken!.userId != null)
              _buildDetailRow('User ID', _cartToken!.userId!),
          ],
        ],
      ),
    );
  }

  /// Build a detail row
  Widget _buildDetailRow(String label, String value) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Padding(
      padding: EdgeInsets.only(bottom: context.spacing4),
      child: OsmeaComponents.row(
        children: [
          OsmeaComponents.text(
            '$label:',
            variant: OsmeaTextVariant.bodySmall,
            fontWeight: FontWeight.w500,
            color: isDark
                ? Colors.white.withValues(alpha: 0.8)
                : OsmeaColors.steel.withValues(alpha: 0.8),
          ),
          OsmeaComponents.sizedBox(width: context.spacing8),
          OsmeaComponents.expanded(
            child: OsmeaComponents.text(
              value,
              variant: OsmeaTextVariant.bodySmall,
              fontSize: 11,
              fontFamily: 'monospace',
              color: isDark ? Colors.white : OsmeaColors.steel,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
