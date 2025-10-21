// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updates_existing_province_for_country_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdatesExistingProvinceForCountryResponseImpl
    _$$UpdatesExistingProvinceForCountryResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$UpdatesExistingProvinceForCountryResponseImpl(
          province: json['province'] == null
              ? null
              : Province.fromJson(json['province'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$UpdatesExistingProvinceForCountryResponseImplToJson(
    _$UpdatesExistingProvinceForCountryResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('province', instance.province?.toJson());
  return val;
}

_$ProvinceImpl _$$ProvinceImplFromJson(Map<String, dynamic> json) =>
    _$ProvinceImpl(
      countryId: (json['country_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      taxName: json['tax_name'] as String?,
      taxType: json['tax_type'],
      shippingZoneId: json['shipping_zone_id'],
      tax: (json['tax'] as num?)?.toInt(),
      taxPercentage: (json['tax_percentage'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProvinceImplToJson(_$ProvinceImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('country_id', instance.countryId);
  writeNotNull('name', instance.name);
  writeNotNull('id', instance.id);
  writeNotNull('code', instance.code);
  writeNotNull('tax_name', instance.taxName);
  writeNotNull('tax_type', instance.taxType);
  writeNotNull('shipping_zone_id', instance.shippingZoneId);
  writeNotNull('tax', instance.tax);
  writeNotNull('tax_percentage', instance.taxPercentage);
  return val;
}
