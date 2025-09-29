// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_refund_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateRefundRequestImpl _$$CreateRefundRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateRefundRequestImpl(
      refund: json['refund'] == null
          ? null
          : Refund.fromJson(json['refund'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateRefundRequestImplToJson(
    _$CreateRefundRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('refund', instance.refund?.toJson());
  return val;
}

_$RefundImpl _$$RefundImplFromJson(Map<String, dynamic> json) => _$RefundImpl(
      note: json['note'] as String?,
      notify: json['notify'] as bool?,
      test: json['test'] as bool?,
      refundLineItems: (json['refund_line_items'] as List<dynamic>?)
          ?.map((e) => RefundLineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      transactions: (json['transactions'] as List<dynamic>?)
          ?.map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RefundImplToJson(_$RefundImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('note', instance.note);
  writeNotNull('notify', instance.notify);
  writeNotNull('test', instance.test);
  writeNotNull('refund_line_items',
      instance.refundLineItems?.map((e) => e.toJson()).toList());
  writeNotNull(
      'transactions', instance.transactions?.map((e) => e.toJson()).toList());
  return val;
}

_$RefundLineItemImpl _$$RefundLineItemImplFromJson(Map<String, dynamic> json) =>
    _$RefundLineItemImpl(
      lineItemId: (json['line_item_id'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      restockType: json['restock_type'] as String?,
      locationId: (json['location_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RefundLineItemImplToJson(
    _$RefundLineItemImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('line_item_id', instance.lineItemId);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('restock_type', instance.restockType);
  writeNotNull('location_id', instance.locationId);
  return val;
}

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      kind: json['kind'] as String?,
      gateway: json['gateway'] as String?,
      amount: json['amount'] as String?,
      parentId: json['parent_id'],
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('kind', instance.kind);
  writeNotNull('gateway', instance.gateway);
  writeNotNull('amount', instance.amount);
  writeNotNull('parent_id', instance.parentId);
  return val;
}
