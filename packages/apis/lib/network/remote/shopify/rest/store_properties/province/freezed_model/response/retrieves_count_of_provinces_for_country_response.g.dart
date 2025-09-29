// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieves_count_of_provinces_for_country_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrievesCountOfProvincesForCountryResponseImpl
    _$$RetrievesCountOfProvincesForCountryResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$RetrievesCountOfProvincesForCountryResponseImpl(
          count: (json['count'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$RetrievesCountOfProvincesForCountryResponseImplToJson(
    _$RetrievesCountOfProvincesForCountryResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}
