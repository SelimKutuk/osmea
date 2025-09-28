// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieves_count_events_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrievesCountEventsResponseImpl _$$RetrievesCountEventsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RetrievesCountEventsResponseImpl(
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RetrievesCountEventsResponseImplToJson(
    _$RetrievesCountEventsResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}
