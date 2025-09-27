// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_blogs_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllBlogsResponseImpl _$$GetAllBlogsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAllBlogsResponseImpl(
      blogs: (json['blogs'] as List<dynamic>?)
          ?.map((e) => Blog.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetAllBlogsResponseImplToJson(
    _$GetAllBlogsResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('blogs', instance.blogs?.map((e) => e.toJson()).toList());
  return val;
}

_$BlogImpl _$$BlogImplFromJson(Map<String, dynamic> json) => _$BlogImpl(
      id: (json['id'] as num?)?.toInt(),
      handle: json['handle'] as String?,
      title: json['title'] as String?,
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

  writeNotNull('id', instance.id);
  writeNotNull('handle', instance.handle);
  writeNotNull('title', instance.title);
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
