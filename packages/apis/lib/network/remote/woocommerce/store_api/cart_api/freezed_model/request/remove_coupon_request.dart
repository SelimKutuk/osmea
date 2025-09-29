// To parse this JSON data, do
//
//     final removeCouponRequest = removeCouponRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'remove_coupon_request.freezed.dart';
part 'remove_coupon_request.g.dart';

RemoveCouponRequest removeCouponRequestFromJson(String str) => RemoveCouponRequest.fromJson(json.decode(str));

String removeCouponRequestToJson(RemoveCouponRequest data) => json.encode(data.toJson());

@freezed
class RemoveCouponRequest with _$RemoveCouponRequest {
    const factory RemoveCouponRequest({
        @JsonKey(name: "items")
        List<RemoveCouponRequestItem>? items,
        @JsonKey(name: "coupons")
        List<dynamic>? coupons,
        @JsonKey(name: "fees")
        List<dynamic>? fees,
        @JsonKey(name: "totals")
        RemoveCouponRequestTotals? totals,
        @JsonKey(name: "shipping_address")
        ShippingAddress? shippingAddress,
        @JsonKey(name: "billing_address")
        BillingAddress? billingAddress,
        @JsonKey(name: "needs_payment")
        bool? needsPayment,
        @JsonKey(name: "needs_shipping")
        bool? needsShipping,
        @JsonKey(name: "payment_requirements")
        List<String>? paymentRequirements,
        @JsonKey(name: "has_calculated_shipping")
        bool? hasCalculatedShipping,
        @JsonKey(name: "shipping_rates")
        List<ShippingRate>? shippingRates,
        @JsonKey(name: "items_count")
        int? itemsCount,
        @JsonKey(name: "items_weight")
        int? itemsWeight,
        @JsonKey(name: "cross_sells")
        List<dynamic>? crossSells,
        @JsonKey(name: "errors")
        List<dynamic>? errors,
        @JsonKey(name: "payment_methods")
        List<String>? paymentMethods,
        @JsonKey(name: "extensions")
        Extensions? extensions,
    }) = _RemoveCouponRequest;

    factory RemoveCouponRequest.fromJson(Map<String, dynamic> json) => _$RemoveCouponRequestFromJson(json);
}

@freezed
class BillingAddress with _$BillingAddress {
    const factory BillingAddress({
        @JsonKey(name: "first_name")
        String? firstName,
        @JsonKey(name: "last_name")
        String? lastName,
        @JsonKey(name: "company")
        String? company,
        @JsonKey(name: "address_1")
        String? address1,
        @JsonKey(name: "address_2")
        String? address2,
        @JsonKey(name: "city")
        String? city,
        @JsonKey(name: "state")
        String? state,
        @JsonKey(name: "postcode")
        String? postcode,
        @JsonKey(name: "country")
        String? country,
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "phone")
        String? phone,
    }) = _BillingAddress;

    factory BillingAddress.fromJson(Map<String, dynamic> json) => _$BillingAddressFromJson(json);
}

@freezed
class Extensions with _$Extensions {
    const factory Extensions() = _Extensions;

    factory Extensions.fromJson(Map<String, dynamic> json) => _$ExtensionsFromJson(json);
}

@freezed
class RemoveCouponRequestItem with _$RemoveCouponRequestItem {
    const factory RemoveCouponRequestItem({
        @JsonKey(name: "key")
        String? key,
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "type")
        String? type,
        @JsonKey(name: "quantity")
        int? quantity,
        @JsonKey(name: "quantity_limits")
        QuantityLimits? quantityLimits,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "short_description")
        String? shortDescription,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "sku")
        String? sku,
        @JsonKey(name: "low_stock_remaining")
        dynamic lowStockRemaining,
        @JsonKey(name: "backorders_allowed")
        bool? backordersAllowed,
        @JsonKey(name: "show_backorder_badge")
        bool? showBackorderBadge,
        @JsonKey(name: "sold_individually")
        bool? soldIndividually,
        @JsonKey(name: "permalink")
        String? permalink,
        @JsonKey(name: "images")
        List<dynamic>? images,
        @JsonKey(name: "variation")
        List<dynamic>? variation,
        @JsonKey(name: "item_data")
        List<dynamic>? itemData,
        @JsonKey(name: "prices")
        Prices? prices,
        @JsonKey(name: "totals")
        ItemTotals? totals,
        @JsonKey(name: "catalog_visibility")
        String? catalogVisibility,
        @JsonKey(name: "extensions")
        Extensions? extensions,
    }) = _RemoveCouponRequestItem;

    factory RemoveCouponRequestItem.fromJson(Map<String, dynamic> json) => _$RemoveCouponRequestItemFromJson(json);
}

