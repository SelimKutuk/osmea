// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_metafield_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateMetafieldRequestImpl _$$UpdateMetafieldRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateMetafieldRequestImpl(
      metafield: json['metafield'] == null
          ? null
          : Metafield.fromJson(json['metafield'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateMetafieldRequestImplToJson(
    _$UpdateMetafieldRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metafield', instance.metafield?.toJson());
  return val;
}

_$MetafieldImpl _$$MetafieldImplFromJson(Map<String, dynamic> json) =>
    _$MetafieldImpl(
      id: (json['id'] as num?)?.toInt(),
      value: json['value'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$MetafieldImplToJson(_$MetafieldImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('value', instance.value);
  writeNotNull('type', instance.type);
  return val;
}
