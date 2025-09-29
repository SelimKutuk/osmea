// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_shipping_address_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateShippingAddressRequestImpl _$$UpdateShippingAddressRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateShippingAddressRequestImpl(
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateShippingAddressRequestImplToJson(
    _$UpdateShippingAddressRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order', instance.order?.toJson());
  return val;
}

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      shippingAddress: json['shipping_address'] == null
          ? null
          : ShippingAddress.fromJson(
              json['shipping_address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('shipping_address', instance.shippingAddress?.toJson());
  return val;
}

_$ShippingAddressImpl _$$ShippingAddressImplFromJson(
        Map<String, dynamic> json) =>
    _$ShippingAddressImpl(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      address1: json['address1'] as String?,
      city: json['city'] as String?,
      province: json['province'] as String?,
      country: json['country'] as String?,
      zip: json['zip'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$ShippingAddressImplToJson(
    _$ShippingAddressImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('address1', instance.address1);
  writeNotNull('city', instance.city);
  writeNotNull('province', instance.province);
  writeNotNull('country', instance.country);
  writeNotNull('zip', instance.zip);
  writeNotNull('phone', instance.phone);
  return val;
}
