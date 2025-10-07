// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_order_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListOrderResponseModelImpl _$$ListOrderResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ListOrderResponseModelImpl(
      id: (json['id'] as num?)?.toInt(),
      status: json['status'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      coupons: json['coupons'] as List<dynamic>?,
      fees: json['fees'] as List<dynamic>?,
      totals: json['totals'] == null
          ? null
          : ListOrderResponseModelTotals.fromJson(
              json['totals'] as Map<String, dynamic>),
      shippingAddress: json['shipping_address'] == null
          ? null
          : IngAddress.fromJson(
              json['shipping_address'] as Map<String, dynamic>),
      billingAddress: json['billing_address'] == null
          ? null
          : IngAddress.fromJson(
              json['billing_address'] as Map<String, dynamic>),
      needsPayment: json['needs_payment'] as bool?,
      needsShipping: json['needs_shipping'] as bool?,
      paymentRequirements: (json['payment_requirements'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      errors: json['errors'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ListOrderResponseModelImplToJson(
        _$ListOrderResponseModelImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.status case final value?) 'status': value,
      if (instance.items?.map((e) => e.toJson()).toList() case final value?)
        'items': value,
      if (instance.coupons case final value?) 'coupons': value,
      if (instance.fees case final value?) 'fees': value,
      if (instance.totals?.toJson() case final value?) 'totals': value,
      if (instance.shippingAddress?.toJson() case final value?)
        'shipping_address': value,
      if (instance.billingAddress?.toJson() case final value?)
        'billing_address': value,
      if (instance.needsPayment case final value?) 'needs_payment': value,
      if (instance.needsShipping case final value?) 'needs_shipping': value,
      if (instance.paymentRequirements case final value?)
        'payment_requirements': value,
      if (instance.errors case final value?) 'errors': value,
    };

_$IngAddressImpl _$$IngAddressImplFromJson(Map<String, dynamic> json) =>
    _$IngAddressImpl(
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

Map<String, dynamic> _$$IngAddressImplToJson(_$IngAddressImpl instance) =>
    <String, dynamic>{
      if (instance.firstName case final value?) 'first_name': value,
      if (instance.lastName case final value?) 'last_name': value,
      if (instance.company case final value?) 'company': value,
      if (instance.address1 case final value?) 'address_1': value,
      if (instance.address2 case final value?) 'address_2': value,
      if (instance.city case final value?) 'city': value,
      if (instance.state case final value?) 'state': value,
      if (instance.postcode case final value?) 'postcode': value,
      if (instance.country case final value?) 'country': value,
      if (instance.email case final value?) 'email': value,
      if (instance.phone case final value?) 'phone': value,
    };

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      key: json['key'] as String?,
      id: (json['id'] as num?)?.toInt(),
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
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      variation: json['variation'] as List<dynamic>?,
      itemData: json['item_data'] as List<dynamic>?,
      prices: json['prices'] == null
          ? null
          : Prices.fromJson(json['prices'] as Map<String, dynamic>),
      totals: json['totals'] == null
          ? null
          : ItemTotals.fromJson(json['totals'] as Map<String, dynamic>),
      catalogVisibility: json['catalog_visibility'] as String?,
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      if (instance.key case final value?) 'key': value,
      if (instance.id case final value?) 'id': value,
      if (instance.quantity case final value?) 'quantity': value,
      if (instance.quantityLimits?.toJson() case final value?)
        'quantity_limits': value,
      if (instance.name case final value?) 'name': value,
      if (instance.shortDescription case final value?)
        'short_description': value,
      if (instance.description case final value?) 'description': value,
      if (instance.sku case final value?) 'sku': value,
      if (instance.lowStockRemaining case final value?)
        'low_stock_remaining': value,
      if (instance.backordersAllowed case final value?)
        'backorders_allowed': value,
      if (instance.showBackorderBadge case final value?)
        'show_backorder_badge': value,
      if (instance.soldIndividually case final value?)
        'sold_individually': value,
      if (instance.permalink case final value?) 'permalink': value,
      if (instance.images?.map((e) => e.toJson()).toList() case final value?)
        'images': value,
      if (instance.variation case final value?) 'variation': value,
      if (instance.itemData case final value?) 'item_data': value,
      if (instance.prices?.toJson() case final value?) 'prices': value,
      if (instance.totals?.toJson() case final value?) 'totals': value,
      if (instance.catalogVisibility case final value?)
        'catalog_visibility': value,
    };

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      id: (json['id'] as num?)?.toInt(),
      src: json['src'] as String?,
      thumbnail: json['thumbnail'] as String?,
      srcset: json['srcset'] as String?,
      sizes: json['sizes'] as String?,
      name: json['name'] as String?,
      alt: json['alt'] as String?,
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.src case final value?) 'src': value,
      if (instance.thumbnail case final value?) 'thumbnail': value,
      if (instance.srcset case final value?) 'srcset': value,
      if (instance.sizes case final value?) 'sizes': value,
      if (instance.name case final value?) 'name': value,
      if (instance.alt case final value?) 'alt': value,
    };

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

Map<String, dynamic> _$$PricesImplToJson(_$PricesImpl instance) =>
    <String, dynamic>{
      if (instance.price case final value?) 'price': value,
      if (instance.regularPrice case final value?) 'regular_price': value,
      if (instance.salePrice case final value?) 'sale_price': value,
      if (instance.priceRange case final value?) 'price_range': value,
      if (instance.currencyCode case final value?) 'currency_code': value,
      if (instance.currencySymbol case final value?) 'currency_symbol': value,
      if (instance.currencyMinorUnit case final value?)
        'currency_minor_unit': value,
      if (instance.currencyDecimalSeparator case final value?)
        'currency_decimal_separator': value,
      if (instance.currencyThousandSeparator case final value?)
        'currency_thousand_separator': value,
      if (instance.currencyPrefix case final value?) 'currency_prefix': value,
      if (instance.currencySuffix case final value?) 'currency_suffix': value,
      if (instance.rawPrices?.toJson() case final value?) 'raw_prices': value,
    };

_$RawPricesImpl _$$RawPricesImplFromJson(Map<String, dynamic> json) =>
    _$RawPricesImpl(
      precision: (json['precision'] as num?)?.toInt(),
      price: json['price'] as String?,
      regularPrice: json['regular_price'] as String?,
      salePrice: json['sale_price'] as String?,
    );

Map<String, dynamic> _$$RawPricesImplToJson(_$RawPricesImpl instance) =>
    <String, dynamic>{
      if (instance.precision case final value?) 'precision': value,
      if (instance.price case final value?) 'price': value,
      if (instance.regularPrice case final value?) 'regular_price': value,
      if (instance.salePrice case final value?) 'sale_price': value,
    };

_$QuantityLimitsImpl _$$QuantityLimitsImplFromJson(Map<String, dynamic> json) =>
    _$QuantityLimitsImpl(
      minimum: (json['minimum'] as num?)?.toInt(),
      maximum: (json['maximum'] as num?)?.toInt(),
      multipleOf: (json['multiple_of'] as num?)?.toInt(),
      editable: json['editable'] as bool?,
    );

Map<String, dynamic> _$$QuantityLimitsImplToJson(
        _$QuantityLimitsImpl instance) =>
    <String, dynamic>{
      if (instance.minimum case final value?) 'minimum': value,
      if (instance.maximum case final value?) 'maximum': value,
      if (instance.multipleOf case final value?) 'multiple_of': value,
      if (instance.editable case final value?) 'editable': value,
    };

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

Map<String, dynamic> _$$ItemTotalsImplToJson(_$ItemTotalsImpl instance) =>
    <String, dynamic>{
      if (instance.lineSubtotal case final value?) 'line_subtotal': value,
      if (instance.lineSubtotalTax case final value?)
        'line_subtotal_tax': value,
      if (instance.lineTotal case final value?) 'line_total': value,
      if (instance.lineTotalTax case final value?) 'line_total_tax': value,
      if (instance.currencyCode case final value?) 'currency_code': value,
      if (instance.currencySymbol case final value?) 'currency_symbol': value,
      if (instance.currencyMinorUnit case final value?)
        'currency_minor_unit': value,
      if (instance.currencyDecimalSeparator case final value?)
        'currency_decimal_separator': value,
      if (instance.currencyThousandSeparator case final value?)
        'currency_thousand_separator': value,
      if (instance.currencyPrefix case final value?) 'currency_prefix': value,
      if (instance.currencySuffix case final value?) 'currency_suffix': value,
    };

_$ListOrderResponseModelTotalsImpl _$$ListOrderResponseModelTotalsImplFromJson(
        Map<String, dynamic> json) =>
    _$ListOrderResponseModelTotalsImpl(
      subtotal: json['subtotal'] as String?,
      totalDiscount: json['total_discount'] as String?,
      totalShipping: json['total_shipping'] as String?,
      totalFees: json['total_fees'] as String?,
      totalTax: json['total_tax'] as String?,
      totalRefund: json['total_refund'] as String?,
      totalPrice: json['total_price'] as String?,
      totalItems: json['total_items'] as String?,
      totalItemsTax: json['total_items_tax'] as String?,
      totalFeesTax: json['total_fees_tax'] as String?,
      totalDiscountTax: json['total_discount_tax'] as String?,
      totalShippingTax: json['total_shipping_tax'] as String?,
      taxLines: json['tax_lines'] as List<dynamic>?,
      currencyCode: json['currency_code'] as String?,
      currencySymbol: json['currency_symbol'] as String?,
      currencyMinorUnit: (json['currency_minor_unit'] as num?)?.toInt(),
      currencyDecimalSeparator: json['currency_decimal_separator'] as String?,
      currencyThousandSeparator: json['currency_thousand_separator'] as String?,
      currencyPrefix: json['currency_prefix'] as String?,
      currencySuffix: json['currency_suffix'] as String?,
    );

Map<String, dynamic> _$$ListOrderResponseModelTotalsImplToJson(
        _$ListOrderResponseModelTotalsImpl instance) =>
    <String, dynamic>{
      if (instance.subtotal case final value?) 'subtotal': value,
      if (instance.totalDiscount case final value?) 'total_discount': value,
      if (instance.totalShipping case final value?) 'total_shipping': value,
      if (instance.totalFees case final value?) 'total_fees': value,
      if (instance.totalTax case final value?) 'total_tax': value,
      if (instance.totalRefund case final value?) 'total_refund': value,
      if (instance.totalPrice case final value?) 'total_price': value,
      if (instance.totalItems case final value?) 'total_items': value,
      if (instance.totalItemsTax case final value?) 'total_items_tax': value,
      if (instance.totalFeesTax case final value?) 'total_fees_tax': value,
      if (instance.totalDiscountTax case final value?)
        'total_discount_tax': value,
      if (instance.totalShippingTax case final value?)
        'total_shipping_tax': value,
      if (instance.taxLines case final value?) 'tax_lines': value,
      if (instance.currencyCode case final value?) 'currency_code': value,
      if (instance.currencySymbol case final value?) 'currency_symbol': value,
      if (instance.currencyMinorUnit case final value?)
        'currency_minor_unit': value,
      if (instance.currencyDecimalSeparator case final value?)
        'currency_decimal_separator': value,
      if (instance.currencyThousandSeparator case final value?)
        'currency_thousand_separator': value,
      if (instance.currencyPrefix case final value?) 'currency_prefix': value,
      if (instance.currencySuffix case final value?) 'currency_suffix': value,
    };
