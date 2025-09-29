// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_collects_count_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetCollectsCountResponseImpl _$$GetCollectsCountResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetCollectsCountResponseImpl(
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GetCollectsCountResponseImplToJson(
    _$GetCollectsCountResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}
