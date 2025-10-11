import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'cart_item.freezed.dart';
part 'cart_item.g.dart';

/// Simple Cart Item model for array response from WooCommerce Store API
/// This is designed for the /cart/items endpoint that returns a List<CartItem>
@freezed
class CartItem with _$CartItem {
  const factory CartItem({
    @JsonKey(name: "key")
    String? key,
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "quantity")
    int? quantity,
    @JsonKey(name: "type")
    String? type,
    @JsonKey(name: "sku")
    String? sku,
    @JsonKey(name: "short_description")
    String? shortDescription,
    @JsonKey(name: "description")
    String? description,
    @JsonKey(name: "permalink")
    String? permalink,
    @JsonKey(name: "sold_individually")
    bool? soldIndividually,
    @JsonKey(name: "backorders_allowed")
    bool? backordersAllowed,
    @JsonKey(name: "show_backorder_badge")
    bool? showBackorderBadge,
    @JsonKey(name: "low_stock_remaining")
    dynamic lowStockRemaining,
    @JsonKey(name: "catalog_visibility")
    String? catalogVisibility,
    @JsonKey(name: "images")
    List<dynamic>? images,
    @JsonKey(name: "variation")
    List<dynamic>? variation,
    @JsonKey(name: "item_data")
    List<dynamic>? itemData,
    @JsonKey(name: "prices")
    CartItemPrices? prices,
    @JsonKey(name: "totals")
    CartItemTotals? totals,
    @JsonKey(name: "quantity_limits")
    CartItemQuantityLimits? quantityLimits,
    @JsonKey(name: "extensions")
    Map<String, dynamic>? extensions,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) => _$CartItemFromJson(json);
}

@freezed
class CartItemPrices with _$CartItemPrices {
  const factory CartItemPrices({
    @JsonKey(name: "price")
    String? price,
    @JsonKey(name: "regular_price")
    String? regularPrice,
    @JsonKey(name: "sale_price")
    String? salePrice,
    @JsonKey(name: "price_range")
    dynamic priceRange,
    @JsonKey(name: "currency_code")
    String? currencyCode,
    @JsonKey(name: "currency_symbol")
    String? currencySymbol,
    @JsonKey(name: "currency_minor_unit")
    int? currencyMinorUnit,
    @JsonKey(name: "currency_decimal_separator")
    String? currencyDecimalSeparator,
    @JsonKey(name: "currency_thousand_separator")
    String? currencyThousandSeparator,
    @JsonKey(name: "currency_prefix")
    String? currencyPrefix,
    @JsonKey(name: "currency_suffix")
    String? currencySuffix,
    @JsonKey(name: "raw_prices")
    CartItemRawPrices? rawPrices,
  }) = _CartItemPrices;

  factory CartItemPrices.fromJson(Map<String, dynamic> json) => _$CartItemPricesFromJson(json);
}

@freezed
class CartItemRawPrices with _$CartItemRawPrices {
  const factory CartItemRawPrices({
    @JsonKey(name: "precision")
    int? precision,
    @JsonKey(name: "price")
    String? price,
    @JsonKey(name: "regular_price")
    String? regularPrice,
    @JsonKey(name: "sale_price")
    String? salePrice,
  }) = _CartItemRawPrices;

  factory CartItemRawPrices.fromJson(Map<String, dynamic> json) => _$CartItemRawPricesFromJson(json);
}

@freezed
class CartItemTotals with _$CartItemTotals {
  const factory CartItemTotals({
    @JsonKey(name: "line_subtotal")
    String? lineSubtotal,
    @JsonKey(name: "line_subtotal_tax")
    String? lineSubtotalTax,
    @JsonKey(name: "line_total")
    String? lineTotal,
    @JsonKey(name: "line_total_tax")
    String? lineTotalTax,
    @JsonKey(name: "currency_code")
    String? currencyCode,
    @JsonKey(name: "currency_symbol")
    String? currencySymbol,
    @JsonKey(name: "currency_minor_unit")
    int? currencyMinorUnit,
    @JsonKey(name: "currency_decimal_separator")
    String? currencyDecimalSeparator,
    @JsonKey(name: "currency_thousand_separator")
    String? currencyThousandSeparator,
    @JsonKey(name: "currency_prefix")
    String? currencyPrefix,
    @JsonKey(name: "currency_suffix")
    String? currencySuffix,
  }) = _CartItemTotals;

  factory CartItemTotals.fromJson(Map<String, dynamic> json) => _$CartItemTotalsFromJson(json);
}

@freezed
class CartItemQuantityLimits with _$CartItemQuantityLimits {
  const factory CartItemQuantityLimits({
    @JsonKey(name: "minimum")
    int? minimum,
    @JsonKey(name: "maximum")
    int? maximum,
    @JsonKey(name: "multiple_of")
    int? multipleOf,
    @JsonKey(name: "editable")
    bool? editable,
  }) = _CartItemQuantityLimits;

  factory CartItemQuantityLimits.fromJson(Map<String, dynamic> json) => _$CartItemQuantityLimitsFromJson(json);
}

/// Helper function to parse JSON array to List<CartItem>
List<CartItem> cartItemsFromJson(String str) {
  final List<dynamic> parsed = json.decode(str);
  return parsed.map((json) => CartItem.fromJson(json)).toList();
}

/// Helper function to convert List<CartItem> to JSON array
String cartItemsToJson(List<CartItem> data) => json.encode(data.map((item) => item.toJson()).toList());