// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_location_by_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SingleLocationByIdResponseImpl _$$SingleLocationByIdResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SingleLocationByIdResponseImpl(
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SingleLocationByIdResponseImplToJson(
    _$SingleLocationByIdResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('location', instance.location?.toJson());
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
  return val;
}
