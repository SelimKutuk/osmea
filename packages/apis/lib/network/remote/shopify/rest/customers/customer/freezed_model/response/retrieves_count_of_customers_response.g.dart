// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieves_count_of_customers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrievesCountOfCustomersResponseImpl
    _$$RetrievesCountOfCustomersResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$RetrievesCountOfCustomersResponseImpl(
          count: (json['count'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$RetrievesCountOfCustomersResponseImplToJson(
    _$RetrievesCountOfCustomersResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}
