// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_theme_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateThemeResponseImpl _$$CreateThemeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateThemeResponseImpl(
      errors: json['errors'] == null
          ? null
          : Errors.fromJson(json['errors'] as Map<String, dynamic>),
      theme: json['theme'] == null
          ? null
          : Theme.fromJson(json['theme'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateThemeResponseImplToJson(
    _$CreateThemeResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.toJson());
  writeNotNull('theme', instance.theme?.toJson());
  return val;
}

_$ErrorsImpl _$$ErrorsImplFromJson(Map<String, dynamic> json) => _$ErrorsImpl(
      name: (json['name'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ErrorsImplToJson(_$ErrorsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  return val;
}

_$ThemeImpl _$$ThemeImplFromJson(Map<String, dynamic> json) => _$ThemeImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      role: json['role'] as String?,
      themeStoreId: json['theme_store_id'],
      previewable: json['previewable'] as bool?,
      processing: json['processing'] as bool?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
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
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('role', instance.role);
  writeNotNull('theme_store_id', instance.themeStoreId);
  writeNotNull('previewable', instance.previewable);
  writeNotNull('processing', instance.processing);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  return val;
}
