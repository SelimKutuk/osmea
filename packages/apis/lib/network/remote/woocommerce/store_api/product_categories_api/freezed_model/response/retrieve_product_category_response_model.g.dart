// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_product_category_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrieveProductCategoryResponseModelImpl
    _$$RetrieveProductCategoryResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$RetrieveProductCategoryResponseModelImpl(
          id: (json['id'] as num?)?.toInt(),
          name: json['name'] as String?,
          slug: json['slug'] as String?,
          description: json['description'] as String?,
          parent: (json['parent'] as num?)?.toInt(),
          count: (json['count'] as num?)?.toInt(),
          image: json['image'],
          reviewCount: (json['review_count'] as num?)?.toInt(),
          permalink: json['permalink'] as String?,
        );

Map<String, dynamic> _$$RetrieveProductCategoryResponseModelImplToJson(
        _$RetrieveProductCategoryResponseModelImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.slug case final value?) 'slug': value,
      if (instance.description case final value?) 'description': value,
      if (instance.parent case final value?) 'parent': value,
      if (instance.count case final value?) 'count': value,
      if (instance.image case final value?) 'image': value,
      if (instance.reviewCount case final value?) 'review_count': value,
      if (instance.permalink case final value?) 'permalink': value,
    };
