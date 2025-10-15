// To parse this JSON data, do
//
//     final updateCheckoutDataResponseModel = updateCheckoutDataResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'update_checkout_data_response_model.freezed.dart';
part 'update_checkout_data_response_model.g.dart';

UpdateCheckoutDataResponseModel updateCheckoutDataResponseModelFromJson(
        String str) =>
    UpdateCheckoutDataResponseModel.fromJson(json.decode(str));

String updateCheckoutDataResponseModelToJson(
        UpdateCheckoutDataResponseModel data) =>
    json.encode(data.toJson());

@freezed
class UpdateCheckoutDataResponseModel with _$UpdateCheckoutDataResponseModel {
  const factory UpdateCheckoutDataResponseModel({
    @JsonKey(name: "order_id") int? orderId,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "order_key") String? orderKey,
    @JsonKey(name: "order_number") String? orderNumber,
    @JsonKey(name: "customer_note") String? customerNote,
    @JsonKey(name: "customer_id") int? customerId,
    @JsonKey(name: "billing_address") IngAddress? billingAddress,
    @JsonKey(name: "shipping_address") IngAddress? shippingAddress,
    @JsonKey(name: "payment_method") String? paymentMethod,
    @JsonKey(name: "payment_result") dynamic paymentResult,
    @JsonKey(name: "additional_fields") AdditionalFields? additionalFields,
    @JsonKey(name: "__experimentalCart") ExperimentalCart? experimentalCart,
    @JsonKey(name: "extensions") AdditionalFields? extensions,
  }) = _UpdateCheckoutDataResponseModel;

  factory UpdateCheckoutDataResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateCheckoutDataResponseModelFromJson(json);
}

@freezed
class AdditionalFields with _$AdditionalFields {
  const factory AdditionalFields() = _AdditionalFields;

  factory AdditionalFields.fromJson(Map<String, dynamic> json) =>
      _$AdditionalFieldsFromJson(json);
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
class ExperimentalCart with _$ExperimentalCart {
  const factory ExperimentalCart({
    @JsonKey(name: "items") List<ExperimentalCartItem>? items,
    @JsonKey(name: "coupons") List<dynamic>? coupons,
    @JsonKey(name: "fees") List<dynamic>? fees,
    @JsonKey(name: "totals") ExperimentalCartTotals? totals,
    @JsonKey(name: "shipping_address") IngAddress? shippingAddress,
    @JsonKey(name: "billing_address") IngAddress? billingAddress,
    @JsonKey(name: "needs_payment") bool? needsPayment,
    @JsonKey(name: "needs_shipping") bool? needsShipping,
    @JsonKey(name: "payment_requirements") List<String>? paymentRequirements,
    @JsonKey(name: "has_calculated_shipping") bool? hasCalculatedShipping,
    @JsonKey(name: "shipping_rates")
    List<ExperimentalCartShippingRate>? shippingRates,
    @JsonKey(name: "items_count") int? itemsCount,
    @JsonKey(name: "items_weight") int? itemsWeight,
    @JsonKey(name: "cross_sells") List<dynamic>? crossSells,
    @JsonKey(name: "errors") List<dynamic>? errors,
    @JsonKey(name: "payment_methods") List<String>? paymentMethods,
    @JsonKey(name: "extensions") AdditionalFields? extensions,
  }) = _ExperimentalCart;

  factory ExperimentalCart.fromJson(Map<String, dynamic> json) =>
      _$ExperimentalCartFromJson(json);
}

@freezed
class ExperimentalCartItem with _$ExperimentalCartItem {
  const factory ExperimentalCartItem({
    @JsonKey(name: "key") String? key,
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "type") String? type,
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
    @JsonKey(name: "extensions") AdditionalFields? extensions,
  }) = _ExperimentalCartItem;

