// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_blog_title_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateBlogTitleResponseImpl _$$UpdateBlogTitleResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateBlogTitleResponseImpl(
      blog: json['blog'] == null
          ? null
          : Blog.fromJson(json['blog'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateBlogTitleResponseImplToJson(
    _$UpdateBlogTitleResponseImpl instance) {
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
      title: json['title'] as String?,
      handle: json['handle'] as String?,
      id: (json['id'] as num?)?.toInt(),
      updatedAt: json['updated_at'] as String?,
      commentable: json['commentable'] as String?,
      feedburner: json['feedburner'],
      feedburnerLocation: json['feedburner_location'],
      createdAt: json['created_at'] as String?,
      templateSuffix: json['template_suffix'],
      tags: json['tags'] as String?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
    );

Map<String, dynamic> _$$BlogImplToJson(_$BlogImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('handle', instance.handle);
  writeNotNull('id', instance.id);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('commentable', instance.commentable);
  writeNotNull('feedburner', instance.feedburner);
  writeNotNull('feedburner_location', instance.feedburnerLocation);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('template_suffix', instance.templateSuffix);
  writeNotNull('tags', instance.tags);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  return val;
}
