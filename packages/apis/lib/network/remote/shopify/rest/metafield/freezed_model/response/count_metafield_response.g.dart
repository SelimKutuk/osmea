// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_metafield_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountMetafieldResponseImpl _$$CountMetafieldResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CountMetafieldResponseImpl(
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CountMetafieldResponseImplToJson(
    _$CountMetafieldResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}
