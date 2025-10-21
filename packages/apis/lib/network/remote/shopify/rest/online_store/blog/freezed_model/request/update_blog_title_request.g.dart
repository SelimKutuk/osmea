// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_blog_title_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateBlogTitleRequestImpl _$$UpdateBlogTitleRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateBlogTitleRequestImpl(
      blog: json['blog'] == null
          ? null
          : Blog.fromJson(json['blog'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateBlogTitleRequestImplToJson(
    _$UpdateBlogTitleRequestImpl instance) {
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
  return val;
}
