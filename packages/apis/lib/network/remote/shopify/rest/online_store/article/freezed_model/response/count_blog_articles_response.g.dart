// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_blog_articles_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountBlogArticlesResponseImpl _$$CountBlogArticlesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CountBlogArticlesResponseImpl(
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CountBlogArticlesResponseImplToJson(
    _$CountBlogArticlesResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}
