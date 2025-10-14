// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_article_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateArticleResponseImpl _$$UpdateArticleResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateArticleResponseImpl(
      article: json['article'] == null
          ? null
          : Article.fromJson(json['article'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateArticleResponseImplToJson(
    _$UpdateArticleResponseImpl instance) {
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
      blogId: (json['blog_id'] as num?)?.toInt(),
      title: json['title'] as String?,
      handle: json['handle'] as String?,
      bodyHtml: json['body_html'] as String?,
      author: json['author'] as String?,
      id: (json['id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      userId: json['user_id'],
      publishedAt: json['published_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      summaryHtml: json['summary_html'],
      templateSuffix: json['template_suffix'],
      tags: json['tags'] as String?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
      image: json['image'] == null
          ? null
          : Image.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ArticleImplToJson(_$ArticleImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('blog_id', instance.blogId);
  writeNotNull('title', instance.title);
  writeNotNull('handle', instance.handle);
  writeNotNull('body_html', instance.bodyHtml);
  writeNotNull('author', instance.author);
  writeNotNull('id', instance.id);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('user_id', instance.userId);
  writeNotNull('published_at', instance.publishedAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('summary_html', instance.summaryHtml);
  writeNotNull('template_suffix', instance.templateSuffix);
  writeNotNull('tags', instance.tags);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull('image', instance.image?.toJson());
  return val;
}

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      createdAt: json['created_at'] as String?,
      alt: json['alt'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      src: json['src'] as String?,
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created_at', instance.createdAt);
  writeNotNull('alt', instance.alt);
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  writeNotNull('src', instance.src);
  return val;
}
