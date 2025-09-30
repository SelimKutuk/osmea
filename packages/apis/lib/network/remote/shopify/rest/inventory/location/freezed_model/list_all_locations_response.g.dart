// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_all_locations_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListAllLocationsResponseImpl _$$ListAllLocationsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ListAllLocationsResponseImpl(
      locations: (json['locations'] as List<dynamic>?)
          ?.map((e) => Location.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ListAllLocationsResponseImplToJson(
    _$ListAllLocationsResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'locations', instance.locations?.map((e) => e.toJson()).toList());
  return val;
}

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      city: json['city'] as String?,
      zip: json['zip'] as String?,
      province: json['province'],
      country: json['country'] as String?,
      phone: json['phone'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      countryCode: json['country_code'] as String?,
      countryName: json['country_name'] as String?,
      provinceCode: json['province_code'],
      legacy: json['legacy'] as bool?,
      active: json['active'] as bool?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
      localizedCountryName: json['localized_country_name'] as String?,
      localizedProvinceName: json['localized_province_name'],
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('address1', instance.address1);
  writeNotNull('address2', instance.address2);
  writeNotNull('city', instance.city);
  writeNotNull('zip', instance.zip);
  writeNotNull('province', instance.province);
  writeNotNull('country', instance.country);
  writeNotNull('phone', instance.phone);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('country_code', instance.countryCode);
  writeNotNull('country_name', instance.countryName);
  writeNotNull('province_code', instance.provinceCode);
  writeNotNull('legacy', instance.legacy);
  writeNotNull('active', instance.active);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull('localized_country_name', instance.localizedCountryName);
  writeNotNull('localized_province_name', instance.localizedProvinceName);
  return val;
}
