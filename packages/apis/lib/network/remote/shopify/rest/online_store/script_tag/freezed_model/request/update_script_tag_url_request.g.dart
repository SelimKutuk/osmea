// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_script_tag_url_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateScriptTagUrlRequestImpl _$$UpdateScriptTagUrlRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateScriptTagUrlRequestImpl(
      scriptTag: json['script_tag'] == null
          ? null
          : ScriptTag.fromJson(json['script_tag'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateScriptTagUrlRequestImplToJson(
    _$UpdateScriptTagUrlRequestImpl instance) {
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
      id: (json['id'] as num?)?.toInt(),
      src: json['src'] as String?,
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
  return val;
}
