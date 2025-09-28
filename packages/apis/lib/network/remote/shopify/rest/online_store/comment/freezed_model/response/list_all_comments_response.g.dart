// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_all_comments_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListAllCommentsResponseImpl _$$ListAllCommentsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ListAllCommentsResponseImpl(
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ListAllCommentsResponseImplToJson(
    _$ListAllCommentsResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('comments', instance.comments?.map((e) => e.toJson()).toList());
  return val;
}

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      id: (json['id'] as num?)?.toInt(),
      body: json['body'] as String?,
      bodyHtml: json['body_html'] as String?,
      status: json['status'] as String?,
      articleId: (json['article_id'] as num?)?.toInt(),
      blogId: (json['blog_id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      userAgent: json['user_agent'],
      publishedAt: json['published_at'] as String?,
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('body', instance.body);
  writeNotNull('body_html', instance.bodyHtml);
  writeNotNull('status', instance.status);
  writeNotNull('article_id', instance.articleId);
  writeNotNull('blog_id', instance.blogId);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('user_agent', instance.userAgent);
  writeNotNull('published_at', instance.publishedAt);
  return val;
}
