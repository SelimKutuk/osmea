// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_remove_image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateRemoveImageResponseImpl _$$UpdateRemoveImageResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateRemoveImageResponseImpl(
      customCollection: json['custom_collection'] == null
          ? null
          : CustomCollection.fromJson(
              json['custom_collection'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateRemoveImageResponseImplToJson(
    _$UpdateRemoveImageResponseImpl instance) {
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
      bodyHtml: json['body_html'] as String?,
      handle: json['handle'] as String?,
      sortOrder: json['sort_order'] as String?,
      title: json['title'] as String?,
      templateSuffix: json['template_suffix'],
      id: (json['id'] as num?)?.toInt(),
      updatedAt: json['updated_at'] as String?,
      publishedAt: json['published_at'] as String?,
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

  writeNotNull('body_html', instance.bodyHtml);
  writeNotNull('handle', instance.handle);
  writeNotNull('sort_order', instance.sortOrder);
  writeNotNull('title', instance.title);
  writeNotNull('template_suffix', instance.templateSuffix);
  writeNotNull('id', instance.id);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('published_at', instance.publishedAt);
  writeNotNull('published_scope', instance.publishedScope);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  return val;
}
