// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_theme_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateThemeRequestImpl _$$CreateThemeRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateThemeRequestImpl(
      theme: json['theme'] == null
          ? null
          : Theme.fromJson(json['theme'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateThemeRequestImplToJson(
    _$CreateThemeRequestImpl instance) {
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
      name: json['name'] as String?,
      src: json['src'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$ThemeImplToJson(_$ThemeImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('src', instance.src);
  writeNotNull('role', instance.role);
  return val;
}
