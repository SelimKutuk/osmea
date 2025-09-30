// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_product_image_add_metafield_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModifyProductImageAddMetafieldRequestImpl
    _$$ModifyProductImageAddMetafieldRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$ModifyProductImageAddMetafieldRequestImpl(
          image: json['image'] == null
              ? null
              : Image.fromJson(json['image'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ModifyProductImageAddMetafieldRequestImplToJson(
    _$ModifyProductImageAddMetafieldRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('image', instance.image?.toJson());
  return val;
}

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      id: (json['id'] as num?)?.toInt(),
      metafields: (json['metafields'] as List<dynamic>?)
          ?.map((e) => Metafield.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'metafields', instance.metafields?.map((e) => e.toJson()).toList());
  return val;
}

_$MetafieldImpl _$$MetafieldImplFromJson(Map<String, dynamic> json) =>
    _$MetafieldImpl(
      key: json['key'] as String?,
      value: json['value'] as String?,
      valueType: json['value_type'] as String?,
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
  writeNotNull('value_type', instance.valueType);
  writeNotNull('namespace', instance.namespace);
  return val;
}
