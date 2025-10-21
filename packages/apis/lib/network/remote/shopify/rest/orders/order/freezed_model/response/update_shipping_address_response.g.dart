// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_shipping_address_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateShippingAddressResponseImpl
    _$$UpdateShippingAddressResponseImplFromJson(Map<String, dynamic> json) =>
        _$UpdateShippingAddressResponseImpl(
          order: json['order'] == null
              ? null
              : Order.fromJson(json['order'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$UpdateShippingAddressResponseImplToJson(
    _$UpdateShippingAddressResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order', instance.order?.toJson());
  return val;
}

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      id: (json['id'] as num?)?.toInt(),
      email: json['email'] as String?,
      closedAt: json['closed_at'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      number: (json['number'] as num?)?.toInt(),
      note: json['note'],
      token: json['token'] as String?,
      gateway: json['gateway'] as String?,
      test: json['test'] as bool?,
      totalPrice: json['total_price'] as String?,
      subtotalPrice: json['subtotal_price'] as String?,
      totalWeight: (json['total_weight'] as num?)?.toInt(),
      totalTax: json['total_tax'] as String?,
      taxesIncluded: json['taxes_included'] as bool?,
      currency: json['currency'] as String?,
      financialStatus: json['financial_status'] as String?,
      confirmed: json['confirmed'] as bool?,
      totalDiscounts: json['total_discounts'] as String?,
      totalLineItemsPrice: json['total_line_items_price'] as String?,
      cartToken: json['cart_token'] as String?,
      buyerAcceptsMarketing: json['buyer_accepts_marketing'] as bool?,
      name: json['name'] as String?,
      referringSite: json['referring_site'] as String?,
      landingSite: json['landing_site'] as String?,
      cancelledAt: json['cancelled_at'],
      cancelReason: json['cancel_reason'],
      totalPriceUsd: json['total_price_usd'] as String?,
      checkoutToken: json['checkout_token'] as String?,
      reference: json['reference'] as String?,
      userId: json['user_id'],
      locationId: json['location_id'],
      sourceIdentifier: json['source_identifier'] as String?,
      sourceUrl: json['source_url'],
      processedAt: json['processed_at'] as String?,
      deviceId: json['device_id'],
      phone: json['phone'] as String?,
      customerLocale: json['customer_locale'],
      appId: json['app_id'],
      browserIp: json['browser_ip'] as String?,
      landingSiteRef: json['landing_site_ref'] as String?,
      orderNumber: (json['order_number'] as num?)?.toInt(),
      discountApplications: (json['discount_applications'] as List<dynamic>?)
          ?.map((e) => DiscountApplication.fromJson(e as Map<String, dynamic>))
          .toList(),
      discountCodes: (json['discount_codes'] as List<dynamic>?)
          ?.map((e) => DiscountCode.fromJson(e as Map<String, dynamic>))
          .toList(),
      noteAttributes: (json['note_attributes'] as List<dynamic>?)
          ?.map((e) => NoteAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentGatewayNames: (json['payment_gateway_names'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      processingMethod: json['processing_method'] as String?,
      checkoutId: (json['checkout_id'] as num?)?.toInt(),
      sourceName: json['source_name'] as String?,
      fulfillmentStatus: json['fulfillment_status'],
      taxLines: (json['tax_lines'] as List<dynamic>?)
          ?.map((e) => TaxLine.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: json['tags'] as String?,
      contactEmail: json['contact_email'] as String?,
      orderStatusUrl: json['order_status_url'] as String?,
      presentmentCurrency: json['presentment_currency'] as String?,
      totalLineItemsPriceSet: json['total_line_items_price_set'] == null
          ? null
          : Set.fromJson(
              json['total_line_items_price_set'] as Map<String, dynamic>),
      totalDiscountsSet: json['total_discounts_set'] == null
          ? null
          : Set.fromJson(json['total_discounts_set'] as Map<String, dynamic>),
      totalShippingPriceSet: json['total_shipping_price_set'] == null
          ? null
          : Set.fromJson(
              json['total_shipping_price_set'] as Map<String, dynamic>),
      subtotalPriceSet: json['subtotal_price_set'] == null
          ? null
          : Set.fromJson(json['subtotal_price_set'] as Map<String, dynamic>),
      totalPriceSet: json['total_price_set'] == null
          ? null
          : Set.fromJson(json['total_price_set'] as Map<String, dynamic>),
      totalTaxSet: json['total_tax_set'] == null
          ? null
          : Set.fromJson(json['total_tax_set'] as Map<String, dynamic>),
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
      shippingLines: (json['shipping_lines'] as List<dynamic>?)
          ?.map((e) => ShippingLine.fromJson(e as Map<String, dynamic>))
          .toList(),
      billingAddress: json['billing_address'] == null
          ? null
          : IngAddress.fromJson(
              json['billing_address'] as Map<String, dynamic>),
      shippingAddress: json['shipping_address'] == null
          ? null
          : IngAddress.fromJson(
              json['shipping_address'] as Map<String, dynamic>),
      clientDetails: json['client_details'] == null
          ? null
          : ClientDetails.fromJson(
              json['client_details'] as Map<String, dynamic>),
      paymentDetails: json['payment_details'] == null
          ? null
          : PaymentDetails.fromJson(
              json['payment_details'] as Map<String, dynamic>),
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      lineItems: (json['line_items'] as List<dynamic>?)
          ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      fulfillments: (json['fulfillments'] as List<dynamic>?)
          ?.map((e) => Fulfillment.fromJson(e as Map<String, dynamic>))
          .toList(),
      refunds: (json['refunds'] as List<dynamic>?)
          ?.map((e) => Refund.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('email', instance.email);
  writeNotNull('closed_at', instance.closedAt);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('number', instance.number);
  writeNotNull('note', instance.note);
  writeNotNull('token', instance.token);
  writeNotNull('gateway', instance.gateway);
  writeNotNull('test', instance.test);
  writeNotNull('total_price', instance.totalPrice);
  writeNotNull('subtotal_price', instance.subtotalPrice);
  writeNotNull('total_weight', instance.totalWeight);
  writeNotNull('total_tax', instance.totalTax);
  writeNotNull('taxes_included', instance.taxesIncluded);
  writeNotNull('currency', instance.currency);
  writeNotNull('financial_status', instance.financialStatus);
  writeNotNull('confirmed', instance.confirmed);
  writeNotNull('total_discounts', instance.totalDiscounts);
  writeNotNull('total_line_items_price', instance.totalLineItemsPrice);
  writeNotNull('cart_token', instance.cartToken);
  writeNotNull('buyer_accepts_marketing', instance.buyerAcceptsMarketing);
  writeNotNull('name', instance.name);
  writeNotNull('referring_site', instance.referringSite);
  writeNotNull('landing_site', instance.landingSite);
  writeNotNull('cancelled_at', instance.cancelledAt);
  writeNotNull('cancel_reason', instance.cancelReason);
  writeNotNull('total_price_usd', instance.totalPriceUsd);
  writeNotNull('checkout_token', instance.checkoutToken);
  writeNotNull('reference', instance.reference);
  writeNotNull('user_id', instance.userId);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('source_identifier', instance.sourceIdentifier);
  writeNotNull('source_url', instance.sourceUrl);
  writeNotNull('processed_at', instance.processedAt);
  writeNotNull('device_id', instance.deviceId);
  writeNotNull('phone', instance.phone);
  writeNotNull('customer_locale', instance.customerLocale);
  writeNotNull('app_id', instance.appId);
  writeNotNull('browser_ip', instance.browserIp);
  writeNotNull('landing_site_ref', instance.landingSiteRef);
  writeNotNull('order_number', instance.orderNumber);
  writeNotNull('discount_applications',
      instance.discountApplications?.map((e) => e.toJson()).toList());
  writeNotNull('discount_codes',
      instance.discountCodes?.map((e) => e.toJson()).toList());
  writeNotNull('note_attributes',
      instance.noteAttributes?.map((e) => e.toJson()).toList());
  writeNotNull('payment_gateway_names', instance.paymentGatewayNames);
  writeNotNull('processing_method', instance.processingMethod);
  writeNotNull('checkout_id', instance.checkoutId);
  writeNotNull('source_name', instance.sourceName);
  writeNotNull('fulfillment_status', instance.fulfillmentStatus);
  writeNotNull('tax_lines', instance.taxLines?.map((e) => e.toJson()).toList());
  writeNotNull('tags', instance.tags);
  writeNotNull('contact_email', instance.contactEmail);
  writeNotNull('order_status_url', instance.orderStatusUrl);
  writeNotNull('presentment_currency', instance.presentmentCurrency);
  writeNotNull(
      'total_line_items_price_set', instance.totalLineItemsPriceSet?.toJson());
  writeNotNull('total_discounts_set', instance.totalDiscountsSet?.toJson());
  writeNotNull(
      'total_shipping_price_set', instance.totalShippingPriceSet?.toJson());
  writeNotNull('subtotal_price_set', instance.subtotalPriceSet?.toJson());
  writeNotNull('total_price_set', instance.totalPriceSet?.toJson());
  writeNotNull('total_tax_set', instance.totalTaxSet?.toJson());
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull('shipping_lines',
      instance.shippingLines?.map((e) => e.toJson()).toList());
  writeNotNull('billing_address', instance.billingAddress?.toJson());
  writeNotNull('shipping_address', instance.shippingAddress?.toJson());
  writeNotNull('client_details', instance.clientDetails?.toJson());
  writeNotNull('payment_details', instance.paymentDetails?.toJson());
  writeNotNull('customer', instance.customer?.toJson());
  writeNotNull(
      'line_items', instance.lineItems?.map((e) => e.toJson()).toList());
  writeNotNull(
      'fulfillments', instance.fulfillments?.map((e) => e.toJson()).toList());
  writeNotNull('refunds', instance.refunds?.map((e) => e.toJson()).toList());
  return val;
}

_$IngAddressImpl _$$IngAddressImplFromJson(Map<String, dynamic> json) =>
    _$IngAddressImpl(
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
    );

Map<String, dynamic> _$$IngAddressImplToJson(_$IngAddressImpl instance) {
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
  return val;
}

_$ClientDetailsImpl _$$ClientDetailsImplFromJson(Map<String, dynamic> json) =>
    _$ClientDetailsImpl(
      browserIp: json['browser_ip'] as String?,
      acceptLanguage: json['accept_language'],
      userAgent: json['user_agent'],
      sessionHash: json['session_hash'],
      browserWidth: json['browser_width'],
      browserHeight: json['browser_height'],
    );

Map<String, dynamic> _$$ClientDetailsImplToJson(_$ClientDetailsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('browser_ip', instance.browserIp);
  writeNotNull('accept_language', instance.acceptLanguage);
  writeNotNull('user_agent', instance.userAgent);
  writeNotNull('session_hash', instance.sessionHash);
  writeNotNull('browser_width', instance.browserWidth);
  writeNotNull('browser_height', instance.browserHeight);
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
          : DefaultAddress.fromJson(
              json['default_address'] as Map<String, dynamic>),
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

_$DefaultAddressImpl _$$DefaultAddressImplFromJson(Map<String, dynamic> json) =>
    _$DefaultAddressImpl(
      id: (json['id'] as num?)?.toInt(),
      customerId: (json['customer_id'] as num?)?.toInt(),
      firstName: json['first_name'],
      lastName: json['last_name'],
      company: json['company'],
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      city: json['city'] as String?,
      province: json['province'] as String?,
      country: json['country'] as String?,
      zip: json['zip'] as String?,
      phone: json['phone'] as String?,
      name: json['name'] as String?,
      provinceCode: json['province_code'] as String?,
      countryCode: json['country_code'] as String?,
      countryName: json['country_name'] as String?,
      defaultAddressDefault: json['default'] as bool?,
    );

Map<String, dynamic> _$$DefaultAddressImplToJson(
    _$DefaultAddressImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('company', instance.company);
  writeNotNull('address1', instance.address1);
  writeNotNull('address2', instance.address2);
  writeNotNull('city', instance.city);
  writeNotNull('province', instance.province);
  writeNotNull('country', instance.country);
  writeNotNull('zip', instance.zip);
  writeNotNull('phone', instance.phone);
  writeNotNull('name', instance.name);
  writeNotNull('province_code', instance.provinceCode);
  writeNotNull('country_code', instance.countryCode);
  writeNotNull('country_name', instance.countryName);
  writeNotNull('default', instance.defaultAddressDefault);
  return val;
}

_$DiscountApplicationImpl _$$DiscountApplicationImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscountApplicationImpl(
      type: json['type'] as String?,
      value: json['value'] as String?,
      valueType: json['value_type'] as String?,
      allocationMethod: json['allocation_method'] as String?,
      targetSelection: json['target_selection'] as String?,
      targetType: json['target_type'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$DiscountApplicationImplToJson(
    _$DiscountApplicationImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('value', instance.value);
  writeNotNull('value_type', instance.valueType);
  writeNotNull('allocation_method', instance.allocationMethod);
  writeNotNull('target_selection', instance.targetSelection);
  writeNotNull('target_type', instance.targetType);
  writeNotNull('code', instance.code);
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

_$FulfillmentImpl _$$FulfillmentImplFromJson(Map<String, dynamic> json) =>
    _$FulfillmentImpl(
      id: (json['id'] as num?)?.toInt(),
      orderId: (json['order_id'] as num?)?.toInt(),
      status: json['status'] as String?,
      createdAt: json['created_at'] as String?,
      service: json['service'] as String?,
      updatedAt: json['updated_at'] as String?,
      trackingCompany: json['tracking_company'] as String?,
      shipmentStatus: json['shipment_status'],
      locationId: (json['location_id'] as num?)?.toInt(),
      trackingNumber: json['tracking_number'] as String?,
      trackingNumbers: (json['tracking_numbers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      trackingUrl: json['tracking_url'] as String?,
      trackingUrls: (json['tracking_urls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      receipt: json['receipt'] == null
          ? null
          : FulfillmentReceipt.fromJson(
              json['receipt'] as Map<String, dynamic>),
      name: json['name'] as String?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
      lineItems: (json['line_items'] as List<dynamic>?)
          ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FulfillmentImplToJson(_$FulfillmentImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('status', instance.status);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('service', instance.service);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('tracking_company', instance.trackingCompany);
  writeNotNull('shipment_status', instance.shipmentStatus);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('tracking_number', instance.trackingNumber);
  writeNotNull('tracking_numbers', instance.trackingNumbers);
  writeNotNull('tracking_url', instance.trackingUrl);
  writeNotNull('tracking_urls', instance.trackingUrls);
  writeNotNull('receipt', instance.receipt?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull(
      'line_items', instance.lineItems?.map((e) => e.toJson()).toList());
  return val;
}

_$LineItemImpl _$$LineItemImplFromJson(Map<String, dynamic> json) =>
    _$LineItemImpl(
      id: (json['id'] as num?)?.toInt(),
      variantId: (json['variant_id'] as num?)?.toInt(),
      title: json['title'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      sku: json['sku'] as String?,
      variantTitle: json['variant_title'] as String?,
      vendor: json['vendor'],
      fulfillmentService: json['fulfillment_service'] as String?,
      productId: (json['product_id'] as num?)?.toInt(),
      requiresShipping: json['requires_shipping'] as bool?,
      taxable: json['taxable'] as bool?,
      giftCard: json['gift_card'] as bool?,
      name: json['name'] as String?,
      variantInventoryManagement:
          json['variant_inventory_management'] as String?,
      properties: (json['properties'] as List<dynamic>?)
          ?.map((e) => NoteAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      productExists: json['product_exists'] as bool?,
      fulfillableQuantity: (json['fulfillable_quantity'] as num?)?.toInt(),
      grams: (json['grams'] as num?)?.toInt(),
      price: json['price'] as String?,
      totalDiscount: json['total_discount'] as String?,
      fulfillmentStatus: json['fulfillment_status'],
      priceSet: json['price_set'] == null
          ? null
          : Set.fromJson(json['price_set'] as Map<String, dynamic>),
      totalDiscountSet: json['total_discount_set'] == null
          ? null
          : Set.fromJson(json['total_discount_set'] as Map<String, dynamic>),
      discountAllocations: json['discount_allocations'] as List<dynamic>?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
      taxLines: (json['tax_lines'] as List<dynamic>?)
          ?.map((e) => TaxLine.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LineItemImplToJson(_$LineItemImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('variant_id', instance.variantId);
  writeNotNull('title', instance.title);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('sku', instance.sku);
  writeNotNull('variant_title', instance.variantTitle);
  writeNotNull('vendor', instance.vendor);
  writeNotNull('fulfillment_service', instance.fulfillmentService);
  writeNotNull('product_id', instance.productId);
  writeNotNull('requires_shipping', instance.requiresShipping);
  writeNotNull('taxable', instance.taxable);
  writeNotNull('gift_card', instance.giftCard);
  writeNotNull('name', instance.name);
  writeNotNull(
      'variant_inventory_management', instance.variantInventoryManagement);
  writeNotNull(
      'properties', instance.properties?.map((e) => e.toJson()).toList());
  writeNotNull('product_exists', instance.productExists);
  writeNotNull('fulfillable_quantity', instance.fulfillableQuantity);
  writeNotNull('grams', instance.grams);
  writeNotNull('price', instance.price);
  writeNotNull('total_discount', instance.totalDiscount);
  writeNotNull('fulfillment_status', instance.fulfillmentStatus);
  writeNotNull('price_set', instance.priceSet?.toJson());
  writeNotNull('total_discount_set', instance.totalDiscountSet?.toJson());
  writeNotNull('discount_allocations', instance.discountAllocations);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull('tax_lines', instance.taxLines?.map((e) => e.toJson()).toList());
  return val;
}

_$SetImpl _$$SetImplFromJson(Map<String, dynamic> json) => _$SetImpl(
      shopMoney: json['shop_money'] == null
          ? null
          : Money.fromJson(json['shop_money'] as Map<String, dynamic>),
      presentmentMoney: json['presentment_money'] == null
          ? null
          : Money.fromJson(json['presentment_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SetImplToJson(_$SetImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('shop_money', instance.shopMoney?.toJson());
  writeNotNull('presentment_money', instance.presentmentMoney?.toJson());
  return val;
}

_$MoneyImpl _$$MoneyImplFromJson(Map<String, dynamic> json) => _$MoneyImpl(
      amount: json['amount'] as String?,
      currencyCode: json['currency_code'] as String?,
    );

Map<String, dynamic> _$$MoneyImplToJson(_$MoneyImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount);
  writeNotNull('currency_code', instance.currencyCode);
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

_$TaxLineImpl _$$TaxLineImplFromJson(Map<String, dynamic> json) =>
    _$TaxLineImpl(
      price: json['price'] as String?,
      rate: (json['rate'] as num?)?.toDouble(),
      title: json['title'] as String?,
      priceSet: json['price_set'] == null
          ? null
          : Set.fromJson(json['price_set'] as Map<String, dynamic>),
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
  writeNotNull('price_set', instance.priceSet?.toJson());
  return val;
}

_$FulfillmentReceiptImpl _$$FulfillmentReceiptImplFromJson(
        Map<String, dynamic> json) =>
    _$FulfillmentReceiptImpl(
      testcase: json['testcase'] as bool?,
      authorization: json['authorization'] as String?,
    );

Map<String, dynamic> _$$FulfillmentReceiptImplToJson(
    _$FulfillmentReceiptImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('testcase', instance.testcase);
  writeNotNull('authorization', instance.authorization);
  return val;
}

_$PaymentDetailsImpl _$$PaymentDetailsImplFromJson(Map<String, dynamic> json) =>
    _$PaymentDetailsImpl(
      creditCardBin: json['credit_card_bin'],
      avsResultCode: json['avs_result_code'],
      cvvResultCode: json['cvv_result_code'],
      creditCardNumber: json['credit_card_number'] as String?,
      creditCardCompany: json['credit_card_company'] as String?,
    );

Map<String, dynamic> _$$PaymentDetailsImplToJson(
    _$PaymentDetailsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('credit_card_bin', instance.creditCardBin);
  writeNotNull('avs_result_code', instance.avsResultCode);
  writeNotNull('cvv_result_code', instance.cvvResultCode);
  writeNotNull('credit_card_number', instance.creditCardNumber);
  writeNotNull('credit_card_company', instance.creditCardCompany);
  return val;
}

_$RefundImpl _$$RefundImplFromJson(Map<String, dynamic> json) => _$RefundImpl(
      id: (json['id'] as num?)?.toInt(),
      orderId: (json['order_id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      note: json['note'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
      processedAt: json['processed_at'] as String?,
      restock: json['restock'] as bool?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
      refundLineItems: (json['refund_line_items'] as List<dynamic>?)
          ?.map((e) => RefundLineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      transactions: (json['transactions'] as List<dynamic>?)
          ?.map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderAdjustments: json['order_adjustments'] as List<dynamic>?,
    );

Map<String, dynamic> _$$RefundImplToJson(_$RefundImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('note', instance.note);
  writeNotNull('user_id', instance.userId);
  writeNotNull('processed_at', instance.processedAt);
  writeNotNull('restock', instance.restock);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull('refund_line_items',
      instance.refundLineItems?.map((e) => e.toJson()).toList());
  writeNotNull(
      'transactions', instance.transactions?.map((e) => e.toJson()).toList());
  writeNotNull('order_adjustments', instance.orderAdjustments);
  return val;
}

_$RefundLineItemImpl _$$RefundLineItemImplFromJson(Map<String, dynamic> json) =>
    _$RefundLineItemImpl(
      id: (json['id'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      lineItemId: (json['line_item_id'] as num?)?.toInt(),
      locationId: (json['location_id'] as num?)?.toInt(),
      restockType: json['restock_type'] as String?,
      subtotal: (json['subtotal'] as num?)?.toInt(),
      totalTax: (json['total_tax'] as num?)?.toDouble(),
      subtotalSet: json['subtotal_set'] == null
          ? null
          : Set.fromJson(json['subtotal_set'] as Map<String, dynamic>),
      totalTaxSet: json['total_tax_set'] == null
          ? null
          : Set.fromJson(json['total_tax_set'] as Map<String, dynamic>),
      lineItem: json['line_item'] == null
          ? null
          : LineItem.fromJson(json['line_item'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RefundLineItemImplToJson(
    _$RefundLineItemImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('line_item_id', instance.lineItemId);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('restock_type', instance.restockType);
  writeNotNull('subtotal', instance.subtotal);
  writeNotNull('total_tax', instance.totalTax);
  writeNotNull('subtotal_set', instance.subtotalSet?.toJson());
  writeNotNull('total_tax_set', instance.totalTaxSet?.toJson());
  writeNotNull('line_item', instance.lineItem?.toJson());
  return val;
}

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      id: (json['id'] as num?)?.toInt(),
      orderId: (json['order_id'] as num?)?.toInt(),
      kind: json['kind'] as String?,
      gateway: json['gateway'] as String?,
      status: json['status'] as String?,
      message: json['message'],
      createdAt: json['created_at'] as String?,
      test: json['test'] as bool?,
      authorization: json['authorization'] as String?,
      locationId: json['location_id'],
      userId: json['user_id'],
      parentId: (json['parent_id'] as num?)?.toInt(),
      processedAt: json['processed_at'] as String?,
      deviceId: json['device_id'],
      receipt: json['receipt'] == null
          ? null
          : TransactionReceipt.fromJson(
              json['receipt'] as Map<String, dynamic>),
      errorCode: json['error_code'],
      sourceName: json['source_name'] as String?,
      amount: json['amount'] as String?,
      currency: json['currency'] as String?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('kind', instance.kind);
  writeNotNull('gateway', instance.gateway);
  writeNotNull('status', instance.status);
  writeNotNull('message', instance.message);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('test', instance.test);
  writeNotNull('authorization', instance.authorization);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('user_id', instance.userId);
  writeNotNull('parent_id', instance.parentId);
  writeNotNull('processed_at', instance.processedAt);
  writeNotNull('device_id', instance.deviceId);
  writeNotNull('receipt', instance.receipt?.toJson());
  writeNotNull('error_code', instance.errorCode);
  writeNotNull('source_name', instance.sourceName);
  writeNotNull('amount', instance.amount);
  writeNotNull('currency', instance.currency);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  return val;
}

_$TransactionReceiptImpl _$$TransactionReceiptImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionReceiptImpl();

Map<String, dynamic> _$$TransactionReceiptImplToJson(
        _$TransactionReceiptImpl instance) =>
    <String, dynamic>{};

_$ShippingLineImpl _$$ShippingLineImplFromJson(Map<String, dynamic> json) =>
    _$ShippingLineImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      price: json['price'] as String?,
      code: json['code'] as String?,
      source: json['source'] as String?,
      phone: json['phone'],
      requestedFulfillmentServiceId: json['requested_fulfillment_service_id'],
      deliveryCategory: json['delivery_category'],
      carrierIdentifier: json['carrier_identifier'],
      discountedPrice: json['discounted_price'] as String?,
      priceSet: json['price_set'] == null
          ? null
          : Set.fromJson(json['price_set'] as Map<String, dynamic>),
      discountedPriceSet: json['discounted_price_set'] == null
          ? null
          : Set.fromJson(json['discounted_price_set'] as Map<String, dynamic>),
      discountAllocations: json['discount_allocations'] as List<dynamic>?,
      taxLines: json['tax_lines'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ShippingLineImplToJson(_$ShippingLineImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('price', instance.price);
  writeNotNull('code', instance.code);
  writeNotNull('source', instance.source);
  writeNotNull('phone', instance.phone);
  writeNotNull('requested_fulfillment_service_id',
      instance.requestedFulfillmentServiceId);
  writeNotNull('delivery_category', instance.deliveryCategory);
  writeNotNull('carrier_identifier', instance.carrierIdentifier);
  writeNotNull('discounted_price', instance.discountedPrice);
  writeNotNull('price_set', instance.priceSet?.toJson());
  writeNotNull('discounted_price_set', instance.discountedPriceSet?.toJson());
  writeNotNull('discount_allocations', instance.discountAllocations);
  writeNotNull('tax_lines', instance.taxLines);
  return val;
}
