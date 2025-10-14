// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_unpublished_custom_collection_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateUnpublishedCustomCollectionResponseImpl
    _$$CreateUnpublishedCustomCollectionResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateUnpublishedCustomCollectionResponseImpl(
          customCollection: json['custom_collection'] == null
              ? null
              : CustomCollection.fromJson(
                  json['custom_collection'] as Map<String, dynamic>),
          errors: json['errors'] == null
              ? null
              : Errors.fromJson(json['errors'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateUnpublishedCustomCollectionResponseImplToJson(
    _$CreateUnpublishedCustomCollectionResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('custom_collection', instance.customCollection?.toJson());
  writeNotNull('errors', instance.errors?.toJson());
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
      publishedAt: json['published_at'],
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

_$ErrorsImpl _$$ErrorsImplFromJson(Map<String, dynamic> json) => _$ErrorsImpl(
      title:
          (json['title'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ErrorsImplToJson(_$ErrorsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  return val;
}
