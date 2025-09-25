// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_postal_code_of_customer_address_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdatePostalCodeOfCustomerAddressRequestImpl
    _$$UpdatePostalCodeOfCustomerAddressRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$UpdatePostalCodeOfCustomerAddressRequestImpl(
          address: json['address'] == null
              ? null
              : Address.fromJson(json['address'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$UpdatePostalCodeOfCustomerAddressRequestImplToJson(
    _$UpdatePostalCodeOfCustomerAddressRequestImpl instance) {
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
      id: (json['id'] as num?)?.toInt(),
      zip: json['zip'] as String?,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('zip', instance.zip);
  return val;
}
