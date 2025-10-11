// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_unpublished_article_blog_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateUnpublishedArticleBlogRequestImpl
    _$$CreateUnpublishedArticleBlogRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateUnpublishedArticleBlogRequestImpl(
          article: json['article'] == null
              ? null
              : Article.fromJson(json['article'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateUnpublishedArticleBlogRequestImplToJson(
    _$CreateUnpublishedArticleBlogRequestImpl instance) {
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
      published: json['published'] as bool?,
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
  writeNotNull('published', instance.published);
  return val;
}
