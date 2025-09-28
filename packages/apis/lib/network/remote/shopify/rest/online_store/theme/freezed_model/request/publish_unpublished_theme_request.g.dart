// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publish_unpublished_theme_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PublishUnpublishedThemeRequestImpl
    _$$PublishUnpublishedThemeRequestImplFromJson(Map<String, dynamic> json) =>
        _$PublishUnpublishedThemeRequestImpl(
          theme: json['theme'] == null
              ? null
              : Theme.fromJson(json['theme'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$PublishUnpublishedThemeRequestImplToJson(
    _$PublishUnpublishedThemeRequestImpl instance) {
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
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$ThemeImplToJson(_$ThemeImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('role', instance.role);
  return val;
}
