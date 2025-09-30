// To parse this JSON data, do
//
//     final addCartItemResponse = addCartItemResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'add_cart_item_response.freezed.dart';
part 'add_cart_item_response.g.dart';

AddCartItemResponse addCartItemResponseFromJson(String str) => AddCartItemResponse.fromJson(json.decode(str));

String addCartItemResponseToJson(AddCartItemResponse data) => json.encode(data.toJson());

@freezed
class AddCartItemResponse with _$AddCartItemResponse {
    const factory AddCartItemResponse({
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
        Totals? totals,
        @JsonKey(name: "catalog_visibility")
        String? catalogVisibility,
        @JsonKey(name: "extensions")
        Extensions? extensions,
        @JsonKey(name: "_links")
        Links? links,
    }) = _AddCartItemResponse;

    factory AddCartItemResponse.fromJson(Map<String, dynamic> json) => _$AddCartItemResponseFromJson(json);
}

@freezed
class Extensions with _$Extensions {
    const factory Extensions() = _Extensions;

    factory Extensions.fromJson(Map<String, dynamic> json) => _$ExtensionsFromJson(json);
}

@freezed
class Links with _$Links {
    const factory Links({
        @JsonKey(name: "self")
        List<Self>? self,
        @JsonKey(name: "collection")
        List<Collection>? collection,
    }) = _Links;

    factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}

@freezed
class Collection with _$Collection {
    const factory Collection({
        @JsonKey(name: "href")
        String? href,
    }) = _Collection;

    factory Collection.fromJson(Map<String, dynamic> json) => _$CollectionFromJson(json);
}

@freezed
class Self with _$Self {
    const factory Self({
        @JsonKey(name: "href")
        String? href,
        @JsonKey(name: "targetHints")
        TargetHints? targetHints,
    }) = _Self;

    factory Self.fromJson(Map<String, dynamic> json) => _$SelfFromJson(json);
}

@freezed
class TargetHints with _$TargetHints {
    const factory TargetHints({
        @JsonKey(name: "allow")
        List<String>? allow,
    }) = _TargetHints;

    factory TargetHints.fromJson(Map<String, dynamic> json) => _$TargetHintsFromJson(json);
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
class Totals with _$Totals {
    const factory Totals({
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
    }) = _Totals;

    factory Totals.fromJson(Map<String, dynamic> json) => _$TotalsFromJson(json);
}
