// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_transaction_count_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetTransactionCountResponseImpl _$$GetTransactionCountResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetTransactionCountResponseImpl(
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GetTransactionCountResponseImplToJson(
    _$GetTransactionCountResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}