@freezed
class Prices with _$Prices {
    const factory Prices({
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
        RawPrices? rawPrices,
    }) = _Prices;

    factory Prices.fromJson(Map<String, dynamic> json) => _$PricesFromJson(json);
}

@freezed
class RawPrices with _$RawPrices {
    const factory RawPrices({
        @JsonKey(name: "precision")
        int? precision,
        @JsonKey(name: "price")
        String? price,
        @JsonKey(name: "regular_price")
        String? regularPrice,
        @JsonKey(name: "sale_price")
        String? salePrice,
    }) = _RawPrices;

    factory RawPrices.fromJson(Map<String, dynamic> json) => _$RawPricesFromJson(json);
}

@freezed
class QuantityLimits with _$QuantityLimits {
    const factory QuantityLimits({
        @JsonKey(name: "minimum")
        int? minimum,
        @JsonKey(name: "maximum")
        int? maximum,
        @JsonKey(name: "multiple_of")
        int? multipleOf,
        @JsonKey(name: "editable")
        bool? editable,
    }) = _QuantityLimits;

    factory QuantityLimits.fromJson(Map<String, dynamic> json) => _$QuantityLimitsFromJson(json);
}

@freezed
class ItemTotals with _$ItemTotals {
    const factory ItemTotals({
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
    }) = _ItemTotals;

    factory ItemTotals.fromJson(Map<String, dynamic> json) => _$ItemTotalsFromJson(json);
}

@freezed
class ShippingAddress with _$ShippingAddress {
    const factory ShippingAddress({
        @JsonKey(name: "first_name")
        String? firstName,
        @JsonKey(name: "last_name")
        String? lastName,
        @JsonKey(name: "company")
        String? company,
        @JsonKey(name: "address_1")
        String? address1,
        @JsonKey(name: "address_2")
        String? address2,
        @JsonKey(name: "city")
        String? city,
        @JsonKey(name: "state")
        String? state,
        @JsonKey(name: "postcode")
        String? postcode,
        @JsonKey(name: "country")
        String? country,
        @JsonKey(name: "phone")
        String? phone,
    }) = _ShippingAddress;

    factory ShippingAddress.fromJson(Map<String, dynamic> json) => _$ShippingAddressFromJson(json);
}

@freezed
class ShippingRate with _$ShippingRate {
    const factory ShippingRate({
        @JsonKey(name: "package_id")
        int? packageId,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "destination")
        Destination? destination,
        @JsonKey(name: "items")
        List<ShippingRateItem>? items,
        @JsonKey(name: "shipping_rates")
        List<dynamic>? shippingRates,
    }) = _ShippingRate;

    factory ShippingRate.fromJson(Map<String, dynamic> json) => _$ShippingRateFromJson(json);
}

@freezed
class Destination with _$Destination {
    const factory Destination({
        @JsonKey(name: "address_1")
        String? address1,
        @JsonKey(name: "address_2")
        String? address2,
        @JsonKey(name: "city")
        String? city,
        @JsonKey(name: "state")
        String? state,
        @JsonKey(name: "postcode")
        String? postcode,
        @JsonKey(name: "country")
        String? country,
    }) = _Destination;

    factory Destination.fromJson(Map<String, dynamic> json) => _$DestinationFromJson(json);
}

@freezed
class ShippingRateItem with _$ShippingRateItem {
    const factory ShippingRateItem({
        @JsonKey(name: "key")
        String? key,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "quantity")
        int? quantity,
    }) = _ShippingRateItem;

    factory ShippingRateItem.fromJson(Map<String, dynamic> json) => _$ShippingRateItemFromJson(json);
}

@freezed
class RemoveCouponRequestTotals with _$RemoveCouponRequestTotals {
    const factory RemoveCouponRequestTotals({
        @JsonKey(name: "total_items")
        String? totalItems,
        @JsonKey(name: "total_items_tax")
        String? totalItemsTax,
        @JsonKey(name: "total_fees")
        String? totalFees,
        @JsonKey(name: "total_fees_tax")
        String? totalFeesTax,
        @JsonKey(name: "total_discount")
        String? totalDiscount,
        @JsonKey(name: "total_discount_tax")
        String? totalDiscountTax,
        @JsonKey(name: "total_shipping")
        String? totalShipping,
        @JsonKey(name: "total_shipping_tax")
        String? totalShippingTax,
        @JsonKey(name: "total_price")
        String? totalPrice,
        @JsonKey(name: "total_tax")
        String? totalTax,
        @JsonKey(name: "tax_lines")
        List<dynamic>? taxLines,
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
    }) = _RemoveCouponRequestTotals;

    factory RemoveCouponRequestTotals.fromJson(Map<String, dynamic> json) => _$RemoveCouponRequestTotalsFromJson(json);
}
