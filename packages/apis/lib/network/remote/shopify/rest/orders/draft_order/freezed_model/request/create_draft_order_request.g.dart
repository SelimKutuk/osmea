// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_draft_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateDraftOrderRequestImpl _$$CreateDraftOrderRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateDraftOrderRequestImpl(
      draftOrder: json['draft_order'] == null
          ? null
          : DraftOrder.fromJson(json['draft_order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateDraftOrderRequestImplToJson(
    _$CreateDraftOrderRequestImpl instance) {
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
      email: json['email'] as String?,
      taxesIncluded: json['taxes_included'] as bool?,
      currency: json['currency'] as String?,
      note: json['note'] as String?,
      taxExempt: json['tax_exempt'] as bool?,
      name: json['name'] as String?,
      allowDiscountCodesInCheckout:
          json['allow_discount_codes_in_checkout?'] as bool?,
      b2B: json['b2b?'] as bool?,
      status: json['status'] as String?,
      lineItems: (json['line_items'] as List<dynamic>?)
          ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: json['tags'] as String?,
      totalPrice: json['total_price'] as String?,
      subtotalPrice: json['subtotal_price'] as String?,
      totalTax: json['total_tax'] as String?,
    );

Map<String, dynamic> _$$DraftOrderImplToJson(_$DraftOrderImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('taxes_included', instance.taxesIncluded);
  writeNotNull('currency', instance.currency);
  writeNotNull('note', instance.note);
  writeNotNull('tax_exempt', instance.taxExempt);
  writeNotNull('name', instance.name);
  writeNotNull('allow_discount_codes_in_checkout?',
      instance.allowDiscountCodesInCheckout);
  writeNotNull('b2b?', instance.b2B);
  writeNotNull('status', instance.status);
  writeNotNull(
      'line_items', instance.lineItems?.map((e) => e.toJson()).toList());
  writeNotNull('tags', instance.tags);
  writeNotNull('total_price', instance.totalPrice);
  writeNotNull('subtotal_price', instance.subtotalPrice);
  writeNotNull('total_tax', instance.totalTax);
  return val;
}

_$LineItemImpl _$$LineItemImplFromJson(Map<String, dynamic> json) =>
    _$LineItemImpl(
      variantId: (json['variant_id'] as num?)?.toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      title: json['title'] as String?,
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
      custom: json['custom'] as bool?,
      price: json['price'] as String?,
      name: json['name'] as String?,
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
  writeNotNull('sku', instance.sku);
  writeNotNull('vendor', instance.vendor);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('requires_shipping', instance.requiresShipping);
  writeNotNull('taxable', instance.taxable);
  writeNotNull('gift_card', instance.giftCard);
  writeNotNull('fulfillment_service', instance.fulfillmentService);
  writeNotNull('grams', instance.grams);
  writeNotNull('tax_lines', instance.taxLines?.map((e) => e.toJson()).toList());
  writeNotNull('custom', instance.custom);
  writeNotNull('price', instance.price);
  writeNotNull('name', instance.name);
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
