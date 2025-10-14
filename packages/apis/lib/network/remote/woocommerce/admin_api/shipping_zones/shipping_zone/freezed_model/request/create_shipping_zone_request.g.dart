// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_shipping_zone_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateShippingZoneRequestImpl _$$CreateShippingZoneRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateShippingZoneRequestImpl(
      name: json['name'] as String?,
      order: (json['order'] as num?)?.toInt(),
      locations: (json['locations'] as List<dynamic>?)
          ?.map((e) => Location.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CreateShippingZoneRequestImplToJson(
    _$CreateShippingZoneRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('order', instance.order);
  writeNotNull(
      'locations', instance.locations?.map((e) => e.toJson()).toList());
  return val;
}

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      code: json['code'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('type', instance.type);
  return val;
}
