// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_article_with_metafield_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateArticleWithMetafieldRequestImpl
    _$$CreateArticleWithMetafieldRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateArticleWithMetafieldRequestImpl(
          article: json['article'] == null
              ? null
              : Article.fromJson(json['article'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateArticleWithMetafieldRequestImplToJson(
    _$CreateArticleWithMetafieldRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('article', instance.article?.toJson());
  return val;
}

_$ArticleImpl _$$ArticleImplFromJson(Map<String, dynamic> json) =>
    _$ArticleImpl(
      title: json['title'] as String?,
      author: json['author'] as String?,
      tags: json['tags'] as String?,
      bodyHtml: json['body_html'] as String?,
      publishedAt: json['published_at'] as String?,
      metafields: (json['metafields'] as List<dynamic>?)
          ?.map((e) => Metafield.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ArticleImplToJson(_$ArticleImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('author', instance.author);
  writeNotNull('tags', instance.tags);
  writeNotNull('body_html', instance.bodyHtml);
  writeNotNull('published_at', instance.publishedAt);
  writeNotNull(
      'metafields', instance.metafields?.map((e) => e.toJson()).toList());
  return val;
}

_$MetafieldImpl _$$MetafieldImplFromJson(Map<String, dynamic> json) =>
    _$MetafieldImpl(
      key: json['key'] as String?,
      value: json['value'] as String?,
      type: json['type'] as String?,
      namespace: json['namespace'] as String?,
    );

Map<String, dynamic> _$$MetafieldImplToJson(_$MetafieldImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull('value', instance.value);
  writeNotNull('type', instance.type);
  writeNotNull('namespace', instance.namespace);
  return val;
}
