// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_script_tag_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateScriptTagRequestImpl _$$CreateScriptTagRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateScriptTagRequestImpl(
      scriptTag: json['script_tag'] == null
          ? null
          : ScriptTag.fromJson(json['script_tag'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateScriptTagRequestImplToJson(
    _$CreateScriptTagRequestImpl instance) {
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
      event: json['event'] as String?,
      src: json['src'] as String?,
    );

Map<String, dynamic> _$$ScriptTagImplToJson(_$ScriptTagImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('event', instance.event);
  writeNotNull('src', instance.src);
  return val;
}
