// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_collection_with_collect_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateCollectionWithCollectRequestImpl
    _$$CreateCollectionWithCollectRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateCollectionWithCollectRequestImpl(
          customCollection: json['custom_collection'] == null
              ? null
              : CustomCollection.fromJson(
                  json['custom_collection'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateCollectionWithCollectRequestImplToJson(
    _$CreateCollectionWithCollectRequestImpl instance) {
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
      title: json['title'] as String?,
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

  writeNotNull('title', instance.title);
  writeNotNull('collects', instance.collects?.map((e) => e.toJson()).toList());
  return val;
}

_$CollectImpl _$$CollectImplFromJson(Map<String, dynamic> json) =>
    _$CollectImpl(
      productId: (json['product_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CollectImplToJson(_$CollectImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product_id', instance.productId);
  return val;
}
