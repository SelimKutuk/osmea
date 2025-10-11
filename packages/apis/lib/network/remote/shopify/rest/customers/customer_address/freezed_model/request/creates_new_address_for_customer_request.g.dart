// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creates_new_address_for_customer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatesNewAddressForCustomerRequestImpl
    _$$CreatesNewAddressForCustomerRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$CreatesNewAddressForCustomerRequestImpl(
          address: json['address'] == null
              ? null
              : Address.fromJson(json['address'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreatesNewAddressForCustomerRequestImplToJson(
    _$CreatesNewAddressForCustomerRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address?.toJson());
  return val;
}

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      city: json['city'] as String?,
      company: json['company'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      phone: json['phone'] as String?,
      province: json['province'] as String?,
      country: json['country'] as String?,
      zip: json['zip'] as String?,
      name: json['name'] as String?,
      provinceCode: json['province_code'] as String?,
      countryCode: json['country_code'] as String?,
      countryName: json['country_name'] as String?,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address1', instance.address1);
  writeNotNull('address2', instance.address2);
  writeNotNull('city', instance.city);
  writeNotNull('company', instance.company);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('phone', instance.phone);
  writeNotNull('province', instance.province);
  writeNotNull('country', instance.country);
  writeNotNull('zip', instance.zip);
  writeNotNull('name', instance.name);
  writeNotNull('province_code', instance.provinceCode);
  writeNotNull('country_code', instance.countryCode);
  writeNotNull('country_name', instance.countryName);
  return val;
}
