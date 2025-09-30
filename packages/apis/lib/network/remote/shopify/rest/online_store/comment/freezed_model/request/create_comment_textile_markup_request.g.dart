// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_comment_textile_markup_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateCommentTextileMarkupRequestImpl
    _$$CreateCommentTextileMarkupRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateCommentTextileMarkupRequestImpl(
          comment: json['comment'] == null
              ? null
              : Comment.fromJson(json['comment'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateCommentTextileMarkupRequestImplToJson(
    _$CreateCommentTextileMarkupRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('comment', instance.comment?.toJson());
  return val;
}

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      body: json['body'] as String?,
      author: json['author'] as String?,
      email: json['email'] as String?,
      ip: json['ip'] as String?,
      blogId: (json['blog_id'] as num?)?.toInt(),
      articleId: (json['article_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('body', instance.body);
  writeNotNull('author', instance.author);
  writeNotNull('email', instance.email);
  writeNotNull('ip', instance.ip);
  writeNotNull('blog_id', instance.blogId);
  writeNotNull('article_id', instance.articleId);
  return val;
}
