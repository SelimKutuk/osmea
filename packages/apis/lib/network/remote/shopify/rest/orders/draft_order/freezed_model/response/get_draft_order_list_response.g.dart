// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_draft_order_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetDraftOrderListResponseImpl _$$GetDraftOrderListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetDraftOrderListResponseImpl(
      draftOrders: (json['draft_orders'] as List<dynamic>?)
          ?.map((e) => DraftOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetDraftOrderListResponseImplToJson(
    _$GetDraftOrderListResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'draft_orders', instance.draftOrders?.map((e) => e.toJson()).toList());
  return val;
}

_$DraftOrderImpl _$$DraftOrderImplFromJson(Map<String, dynamic> json) =>
    _$DraftOrderImpl(
      id: (json['id'] as num?)?.toInt(),
      note: json['note'] as String?,
      taxesIncluded: json['taxes_included'] as bool?,
      currency: json['currency'] as String?,
      invoiceSentAt: json['invoice_sent_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      taxExempt: json['tax_exempt'] as bool?,
      completedAt: json['completed_at'] as String?,
      name: json['name'] as String?,
      allowDiscountCodesInCheckout:
          json['allow_discount_codes_in_checkout?'] as bool?,
      b2B: json['b2b?'] as bool?,
      status: json['status'] as String?,
      lineItems: (json['line_items'] as List<dynamic>?)
          ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      apiClientId: (json['api_client_id'] as num?)?.toInt(),
      shippingAddress: json['shipping_address'] == null
          ? null
          : ShippingAddress.fromJson(
              json['shipping_address'] as Map<String, dynamic>),
      billingAddress: json['billing_address'],
      invoiceUrl: json['invoice_url'] as String?,
      createdOnApiVersionHandle:
          json['created_on_api_version_handle'] as String?,
      appliedDiscount: json['applied_discount'] == null
          ? null
          : AppliedDiscount.fromJson(
              json['applied_discount'] as Map<String, dynamic>),
      orderId: (json['order_id'] as num?)?.toInt(),
      shippingLine: json['shipping_line'],
      taxLines: (json['tax_lines'] as List<dynamic>?)
          ?.map((e) => TaxLine.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: json['tags'] as String?,
      noteAttributes: json['note_attributes'] as List<dynamic>?,
      totalPrice: json['total_price'] as String?,
      subtotalPrice: json['subtotal_price'] as String?,
      totalTax: json['total_tax'] as String?,
      paymentTerms: json['payment_terms'],
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DraftOrderImplToJson(_$DraftOrderImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('note', instance.note);
  writeNotNull('taxes_included', instance.taxesIncluded);
  writeNotNull('currency', instance.currency);
  writeNotNull('invoice_sent_at', instance.invoiceSentAt);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('tax_exempt', instance.taxExempt);
  writeNotNull('completed_at', instance.completedAt);
  writeNotNull('name', instance.name);
  writeNotNull('allow_discount_codes_in_checkout?',
      instance.allowDiscountCodesInCheckout);
  writeNotNull('b2b?', instance.b2B);
  writeNotNull('status', instance.status);
  writeNotNull(
      'line_items', instance.lineItems?.map((e) => e.toJson()).toList());
  writeNotNull('api_client_id', instance.apiClientId);
  writeNotNull('shipping_address', instance.shippingAddress?.toJson());
  writeNotNull('billing_address', instance.billingAddress);
  writeNotNull('invoice_url', instance.invoiceUrl);
  writeNotNull(
      'created_on_api_version_handle', instance.createdOnApiVersionHandle);
  writeNotNull('applied_discount', instance.appliedDiscount?.toJson());
  writeNotNull('order_id', instance.orderId);
  writeNotNull('shipping_line', instance.shippingLine);
  writeNotNull('tax_lines', instance.taxLines?.map((e) => e.toJson()).toList());
  writeNotNull('tags', instance.tags);
  writeNotNull('note_attributes', instance.noteAttributes);
  writeNotNull('total_price', instance.totalPrice);
  writeNotNull('subtotal_price', instance.subtotalPrice);
  writeNotNull('total_tax', instance.totalTax);
  writeNotNull('payment_terms', instance.paymentTerms);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull('customer', instance.customer?.toJson());
  return val;
}

_$AppliedDiscountImpl _$$AppliedDiscountImplFromJson(
        Map<String, dynamic> json) =>
    _$AppliedDiscountImpl(
      description: json['description'] as String?,
      value: json['value'] as String?,
      title: json['title'] as String?,
      amount: json['amount'] as String?,
      valueType: json['value_type'] as String?,
    );

Map<String, dynamic> _$$AppliedDiscountImplToJson(
    _$AppliedDiscountImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('value', instance.value);
  writeNotNull('title', instance.title);
  writeNotNull('amount', instance.amount);
  writeNotNull('value_type', instance.valueType);
  return val;
}

_$CustomerImpl _$$CustomerImplFromJson(Map<String, dynamic> json) =>
    _$CustomerImpl(
      id: (json['id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      ordersCount: (json['orders_count'] as num?)?.toInt(),
      state: json['state'] as String?,
      totalSpent: json['total_spent'] as String?,
      lastOrderId: (json['last_order_id'] as num?)?.toInt(),
      note: json['note'],
      verifiedEmail: json['verified_email'] as bool?,
      multipassIdentifier: json['multipass_identifier'],
      taxExempt: json['tax_exempt'] as bool?,
      tags: json['tags'] as String?,
      lastOrderName: json['last_order_name'] as String?,
      currency: json['currency'] as String?,
      taxExemptions: json['tax_exemptions'] as List<dynamic>?,
      emailMarketingConsent: json['email_marketing_consent'] == null
          ? null
          : MarketingConsent.fromJson(
              json['email_marketing_consent'] as Map<String, dynamic>),
      smsMarketingConsent: json['sms_marketing_consent'] == null
          ? null
          : MarketingConsent.fromJson(
              json['sms_marketing_consent'] as Map<String, dynamic>),
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
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('orders_count', instance.ordersCount);
  writeNotNull('state', instance.state);
  writeNotNull('total_spent', instance.totalSpent);
  writeNotNull('last_order_id', instance.lastOrderId);
  writeNotNull('note', instance.note);
  writeNotNull('verified_email', instance.verifiedEmail);
  writeNotNull('multipass_identifier', instance.multipassIdentifier);
  writeNotNull('tax_exempt', instance.taxExempt);
  writeNotNull('tags', instance.tags);
  writeNotNull('last_order_name', instance.lastOrderName);
  writeNotNull('currency', instance.currency);
  writeNotNull('tax_exemptions', instance.taxExemptions);
  writeNotNull(
      'email_marketing_consent', instance.emailMarketingConsent?.toJson());
  writeNotNull('sms_marketing_consent', instance.smsMarketingConsent?.toJson());
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull('default_address', instance.defaultAddress?.toJson());
  return val;
}

_$DefaultAddressImpl _$$DefaultAddressImplFromJson(Map<String, dynamic> json) =>
    _$DefaultAddressImpl(
      id: (json['id'] as num?)?.toInt(),
      customerId: (json['customer_id'] as num?)?.toInt(),
      company: json['company'],
      province: json['province'],
      country: json['country'] as String?,
      provinceCode: json['province_code'],
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
  writeNotNull('company', instance.company);
  writeNotNull('province', instance.province);
  writeNotNull('country', instance.country);
  writeNotNull('province_code', instance.provinceCode);
  writeNotNull('country_code', instance.countryCode);
  writeNotNull('country_name', instance.countryName);
  writeNotNull('default', instance.defaultAddressDefault);
  return val;
}

_$MarketingConsentImpl _$$MarketingConsentImplFromJson(
        Map<String, dynamic> json) =>
    _$MarketingConsentImpl(
      state: json['state'] as String?,
      optInLevel: json['opt_in_level'] as String?,
      consentUpdatedAt: json['consent_updated_at'],
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

_$LineItemImpl _$$LineItemImplFromJson(Map<String, dynamic> json) =>
    _$LineItemImpl(
      id: (json['id'] as num?)?.toInt(),
      variantId: (json['variant_id'] as num?)?.toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      title: json['title'] as String?,
      variantTitle: json['variant_title'],
      sku: json['sku'] as String?,
      vendor: json['vendor'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      requiresShipping: json['requires_shipping'] as bool?,
      taxable: json['taxable'] as bool?,
      giftCard: json['gift_card'] as bool?,
      fulfillmentService: json['fulfillment_service'] as String?,
      grams: (json['grams'] as num?)?.toInt(),
      taxLines: (json['tax_lines'] as List<dynamic>?)
          ?.map((e) => TaxLine.fromJson(e as Map<String, dynamic>))
          .toList(),
      appliedDiscount: json['applied_discount'] == null
          ? null
          : AppliedDiscount.fromJson(
              json['applied_discount'] as Map<String, dynamic>),
      name: json['name'] as String?,
      properties: json['properties'] as List<dynamic>?,
      custom: json['custom'] as bool?,
      price: json['price'] as String?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
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
  writeNotNull('product_id', instance.productId);
  writeNotNull('title', instance.title);
  writeNotNull('variant_title', instance.variantTitle);
  writeNotNull('sku', instance.sku);
  writeNotNull('vendor', instance.vendor);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('requires_shipping', instance.requiresShipping);
  writeNotNull('taxable', instance.taxable);
  writeNotNull('gift_card', instance.giftCard);
  writeNotNull('fulfillment_service', instance.fulfillmentService);
  writeNotNull('grams', instance.grams);
  writeNotNull('tax_lines', instance.taxLines?.map((e) => e.toJson()).toList());
  writeNotNull('applied_discount', instance.appliedDiscount?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('properties', instance.properties);
  writeNotNull('custom', instance.custom);
  writeNotNull('price', instance.price);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  return val;
}

_$TaxLineImpl _$$TaxLineImplFromJson(Map<String, dynamic> json) =>
    _$TaxLineImpl(
      rate: (json['rate'] as num?)?.toDouble(),
      title: json['title'] as String?,
      price: json['price'] as String?,
    );

Map<String, dynamic> _$$TaxLineImplToJson(_$TaxLineImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('rate', instance.rate);
  writeNotNull('title', instance.title);
  writeNotNull('price', instance.price);
  return val;
}

_$ShippingAddressImpl _$$ShippingAddressImplFromJson(
        Map<String, dynamic> json) =>
    _$ShippingAddressImpl(
      province: json['province'],
      country: json['country'],
      countryCode: json['country_code'],
      provinceCode: json['province_code'],
    );

Map<String, dynamic> _$$ShippingAddressImplToJson(
    _$ShippingAddressImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('province', instance.province);
  writeNotNull('country', instance.country);
  writeNotNull('country_code', instance.countryCode);
  writeNotNull('province_code', instance.provinceCode);
  return val;
}
