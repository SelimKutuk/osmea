// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_draft_order_with_discount_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateDraftOrderWithDiscountResponseImpl
    _$$CreateDraftOrderWithDiscountResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateDraftOrderWithDiscountResponseImpl(
          draftOrder: json['draft_order'] == null
              ? null
              : DraftOrder.fromJson(
                  json['draft_order'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateDraftOrderWithDiscountResponseImplToJson(
    _$CreateDraftOrderWithDiscountResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('draft_order', instance.draftOrder?.toJson());
  return val;
}

_$DraftOrderImpl _$$DraftOrderImplFromJson(Map<String, dynamic> json) =>
    _$DraftOrderImpl(
      id: (json['id'] as num?)?.toInt(),
      note: json['note'],
      email: json['email'] as String?,
      taxesIncluded: json['taxes_included'] as bool?,
      currency: json['currency'] as String?,
      invoiceSentAt: json['invoice_sent_at'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      taxExempt: json['tax_exempt'] as bool?,
      completedAt: json['completed_at'],
      name: json['name'] as String?,
      status: json['status'] as String?,
      lineItems: (json['line_items'] as List<dynamic>?)
          ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      shippingAddress: json['shipping_address'] == null
          ? null
          : Address.fromJson(json['shipping_address'] as Map<String, dynamic>),
      billingAddress: json['billing_address'] == null
          ? null
          : Address.fromJson(json['billing_address'] as Map<String, dynamic>),
      invoiceUrl: json['invoice_url'] as String?,
      appliedDiscount: json['applied_discount'] == null
          ? null
          : AppliedDiscount.fromJson(
              json['applied_discount'] as Map<String, dynamic>),
      orderId: json['order_id'],
      shippingLine: json['shipping_line'],
      taxLines: json['tax_lines'] as List<dynamic>?,
      tags: json['tags'] as String?,
      noteAttributes: json['note_attributes'] as List<dynamic>?,
      totalPrice: json['total_price'] as String?,
      subtotalPrice: json['subtotal_price'] as String?,
      totalTax: json['total_tax'] as String?,
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
  writeNotNull('email', instance.email);
  writeNotNull('taxes_included', instance.taxesIncluded);
  writeNotNull('currency', instance.currency);
  writeNotNull('invoice_sent_at', instance.invoiceSentAt);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('tax_exempt', instance.taxExempt);
  writeNotNull('completed_at', instance.completedAt);
  writeNotNull('name', instance.name);
  writeNotNull('status', instance.status);
  writeNotNull(
      'line_items', instance.lineItems?.map((e) => e.toJson()).toList());
  writeNotNull('shipping_address', instance.shippingAddress?.toJson());
  writeNotNull('billing_address', instance.billingAddress?.toJson());
  writeNotNull('invoice_url', instance.invoiceUrl);
  writeNotNull('applied_discount', instance.appliedDiscount?.toJson());
  writeNotNull('order_id', instance.orderId);
  writeNotNull('shipping_line', instance.shippingLine);
  writeNotNull('tax_lines', instance.taxLines);
  writeNotNull('tags', instance.tags);
  writeNotNull('note_attributes', instance.noteAttributes);
  writeNotNull('total_price', instance.totalPrice);
  writeNotNull('subtotal_price', instance.subtotalPrice);
  writeNotNull('total_tax', instance.totalTax);
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

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      firstName: json['first_name'],
      address1: json['address1'] as String?,
      phone: json['phone'] as String?,
      city: json['city'] as String?,
      zip: json['zip'] as String?,
      province: json['province'] as String?,
      country: json['country'] as String?,
      lastName: json['last_name'],
      address2: json['address2'] as String?,
      company: json['company'],
      latitude: json['latitude'],
      longitude: json['longitude'],
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

_$LineItemImpl _$$LineItemImplFromJson(Map<String, dynamic> json) =>
    _$LineItemImpl(
      variantId: json['variant_id'],
      productId: json['product_id'],
      title: json['title'] as String?,
      variantTitle: json['variant_title'],
      sku: json['sku'],
      vendor: json['vendor'],
      quantity: (json['quantity'] as num?)?.toInt(),
      requiresShipping: json['requires_shipping'] as bool?,
      taxable: json['taxable'] as bool?,
      giftCard: json['gift_card'] as bool?,
      fulfillmentService: json['fulfillment_service'] as String?,
      grams: (json['grams'] as num?)?.toInt(),
      taxLines: json['tax_lines'] as List<dynamic>?,
      appliedDiscount: json['applied_discount'],
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
  writeNotNull('tax_lines', instance.taxLines);
  writeNotNull('applied_discount', instance.appliedDiscount);
  writeNotNull('name', instance.name);
  writeNotNull('properties', instance.properties);
  writeNotNull('custom', instance.custom);
  writeNotNull('price', instance.price);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  return val;
}
