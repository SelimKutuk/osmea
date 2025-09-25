// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_comment_body_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateCommentBodyRequestImpl _$$UpdateCommentBodyRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateCommentBodyRequestImpl(
      comment: json['comment'] == null
          ? null
          : Comment.fromJson(json['comment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateCommentBodyRequestImplToJson(
    _$UpdateCommentBodyRequestImpl instance) {
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
      id: (json['id'] as num?)?.toInt(),
      body: json['body'] as String?,
      author: json['author'] as String?,
      email: json['email'] as String?,
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
  writeNotNull('author', instance.author);
  writeNotNull('email', instance.email);
  writeNotNull('published_at', instance.publishedAt);
  return val;
}
