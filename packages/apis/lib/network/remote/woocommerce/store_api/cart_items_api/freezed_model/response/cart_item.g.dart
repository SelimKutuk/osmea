// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartItemImpl _$$CartItemImplFromJson(Map<String, dynamic> json) =>
    _$CartItemImpl(
      key: json['key'] as String?,
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      type: json['type'] as String?,
      sku: json['sku'] as String?,
      shortDescription: json['short_description'] as String?,
      description: json['description'] as String?,
      permalink: json['permalink'] as String?,
      soldIndividually: json['sold_individually'] as bool?,
      backordersAllowed: json['backorders_allowed'] as bool?,
      showBackorderBadge: json['show_backorder_badge'] as bool?,
      lowStockRemaining: json['low_stock_remaining'],
      catalogVisibility: json['catalog_visibility'] as String?,
      images: json['images'] as List<dynamic>?,
      variation: json['variation'] as List<dynamic>?,
      itemData: json['item_data'] as List<dynamic>?,
      prices: json['prices'] == null
          ? null
          : CartItemPrices.fromJson(json['prices'] as Map<String, dynamic>),
      totals: json['totals'] == null
          ? null
          : CartItemTotals.fromJson(json['totals'] as Map<String, dynamic>),
      quantityLimits: json['quantity_limits'] == null
          ? null
          : CartItemQuantityLimits.fromJson(
              json['quantity_limits'] as Map<String, dynamic>),
      extensions: json['extensions'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$CartItemImplToJson(_$CartItemImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('type', instance.type);
  writeNotNull('sku', instance.sku);
  writeNotNull('short_description', instance.shortDescription);
  writeNotNull('description', instance.description);
  writeNotNull('permalink', instance.permalink);
  writeNotNull('sold_individually', instance.soldIndividually);
  writeNotNull('backorders_allowed', instance.backordersAllowed);
  writeNotNull('show_backorder_badge', instance.showBackorderBadge);
  writeNotNull('low_stock_remaining', instance.lowStockRemaining);
  writeNotNull('catalog_visibility', instance.catalogVisibility);
  writeNotNull('images', instance.images);
  writeNotNull('variation', instance.variation);
  writeNotNull('item_data', instance.itemData);
  writeNotNull('prices', instance.prices?.toJson());
  writeNotNull('totals', instance.totals?.toJson());
  writeNotNull('quantity_limits', instance.quantityLimits?.toJson());
  writeNotNull('extensions', instance.extensions);
  return val;
}

_$CartItemPricesImpl _$$CartItemPricesImplFromJson(Map<String, dynamic> json) =>
    _$CartItemPricesImpl(
      price: json['price'] as String?,
      regularPrice: json['regular_price'] as String?,
      salePrice: json['sale_price'] as String?,
      priceRange: json['price_range'],
      currencyCode: json['currency_code'] as String?,
      currencySymbol: json['currency_symbol'] as String?,
      currencyMinorUnit: (json['currency_minor_unit'] as num?)?.toInt(),
      currencyDecimalSeparator: json['currency_decimal_separator'] as String?,
      currencyThousandSeparator: json['currency_thousand_separator'] as String?,
      currencyPrefix: json['currency_prefix'] as String?,
      currencySuffix: json['currency_suffix'] as String?,
      rawPrices: json['raw_prices'] == null
          ? null
          : CartItemRawPrices.fromJson(
              json['raw_prices'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CartItemPricesImplToJson(
    _$CartItemPricesImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('price', instance.price);
  writeNotNull('regular_price', instance.regularPrice);
  writeNotNull('sale_price', instance.salePrice);
  writeNotNull('price_range', instance.priceRange);
  writeNotNull('currency_code', instance.currencyCode);
  writeNotNull('currency_symbol', instance.currencySymbol);
  writeNotNull('currency_minor_unit', instance.currencyMinorUnit);
  writeNotNull('currency_decimal_separator', instance.currencyDecimalSeparator);
  writeNotNull(
      'currency_thousand_separator', instance.currencyThousandSeparator);
  writeNotNull('currency_prefix', instance.currencyPrefix);
  writeNotNull('currency_suffix', instance.currencySuffix);
  writeNotNull('raw_prices', instance.rawPrices?.toJson());
  return val;
}

_$CartItemRawPricesImpl _$$CartItemRawPricesImplFromJson(
        Map<String, dynamic> json) =>
    _$CartItemRawPricesImpl(
      precision: (json['precision'] as num?)?.toInt(),
      price: json['price'] as String?,
      regularPrice: json['regular_price'] as String?,
      salePrice: json['sale_price'] as String?,
    );

Map<String, dynamic> _$$CartItemRawPricesImplToJson(
    _$CartItemRawPricesImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('precision', instance.precision);
  writeNotNull('price', instance.price);
  writeNotNull('regular_price', instance.regularPrice);
  writeNotNull('sale_price', instance.salePrice);
  return val;
}

_$CartItemTotalsImpl _$$CartItemTotalsImplFromJson(Map<String, dynamic> json) =>
    _$CartItemTotalsImpl(
      lineSubtotal: json['line_subtotal'] as String?,
      lineSubtotalTax: json['line_subtotal_tax'] as String?,
      lineTotal: json['line_total'] as String?,
      lineTotalTax: json['line_total_tax'] as String?,
      currencyCode: json['currency_code'] as String?,
      currencySymbol: json['currency_symbol'] as String?,
      currencyMinorUnit: (json['currency_minor_unit'] as num?)?.toInt(),
      currencyDecimalSeparator: json['currency_decimal_separator'] as String?,
      currencyThousandSeparator: json['currency_thousand_separator'] as String?,
      currencyPrefix: json['currency_prefix'] as String?,
      currencySuffix: json['currency_suffix'] as String?,
    );

Map<String, dynamic> _$$CartItemTotalsImplToJson(
    _$CartItemTotalsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('line_subtotal', instance.lineSubtotal);
  writeNotNull('line_subtotal_tax', instance.lineSubtotalTax);
  writeNotNull('line_total', instance.lineTotal);
  writeNotNull('line_total_tax', instance.lineTotalTax);
  writeNotNull('currency_code', instance.currencyCode);
  writeNotNull('currency_symbol', instance.currencySymbol);
  writeNotNull('currency_minor_unit', instance.currencyMinorUnit);
  writeNotNull('currency_decimal_separator', instance.currencyDecimalSeparator);
  writeNotNull(
      'currency_thousand_separator', instance.currencyThousandSeparator);
  writeNotNull('currency_prefix', instance.currencyPrefix);
  writeNotNull('currency_suffix', instance.currencySuffix);
  return val;
}

_$CartItemQuantityLimitsImpl _$$CartItemQuantityLimitsImplFromJson(
        Map<String, dynamic> json) =>
    _$CartItemQuantityLimitsImpl(
      minimum: (json['minimum'] as num?)?.toInt(),
      maximum: (json['maximum'] as num?)?.toInt(),
      multipleOf: (json['multiple_of'] as num?)?.toInt(),
      editable: json['editable'] as bool?,
    );

Map<String, dynamic> _$$CartItemQuantityLimitsImplToJson(
    _$CartItemQuantityLimitsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('minimum', instance.minimum);
  writeNotNull('maximum', instance.maximum);
  writeNotNull('multiple_of', instance.multipleOf);
  writeNotNull('editable', instance.editable);
  return val;
}
