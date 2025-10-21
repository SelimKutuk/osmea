// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateOrderResponseImpl _$$UpdateOrderResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateOrderResponseImpl(
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateOrderResponseImplToJson(
    _$UpdateOrderResponseImpl instance) {
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
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
      appId: json['app_id'],
      browserIp: json['browser_ip'] as String?,
      buyerAcceptsMarketing: json['buyer_accepts_marketing'] as bool?,
      cancelReason: json['cancel_reason'],
      cancelledAt: json['cancelled_at'],
      cartToken: json['cart_token'] as String?,
      checkoutId: (json['checkout_id'] as num?)?.toInt(),
      checkoutToken: json['checkout_token'] as String?,
      clientDetails: json['client_details'] == null
          ? null
          : ClientDetails.fromJson(
              json['client_details'] as Map<String, dynamic>),
      closedAt: json['closed_at'],
      confirmationNumber: json['confirmation_number'],
      confirmed: json['confirmed'] as bool?,
      contactEmail: json['contact_email'] as String?,
      createdAt: json['created_at'] as String?,
      currency: json['currency'] as String?,
      currentSubtotalPrice: json['current_subtotal_price'] as String?,
      currentSubtotalPriceSet: json['current_subtotal_price_set'] == null
          ? null
          : Set.fromJson(
              json['current_subtotal_price_set'] as Map<String, dynamic>),
      currentTotalAdditionalFeesSet: json['current_total_additional_fees_set'],
      currentTotalDiscounts: json['current_total_discounts'] as String?,
      currentTotalDiscountsSet: json['current_total_discounts_set'] == null
          ? null
          : Set.fromJson(
              json['current_total_discounts_set'] as Map<String, dynamic>),
      currentTotalDutiesSet: json['current_total_duties_set'],
      currentTotalPrice: json['current_total_price'] as String?,
      currentTotalPriceSet: json['current_total_price_set'] == null
          ? null
          : Set.fromJson(
              json['current_total_price_set'] as Map<String, dynamic>),
      currentTotalTax: json['current_total_tax'] as String?,
      currentTotalTaxSet: json['current_total_tax_set'] == null
          ? null
          : Set.fromJson(json['current_total_tax_set'] as Map<String, dynamic>),
      customerLocale: json['customer_locale'],
      deviceId: json['device_id'],
      discountCodes: (json['discount_codes'] as List<dynamic>?)
          ?.map((e) => DiscountCode.fromJson(e as Map<String, dynamic>))
          .toList(),
      dutiesIncluded: json['duties_included'] as bool?,
      email: json['email'] as String?,
      estimatedTaxes: json['estimated_taxes'] as bool?,
      financialStatus: json['financial_status'] as String?,
      fulfillmentStatus: json['fulfillment_status'],
      landingSite: json['landing_site'] as String?,
      landingSiteRef: json['landing_site_ref'] as String?,
      locationId: json['location_id'],
      merchantBusinessEntityId: json['merchant_business_entity_id'] as String?,
      merchantOfRecordAppId: json['merchant_of_record_app_id'],
      name: json['name'] as String?,
      note: json['note'],
      noteAttributes: (json['note_attributes'] as List<dynamic>?)
          ?.map((e) => NoteAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      number: (json['number'] as num?)?.toInt(),
      orderNumber: (json['order_number'] as num?)?.toInt(),
      orderStatusUrl: json['order_status_url'] as String?,
      originalTotalAdditionalFeesSet:
          json['original_total_additional_fees_set'],
      originalTotalDutiesSet: json['original_total_duties_set'],
      paymentGatewayNames: (json['payment_gateway_names'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      phone: json['phone'] as String?,
      poNumber: json['po_number'] as String?,
      presentmentCurrency: json['presentment_currency'] as String?,
      processedAt: json['processed_at'] as String?,
      reference: json['reference'] as String?,
      referringSite: json['referring_site'] as String?,
      sourceIdentifier: json['source_identifier'] as String?,
      sourceName: json['source_name'] as String?,
      sourceUrl: json['source_url'],
      subtotalPrice: json['subtotal_price'] as String?,
      subtotalPriceSet: json['subtotal_price_set'] == null
          ? null
          : Set.fromJson(json['subtotal_price_set'] as Map<String, dynamic>),
      tags: json['tags'] as String?,
      taxExempt: json['tax_exempt'] as bool?,
      taxLines: (json['tax_lines'] as List<dynamic>?)
          ?.map((e) => TaxLine.fromJson(e as Map<String, dynamic>))
          .toList(),
      taxesIncluded: json['taxes_included'] as bool?,
      test: json['test'] as bool?,
      token: json['token'] as String?,
      totalCashRoundingPaymentAdjustmentSet:
          json['total_cash_rounding_payment_adjustment_set'] == null
              ? null
              : Set.fromJson(json['total_cash_rounding_payment_adjustment_set']
                  as Map<String, dynamic>),
      totalCashRoundingRefundAdjustmentSet:
          json['total_cash_rounding_refund_adjustment_set'] == null
              ? null
              : Set.fromJson(json['total_cash_rounding_refund_adjustment_set']
                  as Map<String, dynamic>),
      totalDiscounts: json['total_discounts'] as String?,
      totalDiscountsSet: json['total_discounts_set'] == null
          ? null
          : Set.fromJson(json['total_discounts_set'] as Map<String, dynamic>),
      totalLineItemsPrice: json['total_line_items_price'] as String?,
      totalLineItemsPriceSet: json['total_line_items_price_set'] == null
          ? null
          : Set.fromJson(
              json['total_line_items_price_set'] as Map<String, dynamic>),
      totalOutstanding: json['total_outstanding'] as String?,
      totalPrice: json['total_price'] as String?,
      totalPriceSet: json['total_price_set'] == null
          ? null
          : Set.fromJson(json['total_price_set'] as Map<String, dynamic>),
      totalShippingPriceSet: json['total_shipping_price_set'] == null
          ? null
          : Set.fromJson(
              json['total_shipping_price_set'] as Map<String, dynamic>),
      totalTax: json['total_tax'] as String?,
      totalTaxSet: json['total_tax_set'] == null
          ? null
          : Set.fromJson(json['total_tax_set'] as Map<String, dynamic>),
      totalTipReceived: json['total_tip_received'] as String?,
      totalWeight: (json['total_weight'] as num?)?.toInt(),
      updatedAt: json['updated_at'] as String?,
      userId: json['user_id'],
      billingAddress: json['billing_address'] == null
          ? null
          : Address.fromJson(json['billing_address'] as Map<String, dynamic>),
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      discountApplications: (json['discount_applications'] as List<dynamic>?)
          ?.map((e) => DiscountApplication.fromJson(e as Map<String, dynamic>))
          .toList(),
      fulfillments: (json['fulfillments'] as List<dynamic>?)
          ?.map((e) => Fulfillment.fromJson(e as Map<String, dynamic>))
          .toList(),
      lineItems: (json['line_items'] as List<dynamic>?)
          ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentTerms: json['payment_terms'],
      refunds: (json['refunds'] as List<dynamic>?)
          ?.map((e) => Refund.fromJson(e as Map<String, dynamic>))
          .toList(),
      shippingAddress: json['shipping_address'] == null
          ? null
          : Address.fromJson(json['shipping_address'] as Map<String, dynamic>),
      shippingLines: (json['shipping_lines'] as List<dynamic>?)
          ?.map((e) => ShippingLine.fromJson(e as Map<String, dynamic>))
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
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull('app_id', instance.appId);
  writeNotNull('browser_ip', instance.browserIp);
  writeNotNull('buyer_accepts_marketing', instance.buyerAcceptsMarketing);
  writeNotNull('cancel_reason', instance.cancelReason);
  writeNotNull('cancelled_at', instance.cancelledAt);
  writeNotNull('cart_token', instance.cartToken);
  writeNotNull('checkout_id', instance.checkoutId);
  writeNotNull('checkout_token', instance.checkoutToken);
  writeNotNull('client_details', instance.clientDetails?.toJson());
  writeNotNull('closed_at', instance.closedAt);
  writeNotNull('confirmation_number', instance.confirmationNumber);
  writeNotNull('confirmed', instance.confirmed);
  writeNotNull('contact_email', instance.contactEmail);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('currency', instance.currency);
  writeNotNull('current_subtotal_price', instance.currentSubtotalPrice);
  writeNotNull(
      'current_subtotal_price_set', instance.currentSubtotalPriceSet?.toJson());
  writeNotNull('current_total_additional_fees_set',
      instance.currentTotalAdditionalFeesSet);
  writeNotNull('current_total_discounts', instance.currentTotalDiscounts);
  writeNotNull('current_total_discounts_set',
      instance.currentTotalDiscountsSet?.toJson());
  writeNotNull('current_total_duties_set', instance.currentTotalDutiesSet);
  writeNotNull('current_total_price', instance.currentTotalPrice);
  writeNotNull(
      'current_total_price_set', instance.currentTotalPriceSet?.toJson());
  writeNotNull('current_total_tax', instance.currentTotalTax);
  writeNotNull('current_total_tax_set', instance.currentTotalTaxSet?.toJson());
  writeNotNull('customer_locale', instance.customerLocale);
  writeNotNull('device_id', instance.deviceId);
  writeNotNull('discount_codes',
      instance.discountCodes?.map((e) => e.toJson()).toList());
  writeNotNull('duties_included', instance.dutiesIncluded);
  writeNotNull('email', instance.email);
  writeNotNull('estimated_taxes', instance.estimatedTaxes);
  writeNotNull('financial_status', instance.financialStatus);
  writeNotNull('fulfillment_status', instance.fulfillmentStatus);
  writeNotNull('landing_site', instance.landingSite);
  writeNotNull('landing_site_ref', instance.landingSiteRef);
  writeNotNull('location_id', instance.locationId);
  writeNotNull(
      'merchant_business_entity_id', instance.merchantBusinessEntityId);
  writeNotNull('merchant_of_record_app_id', instance.merchantOfRecordAppId);
  writeNotNull('name', instance.name);
  writeNotNull('note', instance.note);
  writeNotNull('note_attributes',
      instance.noteAttributes?.map((e) => e.toJson()).toList());
  writeNotNull('number', instance.number);
  writeNotNull('order_number', instance.orderNumber);
  writeNotNull('order_status_url', instance.orderStatusUrl);
  writeNotNull('original_total_additional_fees_set',
      instance.originalTotalAdditionalFeesSet);
  writeNotNull('original_total_duties_set', instance.originalTotalDutiesSet);
  writeNotNull('payment_gateway_names', instance.paymentGatewayNames);
  writeNotNull('phone', instance.phone);
  writeNotNull('po_number', instance.poNumber);
  writeNotNull('presentment_currency', instance.presentmentCurrency);
  writeNotNull('processed_at', instance.processedAt);
  writeNotNull('reference', instance.reference);
  writeNotNull('referring_site', instance.referringSite);
  writeNotNull('source_identifier', instance.sourceIdentifier);
  writeNotNull('source_name', instance.sourceName);
  writeNotNull('source_url', instance.sourceUrl);
  writeNotNull('subtotal_price', instance.subtotalPrice);
  writeNotNull('subtotal_price_set', instance.subtotalPriceSet?.toJson());
  writeNotNull('tags', instance.tags);
  writeNotNull('tax_exempt', instance.taxExempt);
  writeNotNull('tax_lines', instance.taxLines?.map((e) => e.toJson()).toList());
  writeNotNull('taxes_included', instance.taxesIncluded);
  writeNotNull('test', instance.test);
  writeNotNull('token', instance.token);
  writeNotNull('total_cash_rounding_payment_adjustment_set',
      instance.totalCashRoundingPaymentAdjustmentSet?.toJson());
  writeNotNull('total_cash_rounding_refund_adjustment_set',
      instance.totalCashRoundingRefundAdjustmentSet?.toJson());
  writeNotNull('total_discounts', instance.totalDiscounts);
  writeNotNull('total_discounts_set', instance.totalDiscountsSet?.toJson());
  writeNotNull('total_line_items_price', instance.totalLineItemsPrice);
  writeNotNull(
      'total_line_items_price_set', instance.totalLineItemsPriceSet?.toJson());
  writeNotNull('total_outstanding', instance.totalOutstanding);
  writeNotNull('total_price', instance.totalPrice);
  writeNotNull('total_price_set', instance.totalPriceSet?.toJson());
  writeNotNull(
      'total_shipping_price_set', instance.totalShippingPriceSet?.toJson());
  writeNotNull('total_tax', instance.totalTax);
  writeNotNull('total_tax_set', instance.totalTaxSet?.toJson());
  writeNotNull('total_tip_received', instance.totalTipReceived);
  writeNotNull('total_weight', instance.totalWeight);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('user_id', instance.userId);
  writeNotNull('billing_address', instance.billingAddress?.toJson());
  writeNotNull('customer', instance.customer?.toJson());
  writeNotNull('discount_applications',
      instance.discountApplications?.map((e) => e.toJson()).toList());
  writeNotNull(
      'fulfillments', instance.fulfillments?.map((e) => e.toJson()).toList());
  writeNotNull(
      'line_items', instance.lineItems?.map((e) => e.toJson()).toList());
  writeNotNull('payment_terms', instance.paymentTerms);
  writeNotNull('refunds', instance.refunds?.map((e) => e.toJson()).toList());
  writeNotNull('shipping_address', instance.shippingAddress?.toJson());
  writeNotNull('shipping_lines',
      instance.shippingLines?.map((e) => e.toJson()).toList());
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

_$ClientDetailsImpl _$$ClientDetailsImplFromJson(Map<String, dynamic> json) =>
    _$ClientDetailsImpl(
      acceptLanguage: json['accept_language'],
      browserHeight: json['browser_height'],
      browserIp: json['browser_ip'] as String?,
      browserWidth: json['browser_width'],
      sessionHash: json['session_hash'],
      userAgent: json['user_agent'],
    );

Map<String, dynamic> _$$ClientDetailsImplToJson(_$ClientDetailsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('accept_language', instance.acceptLanguage);
  writeNotNull('browser_height', instance.browserHeight);
  writeNotNull('browser_ip', instance.browserIp);
  writeNotNull('browser_width', instance.browserWidth);
  writeNotNull('session_hash', instance.sessionHash);
  writeNotNull('user_agent', instance.userAgent);
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

_$CustomerImpl _$$CustomerImplFromJson(Map<String, dynamic> json) =>
    _$CustomerImpl(
      id: (json['id'] as num?)?.toInt(),
      email: json['email'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      state: json['state'] as String?,
      note: json['note'],
      verifiedEmail: json['verified_email'] as bool?,
      multipassIdentifier: json['multipass_identifier'],
      taxExempt: json['tax_exempt'] as bool?,
      phone: json['phone'] as String?,
      emailMarketingConsent: json['email_marketing_consent'] == null
          ? null
          : MarketingConsent.fromJson(
              json['email_marketing_consent'] as Map<String, dynamic>),
      smsMarketingConsent: json['sms_marketing_consent'] == null
          ? null
          : MarketingConsent.fromJson(
              json['sms_marketing_consent'] as Map<String, dynamic>),
      tags: json['tags'] as String?,
      currency: json['currency'] as String?,
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
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('state', instance.state);
  writeNotNull('note', instance.note);
  writeNotNull('verified_email', instance.verifiedEmail);
  writeNotNull('multipass_identifier', instance.multipassIdentifier);
  writeNotNull('tax_exempt', instance.taxExempt);
  writeNotNull('phone', instance.phone);
  writeNotNull(
      'email_marketing_consent', instance.emailMarketingConsent?.toJson());
  writeNotNull('sms_marketing_consent', instance.smsMarketingConsent?.toJson());
  writeNotNull('tags', instance.tags);
  writeNotNull('currency', instance.currency);
  writeNotNull('tax_exemptions', instance.taxExemptions);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull('default_address', instance.defaultAddress?.toJson());
  return val;
}

_$MarketingConsentImpl _$$MarketingConsentImplFromJson(
        Map<String, dynamic> json) =>
    _$MarketingConsentImpl(
      state: json['state'] as String?,
      optInLevel: json['opt_in_level'] as String?,
      consentUpdatedAt: json['consent_updated_at'] as String?,
      consentCollectedFrom: json['consent_collected_from'] as String?,
    );

Map<String, dynamic> _$$MarketingConsentImplToJson(
    _$MarketingConsentImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('opt_in_level', instance.optInLevel);
  writeNotNull('consent_updated_at', instance.consentUpdatedAt);
  writeNotNull('consent_collected_from', instance.consentCollectedFrom);
  return val;
}

_$DiscountApplicationImpl _$$DiscountApplicationImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscountApplicationImpl(
      targetType: json['target_type'] as String?,
      type: json['type'] as String?,
      value: json['value'] as String?,
      valueType: json['value_type'] as String?,
      allocationMethod: json['allocation_method'] as String?,
      targetSelection: json['target_selection'] as String?,
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

  writeNotNull('target_type', instance.targetType);
  writeNotNull('type', instance.type);
  writeNotNull('value', instance.value);
  writeNotNull('value_type', instance.valueType);
  writeNotNull('allocation_method', instance.allocationMethod);
  writeNotNull('target_selection', instance.targetSelection);
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
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
      createdAt: json['created_at'] as String?,
      locationId: (json['location_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      orderId: (json['order_id'] as num?)?.toInt(),
      originAddress: json['origin_address'] == null
          ? null
          : OriginAddress.fromJson(
              json['origin_address'] as Map<String, dynamic>),
      receipt: json['receipt'] == null
          ? null
          : Receipt.fromJson(json['receipt'] as Map<String, dynamic>),
      service: json['service'] as String?,
      shipmentStatus: json['shipment_status'],
      status: json['status'] as String?,
      trackingCompany: json['tracking_company'] as String?,
      trackingNumber: json['tracking_number'] as String?,
      trackingNumbers: (json['tracking_numbers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      trackingUrl: json['tracking_url'] as String?,
      trackingUrls: (json['tracking_urls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      updatedAt: json['updated_at'] as String?,
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
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('name', instance.name);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('origin_address', instance.originAddress?.toJson());
  writeNotNull('receipt', instance.receipt?.toJson());
  writeNotNull('service', instance.service);
  writeNotNull('shipment_status', instance.shipmentStatus);
  writeNotNull('status', instance.status);
  writeNotNull('tracking_company', instance.trackingCompany);
  writeNotNull('tracking_number', instance.trackingNumber);
  writeNotNull('tracking_numbers', instance.trackingNumbers);
  writeNotNull('tracking_url', instance.trackingUrl);
  writeNotNull('tracking_urls', instance.trackingUrls);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull(
      'line_items', instance.lineItems?.map((e) => e.toJson()).toList());
  return val;
}

_$LineItemImpl _$$LineItemImplFromJson(Map<String, dynamic> json) =>
    _$LineItemImpl(
      id: (json['id'] as num?)?.toInt(),
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
      attributedStaffs: json['attributed_staffs'] as List<dynamic>?,
      currentQuantity: (json['current_quantity'] as num?)?.toInt(),
      fulfillableQuantity: (json['fulfillable_quantity'] as num?)?.toInt(),
      fulfillmentService: json['fulfillment_service'] as String?,
      fulfillmentStatus: json['fulfillment_status'],
      giftCard: json['gift_card'] as bool?,
      grams: (json['grams'] as num?)?.toInt(),
      name: json['name'] as String?,
      price: json['price'] as String?,
      priceSet: json['price_set'] == null
          ? null
          : Set.fromJson(json['price_set'] as Map<String, dynamic>),
      productExists: json['product_exists'] as bool?,
      productId: (json['product_id'] as num?)?.toInt(),
      properties: (json['properties'] as List<dynamic>?)
          ?.map((e) => NoteAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      quantity: (json['quantity'] as num?)?.toInt(),
      requiresShipping: json['requires_shipping'] as bool?,
      sku: json['sku'] as String?,
      taxable: json['taxable'] as bool?,
      title: json['title'] as String?,
      totalDiscount: json['total_discount'] as String?,
      totalDiscountSet: json['total_discount_set'] == null
          ? null
          : Set.fromJson(json['total_discount_set'] as Map<String, dynamic>),
      variantId: (json['variant_id'] as num?)?.toInt(),
      variantInventoryManagement:
          json['variant_inventory_management'] as String?,
      variantTitle: json['variant_title'] as String?,
      vendor: json['vendor'],
      taxLines: (json['tax_lines'] as List<dynamic>?)
          ?.map((e) => TaxLine.fromJson(e as Map<String, dynamic>))
          .toList(),
      duties: json['duties'] as List<dynamic>?,
      discountAllocations: (json['discount_allocations'] as List<dynamic>?)
          ?.map((e) => DiscountAllocation.fromJson(e as Map<String, dynamic>))
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
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull('attributed_staffs', instance.attributedStaffs);
  writeNotNull('current_quantity', instance.currentQuantity);
  writeNotNull('fulfillable_quantity', instance.fulfillableQuantity);
  writeNotNull('fulfillment_service', instance.fulfillmentService);
  writeNotNull('fulfillment_status', instance.fulfillmentStatus);
  writeNotNull('gift_card', instance.giftCard);
  writeNotNull('grams', instance.grams);
  writeNotNull('name', instance.name);
  writeNotNull('price', instance.price);
  writeNotNull('price_set', instance.priceSet?.toJson());
  writeNotNull('product_exists', instance.productExists);
  writeNotNull('product_id', instance.productId);
  writeNotNull(
      'properties', instance.properties?.map((e) => e.toJson()).toList());
  writeNotNull('quantity', instance.quantity);
  writeNotNull('requires_shipping', instance.requiresShipping);
  writeNotNull('sku', instance.sku);
  writeNotNull('taxable', instance.taxable);
  writeNotNull('title', instance.title);
  writeNotNull('total_discount', instance.totalDiscount);
  writeNotNull('total_discount_set', instance.totalDiscountSet?.toJson());
  writeNotNull('variant_id', instance.variantId);
  writeNotNull(
      'variant_inventory_management', instance.variantInventoryManagement);
  writeNotNull('variant_title', instance.variantTitle);
  writeNotNull('vendor', instance.vendor);
  writeNotNull('tax_lines', instance.taxLines?.map((e) => e.toJson()).toList());
  writeNotNull('duties', instance.duties);
  writeNotNull('discount_allocations',
      instance.discountAllocations?.map((e) => e.toJson()).toList());
  return val;
}

_$DiscountAllocationImpl _$$DiscountAllocationImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscountAllocationImpl(
      amount: json['amount'] as String?,
      amountSet: json['amount_set'] == null
          ? null
          : Set.fromJson(json['amount_set'] as Map<String, dynamic>),
      discountApplicationIndex:
          (json['discount_application_index'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DiscountAllocationImplToJson(
    _$DiscountAllocationImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount);
  writeNotNull('amount_set', instance.amountSet?.toJson());
  writeNotNull('discount_application_index', instance.discountApplicationIndex);
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
      channelLiable: json['channel_liable'],
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
  writeNotNull('channel_liable', instance.channelLiable);
  return val;
}

_$OriginAddressImpl _$$OriginAddressImplFromJson(Map<String, dynamic> json) =>
    _$OriginAddressImpl();

Map<String, dynamic> _$$OriginAddressImplToJson(_$OriginAddressImpl instance) =>
    <String, dynamic>{};

_$ReceiptImpl _$$ReceiptImplFromJson(Map<String, dynamic> json) =>
    _$ReceiptImpl(
      testcase: json['testcase'] as bool?,
      authorization: json['authorization'] as String?,
    );

Map<String, dynamic> _$$ReceiptImplToJson(_$ReceiptImpl instance) {
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

_$RefundImpl _$$RefundImplFromJson(Map<String, dynamic> json) => _$RefundImpl(
      id: (json['id'] as num?)?.toInt(),
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
      createdAt: json['created_at'] as String?,
      note: json['note'] as String?,
      orderId: (json['order_id'] as num?)?.toInt(),
      processedAt: json['processed_at'] as String?,
      restock: json['restock'] as bool?,
      totalAdditionalFeesSet: json['total_additional_fees_set'] == null
          ? null
          : Set.fromJson(
              json['total_additional_fees_set'] as Map<String, dynamic>),
      totalDutiesSet: json['total_duties_set'] == null
          ? null
          : Set.fromJson(json['total_duties_set'] as Map<String, dynamic>),
      userId: (json['user_id'] as num?)?.toInt(),
      orderAdjustments: json['order_adjustments'] as List<dynamic>?,
      transactions: (json['transactions'] as List<dynamic>?)
          ?.map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      refundLineItems: (json['refund_line_items'] as List<dynamic>?)
          ?.map((e) => RefundLineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      duties: json['duties'] as List<dynamic>?,
      additionalFees: json['additional_fees'] as List<dynamic>?,
    );

Map<String, dynamic> _$$RefundImplToJson(_$RefundImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('note', instance.note);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('processed_at', instance.processedAt);
  writeNotNull('restock', instance.restock);
  writeNotNull(
      'total_additional_fees_set', instance.totalAdditionalFeesSet?.toJson());
  writeNotNull('total_duties_set', instance.totalDutiesSet?.toJson());
  writeNotNull('user_id', instance.userId);
  writeNotNull('order_adjustments', instance.orderAdjustments);
  writeNotNull(
      'transactions', instance.transactions?.map((e) => e.toJson()).toList());
  writeNotNull('refund_line_items',
      instance.refundLineItems?.map((e) => e.toJson()).toList());
  writeNotNull('duties', instance.duties);
  writeNotNull('additional_fees', instance.additionalFees);
  return val;
}

_$RefundLineItemImpl _$$RefundLineItemImplFromJson(Map<String, dynamic> json) =>
    _$RefundLineItemImpl(
      id: (json['id'] as num?)?.toInt(),
      lineItemId: (json['line_item_id'] as num?)?.toInt(),
      locationId: (json['location_id'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      restockType: json['restock_type'] as String?,
      subtotal: (json['subtotal'] as num?)?.toDouble(),
      subtotalSet: json['subtotal_set'] == null
          ? null
          : Set.fromJson(json['subtotal_set'] as Map<String, dynamic>),
      totalTax: (json['total_tax'] as num?)?.toDouble(),
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
  writeNotNull('line_item_id', instance.lineItemId);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('restock_type', instance.restockType);
  writeNotNull('subtotal', instance.subtotal);
  writeNotNull('subtotal_set', instance.subtotalSet?.toJson());
  writeNotNull('total_tax', instance.totalTax);
  writeNotNull('total_tax_set', instance.totalTaxSet?.toJson());
  writeNotNull('line_item', instance.lineItem?.toJson());
  return val;
}

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      id: (json['id'] as num?)?.toInt(),
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
      amount: json['amount'] as String?,
      authorization: json['authorization'] as String?,
      createdAt: json['created_at'] as String?,
      currency: json['currency'] as String?,
      deviceId: json['device_id'],
      errorCode: json['error_code'],
      gateway: json['gateway'] as String?,
      kind: json['kind'] as String?,
      locationId: json['location_id'],
      message: json['message'],
      orderId: (json['order_id'] as num?)?.toInt(),
      parentId: (json['parent_id'] as num?)?.toInt(),
      paymentId: json['payment_id'] as String?,
      processedAt: json['processed_at'] as String?,
      receipt: json['receipt'] == null
          ? null
          : OriginAddress.fromJson(json['receipt'] as Map<String, dynamic>),
      sourceName: json['source_name'] as String?,
      status: json['status'] as String?,
      test: json['test'] as bool?,
      userId: json['user_id'],
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull('amount', instance.amount);
  writeNotNull('authorization', instance.authorization);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('currency', instance.currency);
  writeNotNull('device_id', instance.deviceId);
  writeNotNull('error_code', instance.errorCode);
  writeNotNull('gateway', instance.gateway);
  writeNotNull('kind', instance.kind);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('message', instance.message);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('parent_id', instance.parentId);
  writeNotNull('payment_id', instance.paymentId);
  writeNotNull('processed_at', instance.processedAt);
  writeNotNull('receipt', instance.receipt?.toJson());
  writeNotNull('source_name', instance.sourceName);
  writeNotNull('status', instance.status);
  writeNotNull('test', instance.test);
  writeNotNull('user_id', instance.userId);
  return val;
}

_$ShippingLineImpl _$$ShippingLineImplFromJson(Map<String, dynamic> json) =>
    _$ShippingLineImpl(
      id: (json['id'] as num?)?.toInt(),
      carrierIdentifier: json['carrier_identifier'],
      code: json['code'] as String?,
      discountedPrice: json['discounted_price'] as String?,
      discountedPriceSet: json['discounted_price_set'] == null
          ? null
          : Set.fromJson(json['discounted_price_set'] as Map<String, dynamic>),
      isRemoved: json['is_removed'] as bool?,
      phone: json['phone'],
      price: json['price'] as String?,
      priceSet: json['price_set'] == null
          ? null
          : Set.fromJson(json['price_set'] as Map<String, dynamic>),
      requestedFulfillmentServiceId: json['requested_fulfillment_service_id'],
      source: json['source'] as String?,
      title: json['title'] as String?,
      taxLines: json['tax_lines'] as List<dynamic>?,
      discountAllocations: json['discount_allocations'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ShippingLineImplToJson(_$ShippingLineImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('carrier_identifier', instance.carrierIdentifier);
  writeNotNull('code', instance.code);
  writeNotNull('discounted_price', instance.discountedPrice);
  writeNotNull('discounted_price_set', instance.discountedPriceSet?.toJson());
  writeNotNull('is_removed', instance.isRemoved);
  writeNotNull('phone', instance.phone);
  writeNotNull('price', instance.price);
  writeNotNull('price_set', instance.priceSet?.toJson());
  writeNotNull('requested_fulfillment_service_id',
      instance.requestedFulfillmentServiceId);
  writeNotNull('source', instance.source);
  writeNotNull('title', instance.title);
  writeNotNull('tax_lines', instance.taxLines);
  writeNotNull('discount_allocations', instance.discountAllocations);
  return val;
}
