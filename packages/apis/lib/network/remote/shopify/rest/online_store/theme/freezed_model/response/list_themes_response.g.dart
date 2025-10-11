// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_themes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListThemesResponseImpl _$$ListThemesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ListThemesResponseImpl(
      themes: (json['themes'] as List<dynamic>?)
          ?.map((e) => Theme.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ListThemesResponseImplToJson(
    _$ListThemesResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('themes', instance.themes?.map((e) => e.toJson()).toList());
  return val;
}

_$ThemeImpl _$$ThemeImplFromJson(Map<String, dynamic> json) => _$ThemeImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      role: json['role'] as String?,
      themeStoreId: (json['theme_store_id'] as num?)?.toInt(),
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
