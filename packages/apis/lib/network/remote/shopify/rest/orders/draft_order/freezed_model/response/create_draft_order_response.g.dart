// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_draft_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateDraftOrderResponseImpl _$$CreateDraftOrderResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateDraftOrderResponseImpl(
      draftOrder: json['draft_order'] == null
          ? null
          : DraftOrder.fromJson(json['draft_order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateDraftOrderResponseImplToJson(
    _$CreateDraftOrderResponseImpl instance) {
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
      email: json['email'],
      taxesIncluded: json['taxes_included'] as bool?,
      currency: json['currency'] as String?,
      invoiceSentAt: json['invoice_sent_at'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      taxExempt: json['tax_exempt'] as bool?,
      completedAt: json['completed_at'],
      name: json['name'] as String?,
      allowDiscountCodesInCheckout:
          json['allow_discount_codes_in_checkout?'] as bool?,
      b2B: json['b2b?'] as bool?,
      status: json['status'] as String?,
      lineItems: (json['line_items'] as List<dynamic>?)
          ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      apiClientId: (json['api_client_id'] as num?)?.toInt(),
      shippingAddress: json['shipping_address'],
      billingAddress: json['billing_address'],
      invoiceUrl: json['invoice_url'] as String?,
      createdOnApiVersionHandle:
          json['created_on_api_version_handle'] as String?,
      appliedDiscount: json['applied_discount'],
      orderId: json['order_id'],
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
  writeNotNull('allow_discount_codes_in_checkout?',
      instance.allowDiscountCodesInCheckout);
  writeNotNull('b2b?', instance.b2B);
  writeNotNull('status', instance.status);
  writeNotNull(
      'line_items', instance.lineItems?.map((e) => e.toJson()).toList());
  writeNotNull('api_client_id', instance.apiClientId);
  writeNotNull('shipping_address', instance.shippingAddress);
  writeNotNull('billing_address', instance.billingAddress);
  writeNotNull('invoice_url', instance.invoiceUrl);
  writeNotNull(
      'created_on_api_version_handle', instance.createdOnApiVersionHandle);
  writeNotNull('applied_discount', instance.appliedDiscount);
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
  writeNotNull('applied_discount', instance.appliedDiscount);
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
