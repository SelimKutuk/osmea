// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_checkout_data_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateCheckoutDataResponseModelImpl
    _$$UpdateCheckoutDataResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$UpdateCheckoutDataResponseModelImpl(
          orderId: (json['order_id'] as num?)?.toInt(),
          status: json['status'] as String?,
          orderKey: json['order_key'] as String?,
          orderNumber: json['order_number'] as String?,
          customerNote: json['customer_note'] as String?,
          customerId: (json['customer_id'] as num?)?.toInt(),
          billingAddress: json['billing_address'] == null
              ? null
              : IngAddress.fromJson(
                  json['billing_address'] as Map<String, dynamic>),
          shippingAddress: json['shipping_address'] == null
              ? null
              : IngAddress.fromJson(
                  json['shipping_address'] as Map<String, dynamic>),
          paymentMethod: json['payment_method'] as String?,
          paymentResult: json['payment_result'],
          additionalFields: json['additional_fields'] == null
              ? null
              : AdditionalFields.fromJson(
                  json['additional_fields'] as Map<String, dynamic>),
          experimentalCart: json['__experimentalCart'] == null
              ? null
              : ExperimentalCart.fromJson(
                  json['__experimentalCart'] as Map<String, dynamic>),
          extensions: json['extensions'] == null
              ? null
              : AdditionalFields.fromJson(
                  json['extensions'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$UpdateCheckoutDataResponseModelImplToJson(
        _$UpdateCheckoutDataResponseModelImpl instance) =>
    <String, dynamic>{
      if (instance.orderId case final value?) 'order_id': value,
      if (instance.status case final value?) 'status': value,
      if (instance.orderKey case final value?) 'order_key': value,
      if (instance.orderNumber case final value?) 'order_number': value,
      if (instance.customerNote case final value?) 'customer_note': value,
      if (instance.customerId case final value?) 'customer_id': value,
      if (instance.billingAddress?.toJson() case final value?)
        'billing_address': value,
      if (instance.shippingAddress?.toJson() case final value?)
        'shipping_address': value,
      if (instance.paymentMethod case final value?) 'payment_method': value,
      if (instance.paymentResult case final value?) 'payment_result': value,
      if (instance.additionalFields?.toJson() case final value?)
        'additional_fields': value,
      if (instance.experimentalCart?.toJson() case final value?)
        '__experimentalCart': value,
      if (instance.extensions?.toJson() case final value?) 'extensions': value,
    };

_$AdditionalFieldsImpl _$$AdditionalFieldsImplFromJson(
        Map<String, dynamic> json) =>
    _$AdditionalFieldsImpl();

Map<String, dynamic> _$$AdditionalFieldsImplToJson(
        _$AdditionalFieldsImpl instance) =>
    <String, dynamic>{};

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

_$ExperimentalCartImpl _$$ExperimentalCartImplFromJson(
        Map<String, dynamic> json) =>
    _$ExperimentalCartImpl(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ExperimentalCartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      coupons: json['coupons'] as List<dynamic>?,
      fees: json['fees'] as List<dynamic>?,
      totals: json['totals'] == null
          ? null
          : ExperimentalCartTotals.fromJson(
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
      hasCalculatedShipping: json['has_calculated_shipping'] as bool?,
      shippingRates: (json['shipping_rates'] as List<dynamic>?)
          ?.map((e) =>
              ExperimentalCartShippingRate.fromJson(e as Map<String, dynamic>))
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
          : AdditionalFields.fromJson(
              json['extensions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ExperimentalCartImplToJson(
        _$ExperimentalCartImpl instance) =>
    <String, dynamic>{
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
      if (instance.hasCalculatedShipping case final value?)
        'has_calculated_shipping': value,
      if (instance.shippingRates?.map((e) => e.toJson()).toList()
          case final value?)
        'shipping_rates': value,
      if (instance.itemsCount case final value?) 'items_count': value,
      if (instance.itemsWeight case final value?) 'items_weight': value,
      if (instance.crossSells case final value?) 'cross_sells': value,
      if (instance.errors case final value?) 'errors': value,
      if (instance.paymentMethods case final value?) 'payment_methods': value,
      if (instance.extensions?.toJson() case final value?) 'extensions': value,
    };

_$ExperimentalCartItemImpl _$$ExperimentalCartItemImplFromJson(
        Map<String, dynamic> json) =>
    _$ExperimentalCartItemImpl(
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
      extensions: json['extensions'] == null
          ? null
          : AdditionalFields.fromJson(
              json['extensions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ExperimentalCartItemImplToJson(
        _$ExperimentalCartItemImpl instance) =>
    <String, dynamic>{
      if (instance.key case final value?) 'key': value,
      if (instance.id case final value?) 'id': value,
      if (instance.type case final value?) 'type': value,
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
      if (instance.extensions?.toJson() case final value?) 'extensions': value,
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

_$ExperimentalCartShippingRateImpl _$$ExperimentalCartShippingRateImplFromJson(
        Map<String, dynamic> json) =>
    _$ExperimentalCartShippingRateImpl(
      packageId: (json['package_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      destination: json['destination'] == null
          ? null
          : Destination.fromJson(json['destination'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ShippingRateItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      shippingRates: (json['shipping_rates'] as List<dynamic>?)
          ?.map((e) =>
              ShippingRateShippingRate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ExperimentalCartShippingRateImplToJson(
        _$ExperimentalCartShippingRateImpl instance) =>
    <String, dynamic>{
      if (instance.packageId case final value?) 'package_id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.destination?.toJson() case final value?)
        'destination': value,
      if (instance.items?.map((e) => e.toJson()).toList() case final value?)
        'items': value,
      if (instance.shippingRates?.map((e) => e.toJson()).toList()
          case final value?)
        'shipping_rates': value,
    };

_$DestinationImpl _$$DestinationImplFromJson(Map<String, dynamic> json) =>
    _$DestinationImpl(
      address1: json['address_1'] as String?,
      address2: json['address_2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      postcode: json['postcode'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$DestinationImplToJson(_$DestinationImpl instance) =>
    <String, dynamic>{
      if (instance.address1 case final value?) 'address_1': value,
      if (instance.address2 case final value?) 'address_2': value,
      if (instance.city case final value?) 'city': value,
      if (instance.state case final value?) 'state': value,
      if (instance.postcode case final value?) 'postcode': value,
      if (instance.country case final value?) 'country': value,
    };

_$ShippingRateItemImpl _$$ShippingRateItemImplFromJson(
        Map<String, dynamic> json) =>
    _$ShippingRateItemImpl(
      key: json['key'] as String?,
      name: json['name'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ShippingRateItemImplToJson(
        _$ShippingRateItemImpl instance) =>
    <String, dynamic>{
      if (instance.key case final value?) 'key': value,
      if (instance.name case final value?) 'name': value,
      if (instance.quantity case final value?) 'quantity': value,
    };

_$ShippingRateShippingRateImpl _$$ShippingRateShippingRateImplFromJson(
        Map<String, dynamic> json) =>
    _$ShippingRateShippingRateImpl(
      rateId: json['rate_id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      deliveryTime: json['delivery_time'] as String?,
      price: json['price'] as String?,
      taxes: json['taxes'] as String?,
      instanceId: (json['instance_id'] as num?)?.toInt(),
      methodId: json['method_id'] as String?,
      metaData: (json['meta_data'] as List<dynamic>?)
          ?.map((e) => MetaDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      selected: json['selected'] as bool?,
      currencyCode: json['currency_code'] as String?,
      currencySymbol: json['currency_symbol'] as String?,
      currencyMinorUnit: (json['currency_minor_unit'] as num?)?.toInt(),
      currencyDecimalSeparator: json['currency_decimal_separator'] as String?,
      currencyThousandSeparator: json['currency_thousand_separator'] as String?,
      currencyPrefix: json['currency_prefix'] as String?,
      currencySuffix: json['currency_suffix'] as String?,
    );

Map<String, dynamic> _$$ShippingRateShippingRateImplToJson(
        _$ShippingRateShippingRateImpl instance) =>
    <String, dynamic>{
      if (instance.rateId case final value?) 'rate_id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.description case final value?) 'description': value,
      if (instance.deliveryTime case final value?) 'delivery_time': value,
      if (instance.price case final value?) 'price': value,
      if (instance.taxes case final value?) 'taxes': value,
      if (instance.instanceId case final value?) 'instance_id': value,
      if (instance.methodId case final value?) 'method_id': value,
      if (instance.metaData?.map((e) => e.toJson()).toList() case final value?)
        'meta_data': value,
      if (instance.selected case final value?) 'selected': value,
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

_$MetaDatumImpl _$$MetaDatumImplFromJson(Map<String, dynamic> json) =>
    _$MetaDatumImpl(
      key: json['key'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$MetaDatumImplToJson(_$MetaDatumImpl instance) =>
    <String, dynamic>{
      if (instance.key case final value?) 'key': value,
      if (instance.value case final value?) 'value': value,
    };

_$ExperimentalCartTotalsImpl _$$ExperimentalCartTotalsImplFromJson(
        Map<String, dynamic> json) =>
    _$ExperimentalCartTotalsImpl(
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

Map<String, dynamic> _$$ExperimentalCartTotalsImplToJson(
        _$ExperimentalCartTotalsImpl instance) =>
    <String, dynamic>{
      if (instance.totalItems case final value?) 'total_items': value,
      if (instance.totalItemsTax case final value?) 'total_items_tax': value,
      if (instance.totalFees case final value?) 'total_fees': value,
      if (instance.totalFeesTax case final value?) 'total_fees_tax': value,
      if (instance.totalDiscount case final value?) 'total_discount': value,
      if (instance.totalDiscountTax case final value?)
        'total_discount_tax': value,
      if (instance.totalShipping case final value?) 'total_shipping': value,
      if (instance.totalShippingTax case final value?)
        'total_shipping_tax': value,
      if (instance.totalPrice case final value?) 'total_price': value,
      if (instance.totalTax case final value?) 'total_tax': value,
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
