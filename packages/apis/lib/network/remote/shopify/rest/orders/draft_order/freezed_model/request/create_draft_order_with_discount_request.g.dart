// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_draft_order_with_discount_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateDraftOrderWithDiscountRequestImpl
    _$$CreateDraftOrderWithDiscountRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateDraftOrderWithDiscountRequestImpl(
          draftOrder: json['draft_order'] == null
              ? null
              : DraftOrder.fromJson(
                  json['draft_order'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateDraftOrderWithDiscountRequestImplToJson(
    _$CreateDraftOrderWithDiscountRequestImpl instance) {
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
      lineItems: (json['line_items'] as List<dynamic>?)
          ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      appliedDiscount: json['applied_discount'] == null
          ? null
          : AppliedDiscount.fromJson(
              json['applied_discount'] as Map<String, dynamic>),
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

  writeNotNull(
      'line_items', instance.lineItems?.map((e) => e.toJson()).toList());
  writeNotNull('applied_discount', instance.appliedDiscount?.toJson());
  writeNotNull('customer', instance.customer?.toJson());
  writeNotNull(
      'use_customer_default_address', instance.useCustomerDefaultAddress);
  return val;
}

_$AppliedDiscountImpl _$$AppliedDiscountImplFromJson(
        Map<String, dynamic> json) =>
    _$AppliedDiscountImpl(
      description: json['description'] as String?,
      valueType: json['value_type'] as String?,
      value: json['value'] as String?,
      amount: json['amount'] as String?,
      title: json['title'] as String?,
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
  writeNotNull('value_type', instance.valueType);
  writeNotNull('value', instance.value);
  writeNotNull('amount', instance.amount);
  writeNotNull('title', instance.title);
  return val;
}

_$CustomerImpl _$$CustomerImplFromJson(Map<String, dynamic> json) =>
    _$CustomerImpl(
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CustomerImplToJson(_$CustomerImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

_$LineItemImpl _$$LineItemImplFromJson(Map<String, dynamic> json) =>
    _$LineItemImpl(
      title: json['title'] as String?,
      price: json['price'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LineItemImplToJson(_$LineItemImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('price', instance.price);
  writeNotNull('quantity', instance.quantity);
  return val;
}
