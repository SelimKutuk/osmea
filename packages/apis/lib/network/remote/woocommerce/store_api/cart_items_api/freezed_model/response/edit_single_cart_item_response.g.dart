// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_single_cart_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditSingleCartItemResponseImpl _$$EditSingleCartItemResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EditSingleCartItemResponseImpl(
      key: json['key'] as String?,
      id: (json['id'] as num?)?.toInt(),
      type: json['type'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      quantityLimits: json['quantity_limits'] == null
          ? null
          : QuantityLimits.fromJson(
              json['quantity_limits'] as Map<String, dynamic>),
      name: json['name'] as String?,
      shortDescription: json['short_description'] as String?,
      description: json['description'] as String?,
      sku: json['sku'] as String?,
      lowStockRemaining: json['low_stock_remaining'],
      backordersAllowed: json['backorders_allowed'] as bool?,
      showBackorderBadge: json['show_backorder_badge'] as bool?,
      soldIndividually: json['sold_individually'] as bool?,
      permalink: json['permalink'] as String?,
      images: json['images'] as List<dynamic>?,
      variation: json['variation'] as List<dynamic>?,
      itemData: json['item_data'] as List<dynamic>?,
      prices: json['prices'] == null
          ? null
          : Prices.fromJson(json['prices'] as Map<String, dynamic>),
      totals: json['totals'] == null
          ? null
          : Totals.fromJson(json['totals'] as Map<String, dynamic>),
      catalogVisibility: json['catalog_visibility'] as String?,
      extensions: json['extensions'] == null
          ? null
          : Extensions.fromJson(json['extensions'] as Map<String, dynamic>),
      links: json['_links'] == null
          ? null
          : Links.fromJson(json['_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EditSingleCartItemResponseImplToJson(
    _$EditSingleCartItemResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull('id', instance.id);
  writeNotNull('type', instance.type);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('quantity_limits', instance.quantityLimits?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('short_description', instance.shortDescription);
  writeNotNull('description', instance.description);
  writeNotNull('sku', instance.sku);
  writeNotNull('low_stock_remaining', instance.lowStockRemaining);
  writeNotNull('backorders_allowed', instance.backordersAllowed);
  writeNotNull('show_backorder_badge', instance.showBackorderBadge);
  writeNotNull('sold_individually', instance.soldIndividually);
  writeNotNull('permalink', instance.permalink);
  writeNotNull('images', instance.images);
  writeNotNull('variation', instance.variation);
  writeNotNull('item_data', instance.itemData);
  writeNotNull('prices', instance.prices?.toJson());
  writeNotNull('totals', instance.totals?.toJson());
  writeNotNull('catalog_visibility', instance.catalogVisibility);
  writeNotNull('extensions', instance.extensions?.toJson());
  writeNotNull('_links', instance.links?.toJson());
  return val;
}

_$ExtensionsImpl _$$ExtensionsImplFromJson(Map<String, dynamic> json) =>
    _$ExtensionsImpl();

Map<String, dynamic> _$$ExtensionsImplToJson(_$ExtensionsImpl instance) =>
    <String, dynamic>{};

_$LinksImpl _$$LinksImplFromJson(Map<String, dynamic> json) => _$LinksImpl(
      self: (json['self'] as List<dynamic>?)
          ?.map((e) => Collection.fromJson(e as Map<String, dynamic>))
          .toList(),
      collection: (json['collection'] as List<dynamic>?)
          ?.map((e) => Collection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LinksImplToJson(_$LinksImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('self', instance.self?.map((e) => e.toJson()).toList());
  writeNotNull(
      'collection', instance.collection?.map((e) => e.toJson()).toList());
  return val;
}

_$CollectionImpl _$$CollectionImplFromJson(Map<String, dynamic> json) =>
    _$CollectionImpl(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$$CollectionImplToJson(_$CollectionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}

_$PricesImpl _$$PricesImplFromJson(Map<String, dynamic> json) => _$PricesImpl(
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
          : RawPrices.fromJson(json['raw_prices'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PricesImplToJson(_$PricesImpl instance) {
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

_$RawPricesImpl _$$RawPricesImplFromJson(Map<String, dynamic> json) =>
    _$RawPricesImpl(
      precision: (json['precision'] as num?)?.toInt(),
      price: json['price'] as String?,
      regularPrice: json['regular_price'] as String?,
      salePrice: json['sale_price'] as String?,
    );

Map<String, dynamic> _$$RawPricesImplToJson(_$RawPricesImpl instance) {
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

_$QuantityLimitsImpl _$$QuantityLimitsImplFromJson(Map<String, dynamic> json) =>
    _$QuantityLimitsImpl(
      minimum: (json['minimum'] as num?)?.toInt(),
      maximum: (json['maximum'] as num?)?.toInt(),
      multipleOf: (json['multiple_of'] as num?)?.toInt(),
      editable: json['editable'] as bool?,
    );

Map<String, dynamic> _$$QuantityLimitsImplToJson(
    _$QuantityLimitsImpl instance) {
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

_$TotalsImpl _$$TotalsImplFromJson(Map<String, dynamic> json) => _$TotalsImpl(
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

Map<String, dynamic> _$$TotalsImplToJson(_$TotalsImpl instance) {
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
