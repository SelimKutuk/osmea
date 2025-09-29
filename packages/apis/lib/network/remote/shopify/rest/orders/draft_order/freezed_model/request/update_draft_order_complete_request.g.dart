// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_draft_order_complete_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateDraftOrderCompleteRequestImpl
    _$$UpdateDraftOrderCompleteRequestImplFromJson(Map<String, dynamic> json) =>
        _$UpdateDraftOrderCompleteRequestImpl(
          draftOrder: json['draft_order'] == null
              ? null
              : DraftOrder.fromJson(
                  json['draft_order'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$UpdateDraftOrderCompleteRequestImplToJson(
    _$UpdateDraftOrderCompleteRequestImpl instance) {
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
      note: json['note'] as String?,
      email: json['email'] as String?,
      taxesIncluded: json['taxes_included'] as bool?,
      currency: json['currency'] as String?,
      invoiceSentAt: json['invoice_sent_at'] as String?,
      taxExempt: json['tax_exempt'] as bool?,
      completedAt: json['completed_at'] as String?,
      status: json['status'] as String?,
      lineItems: (json['line_items'] as List<dynamic>?)
          ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      shippingAddress: json['shipping_address'] == null
          ? null
          : IngAddress.fromJson(
              json['shipping_address'] as Map<String, dynamic>),
      billingAddress: json['billing_address'] == null
          ? null
          : IngAddress.fromJson(
              json['billing_address'] as Map<String, dynamic>),
      appliedDiscount: json['applied_discount'] == null
          ? null
          : AppliedDiscount.fromJson(
              json['applied_discount'] as Map<String, dynamic>),
      shippingLine: json['shipping_line'] == null
          ? null
          : ShippingLine.fromJson(
              json['shipping_line'] as Map<String, dynamic>),
      tags: json['tags'] as String?,
      noteAttributes: (json['note_attributes'] as List<dynamic>?)
          ?.map((e) => NoteAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      useCustomerDefaultAddress: json['use_customer_default_address'] as bool?,
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
  writeNotNull('tax_exempt', instance.taxExempt);
  writeNotNull('completed_at', instance.completedAt);
  writeNotNull('status', instance.status);
  writeNotNull(
      'line_items', instance.lineItems?.map((e) => e.toJson()).toList());
  writeNotNull('shipping_address', instance.shippingAddress?.toJson());
  writeNotNull('billing_address', instance.billingAddress?.toJson());
  writeNotNull('applied_discount', instance.appliedDiscount?.toJson());
  writeNotNull('shipping_line', instance.shippingLine?.toJson());
  writeNotNull('tags', instance.tags);
  writeNotNull('note_attributes',
      instance.noteAttributes?.map((e) => e.toJson()).toList());
  writeNotNull('customer', instance.customer?.toJson());
  writeNotNull(
      'use_customer_default_address', instance.useCustomerDefaultAddress);
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
  return val;
}

_$CustomerImpl _$$CustomerImplFromJson(Map<String, dynamic> json) =>
    _$CustomerImpl(
      id: (json['id'] as num?)?.toInt(),
      email: json['email'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      phone: json['phone'] as String?,
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
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('phone', instance.phone);
  return val;
}

_$LineItemImpl _$$LineItemImplFromJson(Map<String, dynamic> json) =>
    _$LineItemImpl(
      id: (json['id'] as num?)?.toInt(),
      variantId: (json['variant_id'] as num?)?.toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      title: json['title'] as String?,
      variantTitle: json['variant_title'] as String?,
      sku: json['sku'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      price: json['price'] as String?,
      appliedDiscount: json['applied_discount'] == null
          ? null
          : AppliedDiscount.fromJson(
              json['applied_discount'] as Map<String, dynamic>),
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
  writeNotNull('quantity', instance.quantity);
  writeNotNull('price', instance.price);
  writeNotNull('applied_discount', instance.appliedDiscount?.toJson());
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
      custom: json['custom'] as bool?,
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
  writeNotNull('custom', instance.custom);
  return val;
}
