// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_empty_blog_with_metafield_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateEmptyBlogWithMetafieldRequestImpl
    _$$CreateEmptyBlogWithMetafieldRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateEmptyBlogWithMetafieldRequestImpl(
          blog: json['blog'] == null
              ? null
              : Blog.fromJson(json['blog'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateEmptyBlogWithMetafieldRequestImplToJson(
    _$CreateEmptyBlogWithMetafieldRequestImpl instance) {
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
      metafields: (json['metafields'] as List<dynamic>?)
          ?.map((e) => Metafield.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BlogImplToJson(_$BlogImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull(
      'metafields', instance.metafields?.map((e) => e.toJson()).toList());
  return val;
}

_$MetafieldImpl _$$MetafieldImplFromJson(Map<String, dynamic> json) =>
    _$MetafieldImpl(
      key: json['key'] as String?,
      value: json['value'] as String?,
      type: json['type'] as String?,
      namespace: json['namespace'] as String?,
    );

Map<String, dynamic> _$$MetafieldImplToJson(_$MetafieldImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull('value', instance.value);
  writeNotNull('type', instance.type);
  writeNotNull('namespace', instance.namespace);
  return val;
}
