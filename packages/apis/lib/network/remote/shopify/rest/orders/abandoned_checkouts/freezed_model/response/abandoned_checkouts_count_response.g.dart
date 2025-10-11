// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abandoned_checkouts_count_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AbandonedCheckoutsCountResponseImpl
    _$$AbandonedCheckoutsCountResponseImplFromJson(Map<String, dynamic> json) =>
        _$AbandonedCheckoutsCountResponseImpl(
          count: (json['count'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$AbandonedCheckoutsCountResponseImplToJson(
    _$AbandonedCheckoutsCountResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}
