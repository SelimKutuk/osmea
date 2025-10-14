// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_tender_transactions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllTenderTransactionsResponseImpl
    _$$GetAllTenderTransactionsResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAllTenderTransactionsResponseImpl(
          tenderTransactions: (json['tender_transactions'] as List<dynamic>?)
              ?.map(
                  (e) => TenderTransaction.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$GetAllTenderTransactionsResponseImplToJson(
    _$GetAllTenderTransactionsResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tender_transactions',
      instance.tenderTransactions?.map((e) => e.toJson()).toList());
  return val;
}
