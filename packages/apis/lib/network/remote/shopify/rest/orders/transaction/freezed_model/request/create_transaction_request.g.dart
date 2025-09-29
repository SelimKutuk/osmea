// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transaction_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateTransactionRequestImpl _$$CreateTransactionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateTransactionRequestImpl(
      transaction: json['transaction'] == null
          ? null
          : Transaction.fromJson(json['transaction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateTransactionRequestImplToJson(
    _$CreateTransactionRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('transaction', instance.transaction?.toJson());
  return val;
}

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      kind: json['kind'] as String?,
      amount: json['amount'] as String?,
      currency: json['currency'] as String?,
      gateway: json['gateway'] as String?,
      test: json['test'] as bool?,
      source: json['source'] as String?,
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('kind', instance.kind);
  writeNotNull('amount', instance.amount);
  writeNotNull('currency', instance.currency);
  writeNotNull('gateway', instance.gateway);
  writeNotNull('test', instance.test);
  writeNotNull('source', instance.source);
  return val;
}
