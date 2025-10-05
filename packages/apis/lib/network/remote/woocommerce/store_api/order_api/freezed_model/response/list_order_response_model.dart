// To parse this JSON data, do
//
//     final listOrderResponseModel = listOrderResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'list_order_response_model.freezed.dart';
part 'list_order_response_model.g.dart';

ListOrderResponseModel listOrderResponseModelFromJson(String str) =>
    ListOrderResponseModel.fromJson(json.decode(str));

String listOrderResponseModelToJson(ListOrderResponseModel data) =>
    json.encode(data.toJson());

@freezed
class ListOrderResponseModel with _$ListOrderResponseModel {
  const factory ListOrderResponseModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "items") List<Item>? items,
    @JsonKey(name: "coupons") List<dynamic>? coupons,
    @JsonKey(name: "fees") List<dynamic>? fees,
    @JsonKey(name: "totals") ListOrderResponseModelTotals? totals,
    @JsonKey(name: "shipping_address") IngAddress? shippingAddress,
    @JsonKey(name: "billing_address") IngAddress? billingAddress,
    @JsonKey(name: "needs_payment") bool? needsPayment,
    @JsonKey(name: "needs_shipping") bool? needsShipping,
    @JsonKey(name: "payment_requirements") List<String>? paymentRequirements,
    @JsonKey(name: "errors") List<dynamic>? errors,
  }) = _ListOrderResponseModel;

  factory ListOrderResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ListOrderResponseModelFromJson(json);
}

@freezed
class IngAddress with _$IngAddress {
  const factory IngAddress({
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "company") String? company,
    @JsonKey(name: "address_1") String? address1,
    @JsonKey(name: "address_2") String? address2,
    @JsonKey(name: "city") String? city,
    @JsonKey(name: "state") String? state,
    @JsonKey(name: "postcode") String? postcode,
    @JsonKey(name: "country") String? country,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "phone") String? phone,
  }) = _IngAddress;

  factory IngAddress.fromJson(Map<String, dynamic> json) =>
      _$IngAddressFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    @JsonKey(name: "key") String? key,
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "quantity") int? quantity,
    @JsonKey(name: "quantity_limits") QuantityLimits? quantityLimits,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "short_description") String? shortDescription,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "sku") String? sku,
    @JsonKey(name: "low_stock_remaining") dynamic lowStockRemaining,
    @JsonKey(name: "backorders_allowed") bool? backordersAllowed,
    @JsonKey(name: "show_backorder_badge") bool? showBackorderBadge,
    @JsonKey(name: "sold_individually") bool? soldIndividually,
    @JsonKey(name: "permalink") String? permalink,
    @JsonKey(name: "images") List<Image>? images,
    @JsonKey(name: "variation") List<dynamic>? variation,
    @JsonKey(name: "item_data") List<dynamic>? itemData,
    @JsonKey(name: "prices") Prices? prices,
    @JsonKey(name: "totals") ItemTotals? totals,
    @JsonKey(name: "catalog_visibility") String? catalogVisibility,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "src") String? src,
    @JsonKey(name: "thumbnail") String? thumbnail,
    @JsonKey(name: "srcset") String? srcset,
    @JsonKey(name: "sizes") String? sizes,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "alt") String? alt,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
class Prices with _$Prices {
  const factory Prices({
    @JsonKey(name: "price") String? price,
    @JsonKey(name: "regular_price") String? regularPrice,
    @JsonKey(name: "sale_price") String? salePrice,
    @JsonKey(name: "price_range") dynamic priceRange,
    @JsonKey(name: "currency_code") String? currencyCode,
    @JsonKey(name: "currency_symbol") String? currencySymbol,
    @JsonKey(name: "currency_minor_unit") int? currencyMinorUnit,
    @JsonKey(name: "currency_decimal_separator")
    String? currencyDecimalSeparator,
    @JsonKey(name: "currency_thousand_separator")
    String? currencyThousandSeparator,
    @JsonKey(name: "currency_prefix") String? currencyPrefix,
    @JsonKey(name: "currency_suffix") String? currencySuffix,
    @JsonKey(name: "raw_prices") RawPrices? rawPrices,
  }) = _Prices;

