// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_script_tag_url_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateScriptTagUrlResponseImpl _$$UpdateScriptTagUrlResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateScriptTagUrlResponseImpl(
      scriptTag: json['script_tag'] == null
          ? null
          : ScriptTag.fromJson(json['script_tag'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateScriptTagUrlResponseImplToJson(
    _$UpdateScriptTagUrlResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('script_tag', instance.scriptTag?.toJson());
  return val;
}

_$ScriptTagImpl _$$ScriptTagImplFromJson(Map<String, dynamic> json) =>
    _$ScriptTagImpl(
      src: json['src'] as String?,
      displayScope: json['display_scope'] as String?,
      id: (json['id'] as num?)?.toInt(),
      event: json['event'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      cache: json['cache'] as bool?,
    );

Map<String, dynamic> _$$ScriptTagImplToJson(_$ScriptTagImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('src', instance.src);
  writeNotNull('display_scope', instance.displayScope);
  writeNotNull('id', instance.id);
  writeNotNull('event', instance.event);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('cache', instance.cache);
  return val;
}
