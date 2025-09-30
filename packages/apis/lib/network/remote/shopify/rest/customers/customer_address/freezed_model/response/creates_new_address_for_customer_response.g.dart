// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creates_new_address_for_customer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatesNewAddressForCustomerResponseImpl
    _$$CreatesNewAddressForCustomerResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$CreatesNewAddressForCustomerResponseImpl(
          customerAddress: json['customer_address'] == null
              ? null
              : CustomerAddress.fromJson(
                  json['customer_address'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreatesNewAddressForCustomerResponseImplToJson(
    _$CreatesNewAddressForCustomerResponseImpl instance) {
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
      company: json['company'] as String?,
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
