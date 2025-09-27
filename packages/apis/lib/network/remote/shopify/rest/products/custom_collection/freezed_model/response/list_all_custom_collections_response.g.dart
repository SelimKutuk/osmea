// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_all_custom_collections_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListAllCustomCollectionsResponseImpl
    _$$ListAllCustomCollectionsResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$ListAllCustomCollectionsResponseImpl(
          customCollections: (json['custom_collections'] as List<dynamic>?)
              ?.map((e) => CustomCollection.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$ListAllCustomCollectionsResponseImplToJson(
    _$ListAllCustomCollectionsResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('custom_collections',
      instance.customCollections?.map((e) => e.toJson()).toList());
  return val;
}

_$CustomCollectionImpl _$$CustomCollectionImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomCollectionImpl(
      id: (json['id'] as num?)?.toInt(),
      handle: json['handle'] as String?,
      title: json['title'] as String?,
      updatedAt: json['updated_at'] as String?,
      bodyHtml: json['body_html'],
      publishedAt: json['published_at'] as String?,
      sortOrder: json['sort_order'] as String?,
      templateSuffix: json['template_suffix'],
      publishedScope: json['published_scope'] as String?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
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
  writeNotNull('handle', instance.handle);
  writeNotNull('title', instance.title);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('body_html', instance.bodyHtml);
  writeNotNull('published_at', instance.publishedAt);
  writeNotNull('sort_order', instance.sortOrder);
  writeNotNull('template_suffix', instance.templateSuffix);
  writeNotNull('published_scope', instance.publishedScope);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  return val;
}
