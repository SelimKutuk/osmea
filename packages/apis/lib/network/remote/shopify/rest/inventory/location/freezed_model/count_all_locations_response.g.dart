// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_all_locations_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountAllLocationsResponseImpl _$$CountAllLocationsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CountAllLocationsResponseImpl(
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CountAllLocationsResponseImplToJson(
    _$CountAllLocationsResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}
