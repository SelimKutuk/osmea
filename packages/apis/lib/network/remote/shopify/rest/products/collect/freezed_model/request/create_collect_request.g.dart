// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_collect_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateCollectRequestImpl _$$CreateCollectRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateCollectRequestImpl(
      collect:
          CollectToCreate.fromJson(json['collect'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateCollectRequestImplToJson(
        _$CreateCollectRequestImpl instance) =>
    <String, dynamic>{
      'collect': instance.collect.toJson(),
    };

_$CollectToCreateImpl _$$CollectToCreateImplFromJson(
        Map<String, dynamic> json) =>
    _$CollectToCreateImpl(
      productId: (json['product_id'] as num).toInt(),
      collectionId: (json['collection_id'] as num).toInt(),
      position: (json['position'] as num?)?.toInt(),
      sortValue: json['sort_value'] as String?,
    );

Map<String, dynamic> _$$CollectToCreateImplToJson(
    _$CollectToCreateImpl instance) {
  final val = <String, dynamic>{
    'product_id': instance.productId,
    'collection_id': instance.collectionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('position', instance.position);
  writeNotNull('sort_value', instance.sortValue);
  return val;
}