  factory ExperimentalCartItem.fromJson(Map<String, dynamic> json) =>
      _$ExperimentalCartItemFromJson(json);
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
class ExperimentalCartShippingRate with _$ExperimentalCartShippingRate {
  const factory ExperimentalCartShippingRate({
    @JsonKey(name: "package_id") int? packageId,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "destination") Destination? destination,
    @JsonKey(name: "items") List<ShippingRateItem>? items,
    @JsonKey(name: "shipping_rates")
    List<ShippingRateShippingRate>? shippingRates,
  }) = _ExperimentalCartShippingRate;

  factory ExperimentalCartShippingRate.fromJson(Map<String, dynamic> json) =>
      _$ExperimentalCartShippingRateFromJson(json);
}

@freezed
class Destination with _$Destination {
  const factory Destination({
    @JsonKey(name: "address_1") String? address1,
    @JsonKey(name: "address_2") String? address2,
    @JsonKey(name: "city") String? city,
    @JsonKey(name: "state") String? state,
    @JsonKey(name: "postcode") String? postcode,
    @JsonKey(name: "country") String? country,
  }) = _Destination;

  factory Destination.fromJson(Map<String, dynamic> json) =>
      _$DestinationFromJson(json);
}

@freezed
class ShippingRateItem with _$ShippingRateItem {
  const factory ShippingRateItem({
    @JsonKey(name: "key") String? key,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "quantity") int? quantity,
  }) = _ShippingRateItem;

  factory ShippingRateItem.fromJson(Map<String, dynamic> json) =>
      _$ShippingRateItemFromJson(json);
}

@freezed
class ShippingRateShippingRate with _$ShippingRateShippingRate {
  const factory ShippingRateShippingRate({
    @JsonKey(name: "rate_id") String? rateId,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "delivery_time") String? deliveryTime,
    @JsonKey(name: "price") String? price,
    @JsonKey(name: "taxes") String? taxes,
    @JsonKey(name: "instance_id") int? instanceId,
    @JsonKey(name: "method_id") String? methodId,
    @JsonKey(name: "meta_data") List<MetaDatum>? metaData,
    @JsonKey(name: "selected") bool? selected,
    @JsonKey(name: "currency_code") String? currencyCode,
    @JsonKey(name: "currency_symbol") String? currencySymbol,
    @JsonKey(name: "currency_minor_unit") int? currencyMinorUnit,
    @JsonKey(name: "currency_decimal_separator")
    String? currencyDecimalSeparator,
    @JsonKey(name: "currency_thousand_separator")
    String? currencyThousandSeparator,
    @JsonKey(name: "currency_prefix") String? currencyPrefix,
    @JsonKey(name: "currency_suffix") String? currencySuffix,
  }) = _ShippingRateShippingRate;

  factory ShippingRateShippingRate.fromJson(Map<String, dynamic> json) =>
      _$ShippingRateShippingRateFromJson(json);
}

@freezed
class MetaDatum with _$MetaDatum {
  const factory MetaDatum({
    @JsonKey(name: "key") String? key,
    @JsonKey(name: "value") String? value,
  }) = _MetaDatum;

  factory MetaDatum.fromJson(Map<String, dynamic> json) =>
      _$MetaDatumFromJson(json);
}

@freezed
class ExperimentalCartTotals with _$ExperimentalCartTotals {
  const factory ExperimentalCartTotals({
    @JsonKey(name: "total_items") String? totalItems,
    @JsonKey(name: "total_items_tax") String? totalItemsTax,
    @JsonKey(name: "total_fees") String? totalFees,
    @JsonKey(name: "total_fees_tax") String? totalFeesTax,
    @JsonKey(name: "total_discount") String? totalDiscount,
    @JsonKey(name: "total_discount_tax") String? totalDiscountTax,
    @JsonKey(name: "total_shipping") String? totalShipping,
    @JsonKey(name: "total_shipping_tax") String? totalShippingTax,
    @JsonKey(name: "total_price") String? totalPrice,
    @JsonKey(name: "total_tax") String? totalTax,
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
  }) = _ExperimentalCartTotals;

  factory ExperimentalCartTotals.fromJson(Map<String, dynamic> json) =>
      _$ExperimentalCartTotalsFromJson(json);
}
