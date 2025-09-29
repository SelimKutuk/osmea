// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_transaction_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetTransactionListResponseImpl _$$GetTransactionListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetTransactionListResponseImpl(
      transactions: (json['transactions'] as List<dynamic>?)
          ?.map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetTransactionListResponseImplToJson(
    _$GetTransactionListResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'transactions', instance.transactions?.map((e) => e.toJson()).toList());
  return val;
}

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      id: (json['id'] as num?)?.toInt(),
      orderId: (json['order_id'] as num?)?.toInt(),
      kind: json['kind'] as String?,
      gateway: json['gateway'] as String?,
      status: json['status'] as String?,
      message: json['message'],
      createdAt: json['created_at'] as String?,
      test: json['test'] as bool?,
      authorization: json['authorization'],
      locationId: json['location_id'],
      userId: json['user_id'],
      parentId: json['parent_id'],
      processedAt: json['processed_at'] as String?,
      deviceId: json['device_id'],
      errorCode: json['error_code'],
      sourceName: json['source_name'] as String?,
      receipt: json['receipt'] == null
          ? null
          : Receipt.fromJson(json['receipt'] as Map<String, dynamic>),
      amount: json['amount'] as String?,
      currency: json['currency'] as String?,
      paymentId: json['payment_id'] as String?,
      totalUnsettledSet: json['total_unsettled_set'] == null
          ? null
          : TotalUnsettledSet.fromJson(
              json['total_unsettled_set'] as Map<String, dynamic>),
      manualPaymentGateway: json['manual_payment_gateway'] as bool?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('kind', instance.kind);
  writeNotNull('gateway', instance.gateway);
  writeNotNull('status', instance.status);
  writeNotNull('message', instance.message);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('test', instance.test);
  writeNotNull('authorization', instance.authorization);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('user_id', instance.userId);
  writeNotNull('parent_id', instance.parentId);
  writeNotNull('processed_at', instance.processedAt);
  writeNotNull('device_id', instance.deviceId);
  writeNotNull('error_code', instance.errorCode);
  writeNotNull('source_name', instance.sourceName);
  writeNotNull('receipt', instance.receipt?.toJson());
  writeNotNull('amount', instance.amount);
  writeNotNull('currency', instance.currency);
  writeNotNull('payment_id', instance.paymentId);
  writeNotNull('total_unsettled_set', instance.totalUnsettledSet?.toJson());
  writeNotNull('manual_payment_gateway', instance.manualPaymentGateway);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  return val;
}

_$ReceiptImpl _$$ReceiptImplFromJson(Map<String, dynamic> json) =>
    _$ReceiptImpl();

Map<String, dynamic> _$$ReceiptImplToJson(_$ReceiptImpl instance) =>
    <String, dynamic>{};

_$TotalUnsettledSetImpl _$$TotalUnsettledSetImplFromJson(
        Map<String, dynamic> json) =>
    _$TotalUnsettledSetImpl(
      presentmentMoney: json['presentment_money'] == null
          ? null
          : Money.fromJson(json['presentment_money'] as Map<String, dynamic>),
      shopMoney: json['shop_money'] == null
          ? null
          : Money.fromJson(json['shop_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TotalUnsettledSetImplToJson(
    _$TotalUnsettledSetImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('presentment_money', instance.presentmentMoney?.toJson());
  writeNotNull('shop_money', instance.shopMoney?.toJson());
  return val;
}

_$MoneyImpl _$$MoneyImplFromJson(Map<String, dynamic> json) => _$MoneyImpl(
      amount: json['amount'] as String?,
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$$MoneyImplToJson(_$MoneyImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount);
  writeNotNull('currency', instance.currency);
  return val;
}
