// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_postal_code_of_customer_address_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdatePostalCodeOfCustomerAddressResponseImpl
    _$$UpdatePostalCodeOfCustomerAddressResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$UpdatePostalCodeOfCustomerAddressResponseImpl(
          customerAddress: json['customer_address'] == null
              ? null
              : CustomerAddress.fromJson(
                  json['customer_address'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$UpdatePostalCodeOfCustomerAddressResponseImplToJson(
    _$UpdatePostalCodeOfCustomerAddressResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_address', instance.customerAddress?.toJson());
  return val;
}

_$CustomerAddressImpl _$$CustomerAddressImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerAddressImpl(
      customerId: (json['customer_id'] as num?)?.toInt(),
      country: json['country'] as String?,
      province: json['province'] as String?,
      company: json['company'],
      id: (json['id'] as num?)?.toInt(),
      provinceCode: json['province_code'] as String?,
      countryCode: json['country_code'] as String?,
      countryName: json['country_name'] as String?,
      customerAddressDefault: json['default'] as bool?,
    );

Map<String, dynamic> _$$CustomerAddressImplToJson(
    _$CustomerAddressImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_id', instance.customerId);
  writeNotNull('country', instance.country);
  writeNotNull('province', instance.province);
  writeNotNull('company', instance.company);
  writeNotNull('id', instance.id);
  writeNotNull('province_code', instance.provinceCode);
  writeNotNull('country_code', instance.countryCode);
  writeNotNull('country_name', instance.countryName);
  writeNotNull('default', instance.customerAddressDefault);
  return val;
}
