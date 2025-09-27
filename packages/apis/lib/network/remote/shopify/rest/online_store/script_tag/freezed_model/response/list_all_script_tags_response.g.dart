// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_all_script_tags_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListAllScriptTagsResponseImpl _$$ListAllScriptTagsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ListAllScriptTagsResponseImpl(
      scriptTags: (json['script_tags'] as List<dynamic>?)
          ?.map((e) => ScriptTag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ListAllScriptTagsResponseImplToJson(
    _$ListAllScriptTagsResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'script_tags', instance.scriptTags?.map((e) => e.toJson()).toList());
  return val;
}

_$ScriptTagImpl _$$ScriptTagImplFromJson(Map<String, dynamic> json) =>
    _$ScriptTagImpl(
      id: (json['id'] as num?)?.toInt(),
      src: json['src'] as String?,
      event: json['event'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      displayScope: json['display_scope'] as String?,
      cache: json['cache'] as bool?,
    );

Map<String, dynamic> _$$ScriptTagImplToJson(_$ScriptTagImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('src', instance.src);
  writeNotNull('event', instance.event);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('display_scope', instance.displayScope);
  writeNotNull('cache', instance.cache);
  return val;
}
