// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_products_collection_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountProductsCollectionResponseImpl
    _$$CountProductsCollectionResponseImplFromJson(Map<String, dynamic> json) =>
        _$CountProductsCollectionResponseImpl(
          count: (json['count'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$CountProductsCollectionResponseImplToJson(
    _$CountProductsCollectionResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}
