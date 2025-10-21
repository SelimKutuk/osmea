// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_count_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetCountOrderResponseImpl _$$GetCountOrderResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetCountOrderResponseImpl(
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GetCountOrderResponseImplToJson(
    _$GetCountOrderResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}
