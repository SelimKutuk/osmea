// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_tags_specific_blog_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListTagsSpecificBlogResponseImpl _$$ListTagsSpecificBlogResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ListTagsSpecificBlogResponseImpl(
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ListTagsSpecificBlogResponseImplToJson(
    _$ListTagsSpecificBlogResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tags', instance.tags);
  return val;
}
