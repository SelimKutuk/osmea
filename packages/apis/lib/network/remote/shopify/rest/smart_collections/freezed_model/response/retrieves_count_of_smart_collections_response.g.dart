// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieves_count_of_smart_collections_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrievesCountOfSmartCollectionsResponseImpl
    _$$RetrievesCountOfSmartCollectionsResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$RetrievesCountOfSmartCollectionsResponseImpl(
          count: (json['count'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$RetrievesCountOfSmartCollectionsResponseImplToJson(
    _$RetrievesCountOfSmartCollectionsResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}
