// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_collect_to_collection_by_product_id_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddCollectToCollectionByProductIdRequestImpl
    _$$AddCollectToCollectionByProductIdRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$AddCollectToCollectionByProductIdRequestImpl(
          customCollection: json['custom_collection'] == null
              ? null
              : CustomCollection.fromJson(
                  json['custom_collection'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$AddCollectToCollectionByProductIdRequestImplToJson(
    _$AddCollectToCollectionByProductIdRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('custom_collection', instance.customCollection?.toJson());
  return val;
}

_$CustomCollectionImpl _$$CustomCollectionImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomCollectionImpl(
      id: (json['id'] as num?)?.toInt(),
      collects: (json['collects'] as List<dynamic>?)
          ?.map((e) => Collect.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CustomCollectionImplToJson(
    _$CustomCollectionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('collects', instance.collects?.map((e) => e.toJson()).toList());
  return val;
}

_$CollectImpl _$$CollectImplFromJson(Map<String, dynamic> json) =>
    _$CollectImpl(
      productId: (json['product_id'] as num?)?.toInt(),
      position: (json['position'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CollectImplToJson(_$CollectImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product_id', instance.productId);
  writeNotNull('position', instance.position);
  return val;
}