  factory Prices.fromJson(Map<String, dynamic> json) => _$PricesFromJson(json);
}

@freezed
class RawPrices with _$RawPrices {
  const factory RawPrices({
    @JsonKey(name: "precision") int? precision,
    @JsonKey(name: "price") String? price,
    @JsonKey(name: "regular_price") String? regularPrice,
    @JsonKey(name: "sale_price") String? salePrice,
  }) = _RawPrices;

  factory RawPrices.fromJson(Map<String, dynamic> json) =>
      _$RawPricesFromJson(json);
}

@freezed
class QuantityLimits with _$QuantityLimits {
  const factory QuantityLimits({
    @JsonKey(name: "minimum") int? minimum,
    @JsonKey(name: "maximum") int? maximum,
    @JsonKey(name: "multiple_of") int? multipleOf,
    @JsonKey(name: "editable") bool? editable,
  }) = _QuantityLimits;

  factory QuantityLimits.fromJson(Map<String, dynamic> json) =>
      _$QuantityLimitsFromJson(json);
}

@freezed
class ItemTotals with _$ItemTotals {
  const factory ItemTotals({
    @JsonKey(name: "line_subtotal") String? lineSubtotal,
    @JsonKey(name: "line_subtotal_tax") String? lineSubtotalTax,
    @JsonKey(name: "line_total") String? lineTotal,
    @JsonKey(name: "line_total_tax") String? lineTotalTax,
    @JsonKey(name: "currency_code") String? currencyCode,
    @JsonKey(name: "currency_symbol") String? currencySymbol,
    @JsonKey(name: "currency_minor_unit") int? currencyMinorUnit,
    @JsonKey(name: "currency_decimal_separator")
    String? currencyDecimalSeparator,
    @JsonKey(name: "currency_thousand_separator")
    String? currencyThousandSeparator,
    @JsonKey(name: "currency_prefix") String? currencyPrefix,
    @JsonKey(name: "currency_suffix") String? currencySuffix,
  }) = _ItemTotals;

  factory ItemTotals.fromJson(Map<String, dynamic> json) =>
      _$ItemTotalsFromJson(json);
}

@freezed
class ListOrderResponseModelTotals with _$ListOrderResponseModelTotals {
  const factory ListOrderResponseModelTotals({
    @JsonKey(name: "subtotal") String? subtotal,
    @JsonKey(name: "total_discount") String? totalDiscount,
    @JsonKey(name: "total_shipping") String? totalShipping,
    @JsonKey(name: "total_fees") String? totalFees,
    @JsonKey(name: "total_tax") String? totalTax,
    @JsonKey(name: "total_refund") String? totalRefund,
    @JsonKey(name: "total_price") String? totalPrice,
    @JsonKey(name: "total_items") String? totalItems,
    @JsonKey(name: "total_items_tax") String? totalItemsTax,
    @JsonKey(name: "total_fees_tax") String? totalFeesTax,
    @JsonKey(name: "total_discount_tax") String? totalDiscountTax,
    @JsonKey(name: "total_shipping_tax") String? totalShippingTax,
    @JsonKey(name: "tax_lines") List<dynamic>? taxLines,
    @JsonKey(name: "currency_code") String? currencyCode,
    @JsonKey(name: "currency_symbol") String? currencySymbol,
    @JsonKey(name: "currency_minor_unit") int? currencyMinorUnit,
    @JsonKey(name: "currency_decimal_separator")
    String? currencyDecimalSeparator,
    @JsonKey(name: "currency_thousand_separator")
    String? currencyThousandSeparator,
    @JsonKey(name: "currency_prefix") String? currencyPrefix,
    @JsonKey(name: "currency_suffix") String? currencySuffix,
  }) = _ListOrderResponseModelTotals;

  factory ListOrderResponseModelTotals.fromJson(Map<String, dynamic> json) =>
      _$ListOrderResponseModelTotalsFromJson(json);
}
