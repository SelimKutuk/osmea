// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_articles_from_blog_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListArticlesFromBlogResponseImpl _$$ListArticlesFromBlogResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ListArticlesFromBlogResponseImpl(
      articles: (json['articles'] as List<dynamic>?)
          ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ListArticlesFromBlogResponseImplToJson(
    _$ListArticlesFromBlogResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('articles', instance.articles?.map((e) => e.toJson()).toList());
  return val;
}

_$ArticleImpl _$$ArticleImplFromJson(Map<String, dynamic> json) =>
    _$ArticleImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      createdAt: json['created_at'] as String?,
      bodyHtml: json['body_html'] as String?,
      blogId: (json['blog_id'] as num?)?.toInt(),
      author: json['author'] as String?,
      userId: json['user_id'],
      publishedAt: json['published_at'],
      updatedAt: json['updated_at'] as String?,
      summaryHtml: json['summary_html'],
      templateSuffix: json['template_suffix'],
      handle: json['handle'] as String?,
      tags: json['tags'] as String?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
    );

Map<String, dynamic> _$$ArticleImplToJson(_$ArticleImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('body_html', instance.bodyHtml);
  writeNotNull('blog_id', instance.blogId);
  writeNotNull('author', instance.author);
  writeNotNull('user_id', instance.userId);
  writeNotNull('published_at', instance.publishedAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('summary_html', instance.summaryHtml);
  writeNotNull('template_suffix', instance.templateSuffix);
  writeNotNull('handle', instance.handle);
  writeNotNull('tags', instance.tags);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  return val;
}
