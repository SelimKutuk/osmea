// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destroy_multiple_customer_addresses_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DestroyMultipleCustomerAddressesResponseImpl
    _$$DestroyMultipleCustomerAddressesResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$DestroyMultipleCustomerAddressesResponseImpl(
          errors: json['errors'] as String?,
        );

Map<String, dynamic> _$$DestroyMultipleCustomerAddressesResponseImplToJson(
    _$DestroyMultipleCustomerAddressesResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors);
  return val;
}
