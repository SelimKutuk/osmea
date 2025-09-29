// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publish_unpublished_theme_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PublishUnpublishedThemeResponseImpl
    _$$PublishUnpublishedThemeResponseImplFromJson(Map<String, dynamic> json) =>
        _$PublishUnpublishedThemeResponseImpl(
          theme: json['theme'] == null
              ? null
              : Theme.fromJson(json['theme'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$PublishUnpublishedThemeResponseImplToJson(
    _$PublishUnpublishedThemeResponseImpl instance) {
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
      role: json['role'] as String?,
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
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

  writeNotNull('role', instance.role);
  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('theme_store_id', instance.themeStoreId);
  writeNotNull('previewable', instance.previewable);
  writeNotNull('processing', instance.processing);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  return val;
}
