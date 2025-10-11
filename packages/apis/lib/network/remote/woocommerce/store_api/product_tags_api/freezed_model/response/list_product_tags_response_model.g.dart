// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_product_tags_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListProductTagsResponseModelImpl _$$ListProductTagsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ListProductTagsResponseModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      parent: (json['parent'] as num?)?.toInt(),
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ListProductTagsResponseModelImplToJson(
        _$ListProductTagsResponseModelImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.slug case final value?) 'slug': value,
      if (instance.description case final value?) 'description': value,
      if (instance.parent case final value?) 'parent': value,
      if (instance.count case final value?) 'count': value,
    };
