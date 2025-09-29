// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tender_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TenderTransactionImpl _$$TenderTransactionImplFromJson(
        Map<String, dynamic> json) =>
    _$TenderTransactionImpl(
      id: (json['id'] as num).toInt(),
      orderId: (json['order_id'] as num).toInt(),
      amount: json['amount'] as String,
      currency: json['currency'] as String,
      userId: (json['user_id'] as num?)?.toInt(),
      test: json['test'] as bool,
      processedAt: json['processed_at'] as String,
      remoteReference: json['remote_reference'] as String?,
      paymentMethod: json['payment_method'] as String,
      paymentDetails: json['payment_details'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$TenderTransactionImplToJson(
    _$TenderTransactionImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'order_id': instance.orderId,
    'amount': instance.amount,
    'currency': instance.currency,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId);
  val['test'] = instance.test;
  val['processed_at'] = instance.processedAt;
  writeNotNull('remote_reference', instance.remoteReference);
  val['payment_method'] = instance.paymentMethod;
  writeNotNull('payment_details', instance.paymentDetails);
  return val;
}
