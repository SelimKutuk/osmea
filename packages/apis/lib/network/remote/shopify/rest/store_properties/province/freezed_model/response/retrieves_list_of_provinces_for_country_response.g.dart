// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieves_list_of_provinces_for_country_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrievesListOfProvincesForCountryResponseImpl
    _$$RetrievesListOfProvincesForCountryResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$RetrievesListOfProvincesForCountryResponseImpl(
          provinces: (json['provinces'] as List<dynamic>?)
              ?.map((e) => Province.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$RetrievesListOfProvincesForCountryResponseImplToJson(
    _$RetrievesListOfProvincesForCountryResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'provinces', instance.provinces?.map((e) => e.toJson()).toList());
  return val;
}

_$ProvinceImpl _$$ProvinceImplFromJson(Map<String, dynamic> json) =>
    _$ProvinceImpl(
      id: (json['id'] as num?)?.toInt(),
      countryId: (json['country_id'] as num?)?.toInt(),
      name: json['name'] as String?,
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

  writeNotNull('id', instance.id);
  writeNotNull('country_id', instance.countryId);
  writeNotNull('name', instance.name);
  writeNotNull('code', instance.code);
  writeNotNull('tax_name', instance.taxName);
  writeNotNull('tax_type', instance.taxType);
  writeNotNull('shipping_zone_id', instance.shippingZoneId);
  writeNotNull('tax', instance.tax);
  writeNotNull('tax_percentage', instance.taxPercentage);
  return val;
}
