// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_article_tags_specific_blog_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListArticleTagsSpecificBlogResponseImpl
    _$$ListArticleTagsSpecificBlogResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$ListArticleTagsSpecificBlogResponseImpl(
          tags: (json['tags'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$$ListArticleTagsSpecificBlogResponseImplToJson(
    _$ListArticleTagsSpecificBlogResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tags', instance.tags);
  return val;
}
