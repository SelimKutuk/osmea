// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_collection_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SingleCollectionResponseImpl _$$SingleCollectionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SingleCollectionResponseImpl(
      collection: json['collection'] == null
          ? null
          : Collection.fromJson(json['collection'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SingleCollectionResponseImplToJson(
    _$SingleCollectionResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('collection', instance.collection?.toJson());
  return val;
}

_$CollectionImpl _$$CollectionImplFromJson(Map<String, dynamic> json) =>
    _$CollectionImpl(
      id: (json['id'] as num?)?.toInt(),
      handle: json['handle'] as String?,
      title: json['title'] as String?,
      updatedAt: json['updated_at'] as String?,
      bodyHtml: json['body_html'],
      publishedAt: json['published_at'] as String?,
      sortOrder: json['sort_order'] as String?,
      templateSuffix: json['template_suffix'],
      productsCount: (json['products_count'] as num?)?.toInt(),
      collectionType: json['collection_type'] as String?,
      publishedScope: json['published_scope'] as String?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
    );

Map<String, dynamic> _$$CollectionImplToJson(_$CollectionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('handle', instance.handle);
  writeNotNull('title', instance.title);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('body_html', instance.bodyHtml);
  writeNotNull('published_at', instance.publishedAt);
  writeNotNull('sort_order', instance.sortOrder);
  writeNotNull('template_suffix', instance.templateSuffix);
  writeNotNull('products_count', instance.productsCount);
  writeNotNull('collection_type', instance.collectionType);
  writeNotNull('published_scope', instance.publishedScope);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  return val;
}
