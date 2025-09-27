// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_sending_order_confirmation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateOrderSendingOrderConfirmationRequestImpl
    _$$CreateOrderSendingOrderConfirmationRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateOrderSendingOrderConfirmationRequestImpl(
          order: json['order'] == null
              ? null
              : Order.fromJson(json['order'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateOrderSendingOrderConfirmationRequestImplToJson(
    _$CreateOrderSendingOrderConfirmationRequestImpl instance) {
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
      email: json['email'] as String?,
      fulfillmentStatus: json['fulfillment_status'] as String?,
      sendReceipt: json['send_receipt'] as bool?,
      sendFulfillmentReceipt: json['send_fulfillment_receipt'] as bool?,
      lineItems: (json['line_items'] as List<dynamic>?)
          ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('fulfillment_status', instance.fulfillmentStatus);
  writeNotNull('send_receipt', instance.sendReceipt);
  writeNotNull('send_fulfillment_receipt', instance.sendFulfillmentReceipt);
  writeNotNull(
      'line_items', instance.lineItems?.map((e) => e.toJson()).toList());
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
