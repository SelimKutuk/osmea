// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateOrderRequestImpl _$$CreateOrderRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateOrderRequestImpl(
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateOrderRequestImplToJson(
    _$CreateOrderRequestImpl instance) {
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
      lineItems: (json['line_items'] as List<dynamic>?)
          ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      billingAddress: json['billing_address'] == null
          ? null
          : IngAddress.fromJson(
              json['billing_address'] as Map<String, dynamic>),
      shippingAddress: json['shipping_address'] == null
          ? null
          : IngAddress.fromJson(
              json['shipping_address'] as Map<String, dynamic>),
      financialStatus: json['financial_status'] as String?,
      email: json['email'] as String?,
      sendReceipt: json['send_receipt'] as bool?,
      sendFulfillmentReceipt: json['send_fulfillment_receipt'] as bool?,
      tags: json['tags'] as String?,
      note: json['note'] as String?,
      test: json['test'] as bool?,
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'line_items', instance.lineItems?.map((e) => e.toJson()).toList());
  writeNotNull('customer', instance.customer?.toJson());
  writeNotNull('billing_address', instance.billingAddress?.toJson());
  writeNotNull('shipping_address', instance.shippingAddress?.toJson());
  writeNotNull('financial_status', instance.financialStatus);
  writeNotNull('email', instance.email);
  writeNotNull('send_receipt', instance.sendReceipt);
  writeNotNull('send_fulfillment_receipt', instance.sendFulfillmentReceipt);
  writeNotNull('tags', instance.tags);
  writeNotNull('note', instance.note);
  writeNotNull('test', instance.test);
  return val;
}

_$IngAddressImpl _$$IngAddressImplFromJson(Map<String, dynamic> json) =>
    _$IngAddressImpl(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      address1: json['address1'] as String?,
      phone: json['phone'] as String?,
      city: json['city'] as String?,
      province: json['province'] as String?,
      country: json['country'] as String?,
      zip: json['zip'] as String?,
    );

Map<String, dynamic> _$$IngAddressImplToJson(_$IngAddressImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('address1', instance.address1);
  writeNotNull('phone', instance.phone);
  writeNotNull('city', instance.city);
  writeNotNull('province', instance.province);
  writeNotNull('country', instance.country);
  writeNotNull('zip', instance.zip);
  return val;
}

_$CustomerImpl _$$CustomerImplFromJson(Map<String, dynamic> json) =>
    _$CustomerImpl(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$CustomerImplToJson(_$CustomerImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('email', instance.email);
  return val;
}

_$LineItemImpl _$$LineItemImplFromJson(Map<String, dynamic> json) =>
    _$LineItemImpl(
      variantId: (json['variant_id'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LineItemImplToJson(_$LineItemImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('variant_id', instance.variantId);
  writeNotNull('quantity', instance.quantity);
  return val;
}
