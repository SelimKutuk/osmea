// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abandoned_checkouts_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AbandonedCheckoutsListResponseImpl
    _$$AbandonedCheckoutsListResponseImplFromJson(Map<String, dynamic> json) =>
        _$AbandonedCheckoutsListResponseImpl(
          checkouts: (json['checkouts'] as List<dynamic>?)
              ?.map((e) => Checkout.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$AbandonedCheckoutsListResponseImplToJson(
    _$AbandonedCheckoutsListResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'checkouts', instance.checkouts?.map((e) => e.toJson()).toList());
  return val;
}

_$CheckoutImpl _$$CheckoutImplFromJson(Map<String, dynamic> json) =>
    _$CheckoutImpl(
      id: (json['id'] as num?)?.toInt(),
      token: json['token'] as String?,
      cartToken: json['cart_token'] as String?,
      email: json['email'] as String?,
      gateway: json['gateway'] as String?,
      buyerAcceptsMarketing: json['buyer_accepts_marketing'] as bool?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      landingSite: json['landing_site'],
      note: json['note'],
      noteAttributes: (json['note_attributes'] as List<dynamic>?)
          ?.map((e) => NoteAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      referringSite: json['referring_site'],
      shippingLines: (json['shipping_lines'] as List<dynamic>?)
          ?.map((e) => ShippingLine.fromJson(e as Map<String, dynamic>))
          .toList(),
      taxesIncluded: json['taxes_included'] as bool?,
      totalWeight: (json['total_weight'] as num?)?.toInt(),
      currency: json['currency'] as String?,
      completedAt: json['completed_at'] as String?,
      closedAt: json['closed_at'],
      userId: json['user_id'],
      locationId: json['location_id'],
      sourceIdentifier: json['source_identifier'],
      sourceUrl: json['source_url'],
      deviceId: json['device_id'],
      phone: json['phone'],
      customerLocale: json['customer_locale'],
      lineItems: (json['line_items'] as List<dynamic>?)
          ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      source: json['source'],
      abandonedCheckoutUrl: json['abandoned_checkout_url'] as String?,
      discountCodes: (json['discount_codes'] as List<dynamic>?)
          ?.map((e) => DiscountCode.fromJson(e as Map<String, dynamic>))
          .toList(),
      taxLines: (json['tax_lines'] as List<dynamic>?)
          ?.map((e) => TaxLine.fromJson(e as Map<String, dynamic>))
          .toList(),
      sourceName: json['source_name'] as String?,
      presentmentCurrency: json['presentment_currency'] as String?,
      totalDiscounts: json['total_discounts'] as String?,
      totalLineItemsPrice: json['total_line_items_price'] as String?,
      totalPrice: json['total_price'] as String?,
      totalTax: json['total_tax'] as String?,
      subtotalPrice: json['subtotal_price'] as String?,
      billingAddress: json['billing_address'] == null
          ? null
          : Address.fromJson(json['billing_address'] as Map<String, dynamic>),
      shippingAddress: json['shipping_address'] == null
          ? null
          : Address.fromJson(json['shipping_address'] as Map<String, dynamic>),
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CheckoutImplToJson(_$CheckoutImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('token', instance.token);
  writeNotNull('cart_token', instance.cartToken);
  writeNotNull('email', instance.email);
  writeNotNull('gateway', instance.gateway);
  writeNotNull('buyer_accepts_marketing', instance.buyerAcceptsMarketing);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('landing_site', instance.landingSite);
  writeNotNull('note', instance.note);
  writeNotNull('note_attributes',
      instance.noteAttributes?.map((e) => e.toJson()).toList());
  writeNotNull('referring_site', instance.referringSite);
  writeNotNull('shipping_lines',
      instance.shippingLines?.map((e) => e.toJson()).toList());
  writeNotNull('taxes_included', instance.taxesIncluded);
  writeNotNull('total_weight', instance.totalWeight);
  writeNotNull('currency', instance.currency);
  writeNotNull('completed_at', instance.completedAt);
  writeNotNull('closed_at', instance.closedAt);
  writeNotNull('user_id', instance.userId);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('source_identifier', instance.sourceIdentifier);
  writeNotNull('source_url', instance.sourceUrl);
  writeNotNull('device_id', instance.deviceId);
  writeNotNull('phone', instance.phone);
  writeNotNull('customer_locale', instance.customerLocale);
  writeNotNull(
      'line_items', instance.lineItems?.map((e) => e.toJson()).toList());
  writeNotNull('name', instance.name);
  writeNotNull('source', instance.source);
  writeNotNull('abandoned_checkout_url', instance.abandonedCheckoutUrl);
  writeNotNull('discount_codes',
      instance.discountCodes?.map((e) => e.toJson()).toList());
  writeNotNull('tax_lines', instance.taxLines?.map((e) => e.toJson()).toList());
  writeNotNull('source_name', instance.sourceName);
  writeNotNull('presentment_currency', instance.presentmentCurrency);
  writeNotNull('total_discounts', instance.totalDiscounts);
  writeNotNull('total_line_items_price', instance.totalLineItemsPrice);
  writeNotNull('total_price', instance.totalPrice);
  writeNotNull('total_tax', instance.totalTax);
  writeNotNull('subtotal_price', instance.subtotalPrice);
  writeNotNull('billing_address', instance.billingAddress?.toJson());
  writeNotNull('shipping_address', instance.shippingAddress?.toJson());
  writeNotNull('customer', instance.customer?.toJson());
  return val;
}

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      firstName: json['first_name'] as String?,
      address1: json['address1'] as String?,
      phone: json['phone'] as String?,
      city: json['city'] as String?,
      zip: json['zip'] as String?,
      province: json['province'] as String?,
      country: json['country'] as String?,
      lastName: json['last_name'] as String?,
      address2: json['address2'] as String?,
      company: json['company'],
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      name: json['name'] as String?,
      countryCode: json['country_code'] as String?,
      provinceCode: json['province_code'] as String?,
      id: (json['id'] as num?)?.toInt(),
      customerId: (json['customer_id'] as num?)?.toInt(),
      countryName: json['country_name'] as String?,
      addressDefault: json['default'] as bool?,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('address1', instance.address1);
  writeNotNull('phone', instance.phone);
  writeNotNull('city', instance.city);
  writeNotNull('zip', instance.zip);
  writeNotNull('province', instance.province);
  writeNotNull('country', instance.country);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('address2', instance.address2);
  writeNotNull('company', instance.company);
  writeNotNull('latitude', instance.latitude);
  writeNotNull('longitude', instance.longitude);
  writeNotNull('name', instance.name);
  writeNotNull('country_code', instance.countryCode);
  writeNotNull('province_code', instance.provinceCode);
  writeNotNull('id', instance.id);
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('country_name', instance.countryName);
  writeNotNull('default', instance.addressDefault);
  return val;
}

_$CustomerImpl _$$CustomerImplFromJson(Map<String, dynamic> json) =>
    _$CustomerImpl(
      id: (json['id'] as num?)?.toInt(),
      email: json['email'] as String?,
      acceptsMarketing: json['accepts_marketing'] as bool?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      ordersCount: (json['orders_count'] as num?)?.toInt(),
      state: json['state'] as String?,
      totalSpent: json['total_spent'] as String?,
      lastOrderId: (json['last_order_id'] as num?)?.toInt(),
      note: json['note'],
      verifiedEmail: json['verified_email'] as bool?,
      multipassIdentifier: json['multipass_identifier'],
      taxExempt: json['tax_exempt'] as bool?,
      phone: json['phone'],
      tags: json['tags'] as String?,
      lastOrderName: json['last_order_name'] as String?,
      currency: json['currency'] as String?,
      acceptsMarketingUpdatedAt:
          json['accepts_marketing_updated_at'] as String?,
      marketingOptInLevel: json['marketing_opt_in_level'],
      taxExemptions: json['tax_exemptions'] as List<dynamic>?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
      defaultAddress: json['default_address'] == null
          ? null
          : Address.fromJson(json['default_address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CustomerImplToJson(_$CustomerImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('email', instance.email);
  writeNotNull('accepts_marketing', instance.acceptsMarketing);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('orders_count', instance.ordersCount);
  writeNotNull('state', instance.state);
  writeNotNull('total_spent', instance.totalSpent);
  writeNotNull('last_order_id', instance.lastOrderId);
  writeNotNull('note', instance.note);
  writeNotNull('verified_email', instance.verifiedEmail);
  writeNotNull('multipass_identifier', instance.multipassIdentifier);
  writeNotNull('tax_exempt', instance.taxExempt);
  writeNotNull('phone', instance.phone);
  writeNotNull('tags', instance.tags);
  writeNotNull('last_order_name', instance.lastOrderName);
  writeNotNull('currency', instance.currency);
  writeNotNull(
      'accepts_marketing_updated_at', instance.acceptsMarketingUpdatedAt);
  writeNotNull('marketing_opt_in_level', instance.marketingOptInLevel);
  writeNotNull('tax_exemptions', instance.taxExemptions);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull('default_address', instance.defaultAddress?.toJson());
  return val;
}

_$DiscountCodeImpl _$$DiscountCodeImplFromJson(Map<String, dynamic> json) =>
    _$DiscountCodeImpl(
      code: json['code'] as String?,
      amount: json['amount'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$DiscountCodeImplToJson(_$DiscountCodeImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('amount', instance.amount);
  writeNotNull('type', instance.type);
  return val;
}

_$LineItemImpl _$$LineItemImplFromJson(Map<String, dynamic> json) =>
    _$LineItemImpl(
      appliedDiscounts: json['applied_discounts'] as List<dynamic>?,
      key: json['key'],
      destinationLocationId: json['destination_location_id'],
      fulfillmentService: json['fulfillment_service'] as String?,
      giftCard: json['gift_card'] as bool?,
      grams: (json['grams'] as num?)?.toInt(),
      originLocationId: json['origin_location_id'],
      productId: (json['product_id'] as num?)?.toInt(),
      properties: json['properties'],
      quantity: (json['quantity'] as num?)?.toInt(),
      requiresShipping: json['requires_shipping'] as bool?,
      sku: json['sku'] as String?,
      taxLines: json['tax_lines'] as List<dynamic>?,
      taxable: json['taxable'] as bool?,
      title: json['title'] as String?,
      variantId: (json['variant_id'] as num?)?.toInt(),
      variantTitle: json['variant_title'] as String?,
      variantPrice: json['variant_price'],
      vendor: json['vendor'] as String?,
      userId: json['user_id'],
      unitPriceMeasurement: json['unit_price_measurement'],
      countryHsCodes: json['country_hs_codes'] as List<dynamic>?,
      countryCodeOfOrigin: json['country_code_of_origin'],
      provinceCodeOfOrigin: json['province_code_of_origin'],
      harmonizedSystemCode: json['harmonized_system_code'],
      compareAtPrice: json['compare_at_price'],
      linePrice: json['line_price'] as String?,
      price: json['price'] as String?,
    );

Map<String, dynamic> _$$LineItemImplToJson(_$LineItemImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('applied_discounts', instance.appliedDiscounts);
  writeNotNull('key', instance.key);
  writeNotNull('destination_location_id', instance.destinationLocationId);
  writeNotNull('fulfillment_service', instance.fulfillmentService);
  writeNotNull('gift_card', instance.giftCard);
  writeNotNull('grams', instance.grams);
  writeNotNull('origin_location_id', instance.originLocationId);
  writeNotNull('product_id', instance.productId);
  writeNotNull('properties', instance.properties);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('requires_shipping', instance.requiresShipping);
  writeNotNull('sku', instance.sku);
  writeNotNull('tax_lines', instance.taxLines);
  writeNotNull('taxable', instance.taxable);
  writeNotNull('title', instance.title);
  writeNotNull('variant_id', instance.variantId);
  writeNotNull('variant_title', instance.variantTitle);
  writeNotNull('variant_price', instance.variantPrice);
  writeNotNull('vendor', instance.vendor);
  writeNotNull('user_id', instance.userId);
  writeNotNull('unit_price_measurement', instance.unitPriceMeasurement);
  writeNotNull('country_hs_codes', instance.countryHsCodes);
  writeNotNull('country_code_of_origin', instance.countryCodeOfOrigin);
  writeNotNull('province_code_of_origin', instance.provinceCodeOfOrigin);
  writeNotNull('harmonized_system_code', instance.harmonizedSystemCode);
  writeNotNull('compare_at_price', instance.compareAtPrice);
  writeNotNull('line_price', instance.linePrice);
  writeNotNull('price', instance.price);
  return val;
}

_$NoteAttributeImpl _$$NoteAttributeImplFromJson(Map<String, dynamic> json) =>
    _$NoteAttributeImpl(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$NoteAttributeImplToJson(_$NoteAttributeImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('value', instance.value);
  return val;
}

_$ShippingLineImpl _$$ShippingLineImplFromJson(Map<String, dynamic> json) =>
    _$ShippingLineImpl(
      title: json['title'] as String?,
      price: json['price'] as String?,
      code: json['code'] as String?,
      source: json['source'] as String?,
      appliedDiscounts: json['applied_discounts'] as List<dynamic>?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$ShippingLineImplToJson(_$ShippingLineImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('price', instance.price);
  writeNotNull('code', instance.code);
  writeNotNull('source', instance.source);
  writeNotNull('applied_discounts', instance.appliedDiscounts);
  writeNotNull('id', instance.id);
  return val;
}

_$TaxLineImpl _$$TaxLineImplFromJson(Map<String, dynamic> json) =>
    _$TaxLineImpl(
      price: json['price'] as String?,
      rate: (json['rate'] as num?)?.toDouble(),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$TaxLineImplToJson(_$TaxLineImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('price', instance.price);
  writeNotNull('rate', instance.rate);
  writeNotNull('title', instance.title);
  return val;
}
