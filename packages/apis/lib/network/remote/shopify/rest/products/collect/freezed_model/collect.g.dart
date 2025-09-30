// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collect.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectImpl _$$CollectImplFromJson(Map<String, dynamic> json) =>
    _$CollectImpl(
      id: (json['id'] as num?)?.toInt(),
      collectionId: (json['collection_id'] as num?)?.toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      position: (json['position'] as num?)?.toInt(),
      sortValue: json['sort_value'] as String?,
    );

Map<String, dynamic> _$$CollectImplToJson(_$CollectImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('collection_id', instance.collectionId);
  writeNotNull('product_id', instance.productId);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('position', instance.position);
  writeNotNull('sort_value', instance.sortValue);
  return val;
}
