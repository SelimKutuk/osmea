// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_product_brands_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListProductBrandsResponseModelImpl
    _$$ListProductBrandsResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$ListProductBrandsResponseModelImpl(
          id: (json['id'] as num?)?.toInt(),
          name: json['name'] as String?,
          slug: json['slug'] as String?,
          description: json['description'] as String?,
          parent: (json['parent'] as num?)?.toInt(),
          count: (json['count'] as num?)?.toInt(),
          image: json['image'] == null
              ? null
              : Image.fromJson(json['image'] as Map<String, dynamic>),
          reviewCount: (json['review_count'] as num?)?.toInt(),
          permalink: json['permalink'] as String?,
        );

Map<String, dynamic> _$$ListProductBrandsResponseModelImplToJson(
        _$ListProductBrandsResponseModelImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.slug case final value?) 'slug': value,
      if (instance.description case final value?) 'description': value,
      if (instance.parent case final value?) 'parent': value,
      if (instance.count case final value?) 'count': value,
      if (instance.image?.toJson() case final value?) 'image': value,
      if (instance.reviewCount case final value?) 'review_count': value,
      if (instance.permalink case final value?) 'permalink': value,
    };

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      id: (json['id'] as num?)?.toInt(),
      src: json['src'] as String?,
      thumbnail: json['thumbnail'] as String?,
      srcset: json['srcset'] as String?,
      sizes: json['sizes'] as String?,
      name: json['name'] as String?,
      alt: json['alt'] as String?,
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.src case final value?) 'src': value,
      if (instance.thumbnail case final value?) 'thumbnail': value,
      if (instance.srcset case final value?) 'srcset': value,
      if (instance.sizes case final value?) 'sizes': value,
      if (instance.name case final value?) 'name': value,
      if (instance.alt case final value?) 'alt': value,
    };
