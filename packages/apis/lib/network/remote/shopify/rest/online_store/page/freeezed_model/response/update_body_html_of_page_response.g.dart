// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_body_html_of_page_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateBodyHtmlOfPageResponseImpl _$$UpdateBodyHtmlOfPageResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateBodyHtmlOfPageResponseImpl(
      page: json['page'] == null
          ? null
          : Page.fromJson(json['page'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateBodyHtmlOfPageResponseImplToJson(
    _$UpdateBodyHtmlOfPageResponseImpl instance) {
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
      shopId: (json['shop_id'] as num?)?.toInt(),
      bodyHtml: json['body_html'] as String?,
      title: json['title'] as String?,
      handle: json['handle'] as String?,
      id: (json['id'] as num?)?.toInt(),
      author: json['author'] as String?,
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

  writeNotNull('shop_id', instance.shopId);
  writeNotNull('body_html', instance.bodyHtml);
  writeNotNull('title', instance.title);
  writeNotNull('handle', instance.handle);
  writeNotNull('id', instance.id);
  writeNotNull('author', instance.author);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('published_at', instance.publishedAt);
  writeNotNull('template_suffix', instance.templateSuffix);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  return val;
}
