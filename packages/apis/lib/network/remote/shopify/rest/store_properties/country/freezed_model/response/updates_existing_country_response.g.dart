// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updates_existing_country_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdatesExistingCountryResponseImpl
    _$$UpdatesExistingCountryResponseImplFromJson(Map<String, dynamic> json) =>
        _$UpdatesExistingCountryResponseImpl(
          country: json['country'] == null
              ? null
              : Country.fromJson(json['country'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$UpdatesExistingCountryResponseImplToJson(
    _$UpdatesExistingCountryResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('country', instance.country?.toJson());
  return val;
}

_$CountryImpl _$$CountryImplFromJson(Map<String, dynamic> json) =>
    _$CountryImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      tax: (json['tax'] as num?)?.toDouble(),
      code: json['code'] as String?,
      taxName: json['tax_name'] as String?,
      provinces: (json['provinces'] as List<dynamic>?)
          ?.map((e) => Province.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CountryImplToJson(_$CountryImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('tax', instance.tax);
  writeNotNull('code', instance.code);
  writeNotNull('tax_name', instance.taxName);
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
      tax: (json['tax'] as num?)?.toDouble(),
      taxName: json['tax_name'] as String?,
      taxType: json['tax_type'] as String?,
      shippingZoneId: json['shipping_zone_id'],
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
  writeNotNull('tax', instance.tax);
  writeNotNull('tax_name', instance.taxName);
  writeNotNull('tax_type', instance.taxType);
  writeNotNull('shipping_zone_id', instance.shippingZoneId);
  writeNotNull('tax_percentage', instance.taxPercentage);
  return val;
}
