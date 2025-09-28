// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_existing_blog_title_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateExistingBlogTitleRequestImpl
    _$$UpdateExistingBlogTitleRequestImplFromJson(Map<String, dynamic> json) =>
        _$UpdateExistingBlogTitleRequestImpl(
          blog: json['blog'] == null
              ? null
              : Blog.fromJson(json['blog'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$UpdateExistingBlogTitleRequestImplToJson(
    _$UpdateExistingBlogTitleRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('blog', instance.blog?.toJson());
  return val;
}

_$BlogImpl _$$BlogImplFromJson(Map<String, dynamic> json) => _$BlogImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      handle: json['handle'] as String?,
      commentable: json['commentable'] as String?,
    );

Map<String, dynamic> _$$BlogImplToJson(_$BlogImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('handle', instance.handle);
  writeNotNull('commentable', instance.commentable);
  return val;
}
