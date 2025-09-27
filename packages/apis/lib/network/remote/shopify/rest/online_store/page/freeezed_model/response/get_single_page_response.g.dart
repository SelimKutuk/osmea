// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_single_page_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetSinglePageResponseImpl _$$GetSinglePageResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetSinglePageResponseImpl(
      page: json['page'] == null
          ? null
          : Page.fromJson(json['page'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetSinglePageResponseImplToJson(
    _$GetSinglePageResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('page', instance.page?.toJson());
  return val;
}

_$PageImpl _$$PageImplFromJson(Map<String, dynamic> json) => _$PageImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      shopId: (json['shop_id'] as num?)?.toInt(),
      handle: json['handle'] as String?,
      bodyHtml: json['body_html'],
      author: json['author'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      publishedAt: json['published_at'] as String?,
      templateSuffix: json['template_suffix'] as String?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
    );

Map<String, dynamic> _$$PageImplToJson(_$PageImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('shop_id', instance.shopId);
  writeNotNull('handle', instance.handle);
  writeNotNull('body_html', instance.bodyHtml);
  writeNotNull('author', instance.author);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('published_at', instance.publishedAt);
  writeNotNull('template_suffix', instance.templateSuffix);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  return val;
}
