// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_comment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemoveCommentResponseImpl _$$RemoveCommentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RemoveCommentResponseImpl(
      publishedAt: json['published_at'],
      status: json['status'] as String?,
      id: (json['id'] as num?)?.toInt(),
      body: json['body'] as String?,
      bodyHtml: json['body_html'] as String?,
      articleId: (json['article_id'] as num?)?.toInt(),
      blogId: (json['blog_id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      userAgent: json['user_agent'],
    );

Map<String, dynamic> _$$RemoveCommentResponseImplToJson(
    _$RemoveCommentResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('published_at', instance.publishedAt);
  writeNotNull('status', instance.status);
  writeNotNull('id', instance.id);
  writeNotNull('body', instance.body);
  writeNotNull('body_html', instance.bodyHtml);
  writeNotNull('article_id', instance.articleId);
  writeNotNull('blog_id', instance.blogId);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('user_agent', instance.userAgent);
  return val;
}
