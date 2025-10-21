// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_custom_collections_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountCustomCollectionsResponseImpl
    _$$CountCustomCollectionsResponseImplFromJson(Map<String, dynamic> json) =>
        _$CountCustomCollectionsResponseImpl(
          count: (json['count'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$CountCustomCollectionsResponseImplToJson(
    _$CountCustomCollectionsResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}
