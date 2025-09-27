// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateItemRequestImpl _$$UpdateItemRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateItemRequestImpl(
      items: (json['items'] as List<dynamic>?)
          ?.map(
              (e) => UpdateItemRequestItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      coupons: json['coupons'] as List<dynamic>?,
      fees: json['fees'] as List<dynamic>?,
      totals: json['totals'] == null
          ? null
          : UpdateItemRequestTotals.fromJson(
              json['totals'] as Map<String, dynamic>),
      shippingAddress: json['shipping_address'] == null
          ? null
          : ShippingAddress.fromJson(
              json['shipping_address'] as Map<String, dynamic>),
      billingAddress: json['billing_address'] == null
          ? null
          : BillingAddress.fromJson(
              json['billing_address'] as Map<String, dynamic>),
      needsPayment: json['needs_payment'] as bool?,
      needsShipping: json['needs_shipping'] as bool?,
      paymentRequirements: (json['payment_requirements'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      hasCalculatedShipping: json['has_calculated_shipping'] as bool?,
      shippingRates: (json['shipping_rates'] as List<dynamic>?)
          ?.map((e) => ShippingRate.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemsCount: (json['items_count'] as num?)?.toInt(),
      itemsWeight: (json['items_weight'] as num?)?.toInt(),
      crossSells: json['cross_sells'] as List<dynamic>?,
      errors: json['errors'] as List<dynamic>?,
      paymentMethods: (json['payment_methods'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      extensions: json['extensions'] == null
          ? null
          : Extensions.fromJson(json['extensions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateItemRequestImplToJson(
    _$UpdateItemRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  writeNotNull('coupons', instance.coupons);
  writeNotNull('fees', instance.fees);
  writeNotNull('totals', instance.totals?.toJson());
  writeNotNull('shipping_address', instance.shippingAddress?.toJson());
  writeNotNull('billing_address', instance.billingAddress?.toJson());
  writeNotNull('needs_payment', instance.needsPayment);
  writeNotNull('needs_shipping', instance.needsShipping);
  writeNotNull('payment_requirements', instance.paymentRequirements);
  writeNotNull('has_calculated_shipping', instance.hasCalculatedShipping);
  writeNotNull('shipping_rates',
      instance.shippingRates?.map((e) => e.toJson()).toList());
  writeNotNull('items_count', instance.itemsCount);
  writeNotNull('items_weight', instance.itemsWeight);
  writeNotNull('cross_sells', instance.crossSells);
  writeNotNull('errors', instance.errors);
  writeNotNull('payment_methods', instance.paymentMethods);
  writeNotNull('extensions', instance.extensions?.toJson());
  return val;
}

_$BillingAddressImpl _$$BillingAddressImplFromJson(Map<String, dynamic> json) =>
    _$BillingAddressImpl(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      company: json['company'] as String?,
      address1: json['address_1'] as String?,
      address2: json['address_2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      postcode: json['postcode'] as String?,
      country: json['country'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$BillingAddressImplToJson(
    _$BillingAddressImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('company', instance.company);
  writeNotNull('address_1', instance.address1);
  writeNotNull('address_2', instance.address2);
  writeNotNull('city', instance.city);
  writeNotNull('state', instance.state);
  writeNotNull('postcode', instance.postcode);
  writeNotNull('country', instance.country);
  writeNotNull('email', instance.email);
  writeNotNull('phone', instance.phone);
  return val;
}

_$ExtensionsImpl _$$ExtensionsImplFromJson(Map<String, dynamic> json) =>
    _$ExtensionsImpl();

Map<String, dynamic> _$$ExtensionsImplToJson(_$ExtensionsImpl instance) =>
    <String, dynamic>{};

_$UpdateItemRequestItemImpl _$$UpdateItemRequestItemImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateItemRequestItemImpl(
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
          : ItemTotals.fromJson(json['totals'] as Map<String, dynamic>),
      catalogVisibility: json['catalog_visibility'] as String?,
      extensions: json['extensions'] == null
          ? null
          : Extensions.fromJson(json['extensions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateItemRequestItemImplToJson(
    _$UpdateItemRequestItemImpl instance) {
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

_$ItemTotalsImpl _$$ItemTotalsImplFromJson(Map<String, dynamic> json) =>
    _$ItemTotalsImpl(
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

Map<String, dynamic> _$$ItemTotalsImplToJson(_$ItemTotalsImpl instance) {
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

_$ShippingAddressImpl _$$ShippingAddressImplFromJson(
        Map<String, dynamic> json) =>
    _$ShippingAddressImpl(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      company: json['company'] as String?,
      address1: json['address_1'] as String?,
      address2: json['address_2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      postcode: json['postcode'] as String?,
      country: json['country'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$ShippingAddressImplToJson(
    _$ShippingAddressImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('company', instance.company);
  writeNotNull('address_1', instance.address1);
  writeNotNull('address_2', instance.address2);
  writeNotNull('city', instance.city);
  writeNotNull('state', instance.state);
  writeNotNull('postcode', instance.postcode);
  writeNotNull('country', instance.country);
  writeNotNull('phone', instance.phone);
  return val;
}

_$ShippingRateImpl _$$ShippingRateImplFromJson(Map<String, dynamic> json) =>
    _$ShippingRateImpl(
      packageId: (json['package_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      destination: json['destination'] == null
          ? null
          : Destination.fromJson(json['destination'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ShippingRateItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      shippingRates: json['shipping_rates'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ShippingRateImplToJson(_$ShippingRateImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('package_id', instance.packageId);
  writeNotNull('name', instance.name);
  writeNotNull('destination', instance.destination?.toJson());
  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  writeNotNull('shipping_rates', instance.shippingRates);
  return val;
}

_$DestinationImpl _$$DestinationImplFromJson(Map<String, dynamic> json) =>
    _$DestinationImpl(
      address1: json['address_1'] as String?,
      address2: json['address_2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      postcode: json['postcode'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$DestinationImplToJson(_$DestinationImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address_1', instance.address1);
  writeNotNull('address_2', instance.address2);
  writeNotNull('city', instance.city);
  writeNotNull('state', instance.state);
  writeNotNull('postcode', instance.postcode);
  writeNotNull('country', instance.country);
  return val;
}

_$ShippingRateItemImpl _$$ShippingRateItemImplFromJson(
        Map<String, dynamic> json) =>
    _$ShippingRateItemImpl(
      key: json['key'] as String?,
      name: json['name'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ShippingRateItemImplToJson(
    _$ShippingRateItemImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull('name', instance.name);
  writeNotNull('quantity', instance.quantity);
  return val;
}

_$UpdateItemRequestTotalsImpl _$$UpdateItemRequestTotalsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateItemRequestTotalsImpl(
      totalItems: json['total_items'] as String?,
      totalItemsTax: json['total_items_tax'] as String?,
      totalFees: json['total_fees'] as String?,
      totalFeesTax: json['total_fees_tax'] as String?,
      totalDiscount: json['total_discount'] as String?,
      totalDiscountTax: json['total_discount_tax'] as String?,
      totalShipping: json['total_shipping'] as String?,
      totalShippingTax: json['total_shipping_tax'] as String?,
      totalPrice: json['total_price'] as String?,
      totalTax: json['total_tax'] as String?,
      taxLines: json['tax_lines'] as List<dynamic>?,
      currencyCode: json['currency_code'] as String?,
      currencySymbol: json['currency_symbol'] as String?,
      currencyMinorUnit: (json['currency_minor_unit'] as num?)?.toInt(),
      currencyDecimalSeparator: json['currency_decimal_separator'] as String?,
      currencyThousandSeparator: json['currency_thousand_separator'] as String?,
      currencyPrefix: json['currency_prefix'] as String?,
      currencySuffix: json['currency_suffix'] as String?,
    );

Map<String, dynamic> _$$UpdateItemRequestTotalsImplToJson(
    _$UpdateItemRequestTotalsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('total_items', instance.totalItems);
  writeNotNull('total_items_tax', instance.totalItemsTax);
  writeNotNull('total_fees', instance.totalFees);
  writeNotNull('total_fees_tax', instance.totalFeesTax);
  writeNotNull('total_discount', instance.totalDiscount);
  writeNotNull('total_discount_tax', instance.totalDiscountTax);
  writeNotNull('total_shipping', instance.totalShipping);
  writeNotNull('total_shipping_tax', instance.totalShippingTax);
  writeNotNull('total_price', instance.totalPrice);
  writeNotNull('total_tax', instance.totalTax);
  writeNotNull('tax_lines', instance.taxLines);
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
