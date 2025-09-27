// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_image_asset_base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateImageAssetBaseResponseImpl _$$CreateImageAssetBaseResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateImageAssetBaseResponseImpl(
      asset: json['asset'] == null
          ? null
          : Asset.fromJson(json['asset'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateImageAssetBaseResponseImplToJson(
    _$CreateImageAssetBaseResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('asset', instance.asset?.toJson());
  return val;
}

_$AssetImpl _$$AssetImplFromJson(Map<String, dynamic> json) => _$AssetImpl(
      key: json['key'] as String?,
      publicUrl: json['public_url'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      contentType: json['content_type'] as String?,
      size: (json['size'] as num?)?.toInt(),
      checksum: json['checksum'] as String?,
      themeId: (json['theme_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AssetImplToJson(_$AssetImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull('public_url', instance.publicUrl);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('content_type', instance.contentType);
  writeNotNull('size', instance.size);
  writeNotNull('checksum', instance.checksum);
  writeNotNull('theme_id', instance.themeId);
  return val;
}
