// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_comment_textile_markup_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateCommentTextileMarkupResponseImpl
    _$$CreateCommentTextileMarkupResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateCommentTextileMarkupResponseImpl(
          comment: json['comment'] == null
              ? null
              : Comment.fromJson(json['comment'] as Map<String, dynamic>),
          errors: json['errors'] == null
              ? null
              : Errors.fromJson(json['errors'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateCommentTextileMarkupResponseImplToJson(
    _$CreateCommentTextileMarkupResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('comment', instance.comment?.toJson());
  writeNotNull('errors', instance.errors?.toJson());
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
      publishedAt: json['published_at'],
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

_$ErrorsImpl _$$ErrorsImplFromJson(Map<String, dynamic> json) => _$ErrorsImpl(
      author:
          (json['author'] as List<dynamic>?)?.map((e) => e as String).toList(),
      body: (json['body'] as List<dynamic>?)?.map((e) => e as String).toList(),
      email:
          (json['email'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ErrorsImplToJson(_$ErrorsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('author', instance.author);
  writeNotNull('body', instance.body);
  writeNotNull('email', instance.email);
  return val;
}
