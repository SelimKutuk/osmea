// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_theme_name_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateThemeNameRequestImpl _$$UpdateThemeNameRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateThemeNameRequestImpl(
      theme: json['theme'] == null
          ? null
          : Theme.fromJson(json['theme'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateThemeNameRequestImplToJson(
    _$UpdateThemeNameRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('theme', instance.theme?.toJson());
  return val;
}

_$ThemeImpl _$$ThemeImplFromJson(Map<String, dynamic> json) => _$ThemeImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$ThemeImplToJson(_$ThemeImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  return val;
}
