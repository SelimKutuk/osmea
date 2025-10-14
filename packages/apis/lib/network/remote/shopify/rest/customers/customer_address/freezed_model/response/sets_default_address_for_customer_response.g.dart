// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sets_default_address_for_customer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetsDefaultAddressForCustomerResponseImpl
    _$$SetsDefaultAddressForCustomerResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$SetsDefaultAddressForCustomerResponseImpl(
          customerAddress: json['customer_address'] == null
              ? null
              : CustomerAddress.fromJson(
                  json['customer_address'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SetsDefaultAddressForCustomerResponseImplToJson(
    _$SetsDefaultAddressForCustomerResponseImpl instance) {
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
      id: (json['id'] as num?)?.toInt(),
      customerId: (json['customer_id'] as num?)?.toInt(),
      company: json['company'],
      province: json['province'] as String?,
      country: json['country'] as String?,
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

  writeNotNull('id', instance.id);
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('company', instance.company);
  writeNotNull('province', instance.province);
  writeNotNull('country', instance.country);
  writeNotNull('province_code', instance.provinceCode);
  writeNotNull('country_code', instance.countryCode);
  writeNotNull('country_name', instance.countryName);
  writeNotNull('default', instance.customerAddressDefault);
  return val;
}
