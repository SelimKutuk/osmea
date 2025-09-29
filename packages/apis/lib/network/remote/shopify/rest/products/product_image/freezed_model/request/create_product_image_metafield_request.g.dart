// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product_image_metafield_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateProductImageMetafieldRequestImpl
    _$$CreateProductImageMetafieldRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateProductImageMetafieldRequestImpl(
          metafield:
              Metafield.fromJson(json['metafield'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateProductImageMetafieldRequestImplToJson(
        _$CreateProductImageMetafieldRequestImpl instance) =>
    <String, dynamic>{
      'metafield': instance.metafield.toJson(),
    };

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      position: (json['position'] as num?)?.toInt(),
      metafields: (json['metafields'] as List<dynamic>?)
          ?.map((e) => Metafield.fromJson(e as Map<String, dynamic>))
          .toList(),
      attachment: json['attachment'] as String?,
      filename: json['filename'] as String?,
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('position', instance.position);
  writeNotNull(
      'metafields', instance.metafields?.map((e) => e.toJson()).toList());
  writeNotNull('attachment', instance.attachment);
  writeNotNull('filename', instance.filename);
  return val;
}

_$MetafieldImpl _$$MetafieldImplFromJson(Map<String, dynamic> json) =>
    _$MetafieldImpl(
      key: json['key'] as String?,
      value: json['value'] as String?,
      type: json['type'] as String?,
      namespace: json['namespace'] as String?,
    );

Map<String, dynamic> _$$MetafieldImplToJson(_$MetafieldImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull('value', instance.value);
  writeNotNull('type', instance.type);
  writeNotNull('namespace', instance.namespace);
  return val;
}
