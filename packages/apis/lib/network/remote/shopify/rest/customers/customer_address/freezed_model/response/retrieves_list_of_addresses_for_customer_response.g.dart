// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieves_list_of_addresses_for_customer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrievesListOfAddressesForCustomerResponseImpl
    _$$RetrievesListOfAddressesForCustomerResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$RetrievesListOfAddressesForCustomerResponseImpl(
          addresses: (json['addresses'] as List<dynamic>?)
              ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$RetrievesListOfAddressesForCustomerResponseImplToJson(
    _$RetrievesListOfAddressesForCustomerResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'addresses', instance.addresses?.map((e) => e.toJson()).toList());
  return val;
}

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      id: (json['id'] as num?)?.toInt(),
      customerId: (json['customer_id'] as num?)?.toInt(),
      company: json['company'] as String?,
      province: json['province'] as String?,
      country: json['country'] as String?,
      provinceCode: json['province_code'] as String?,
      countryCode: json['country_code'] as String?,
      countryName: json['country_name'] as String?,
      addressDefault: json['default'] as bool?,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) {
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
  writeNotNull('default', instance.addressDefault);
  return val;
}
