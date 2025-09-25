// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_new_customer_record_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateNewCustomerRecordRequestImpl
    _$$CreateNewCustomerRecordRequestImplFromJson(Map<String, dynamic> json) =>
        _$CreateNewCustomerRecordRequestImpl(
          customer: json['customer'] == null
              ? null
              : Customer.fromJson(json['customer'] as Map<String, dynamic>),
          errors: json['errors'] == null
              ? null
              : Errors.fromJson(json['errors'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateNewCustomerRecordRequestImplToJson(
    _$CreateNewCustomerRecordRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer', instance.customer?.toJson());
  writeNotNull('errors', instance.errors?.toJson());
  return val;
}

_$CustomerImpl _$$CustomerImplFromJson(Map<String, dynamic> json) =>
    _$CustomerImpl(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      verifiedEmail: json['verified_email'] as bool?,
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CustomerImplToJson(_$CustomerImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('email', instance.email);
  writeNotNull('phone', instance.phone);
  writeNotNull('verified_email', instance.verifiedEmail);
  writeNotNull(
      'addresses', instance.addresses?.map((e) => e.toJson()).toList());
  return val;
}

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      address1: json['address1'] as String?,
      city: json['city'] as String?,
      province: json['province'] as String?,
      phone: json['phone'] as String?,
      zip: json['zip'] as String?,
      lastName: json['last_name'] as String?,
      firstName: json['first_name'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address1', instance.address1);
  writeNotNull('city', instance.city);
  writeNotNull('province', instance.province);
  writeNotNull('phone', instance.phone);
  writeNotNull('zip', instance.zip);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('country', instance.country);
  return val;
}

_$ErrorsImpl _$$ErrorsImplFromJson(Map<String, dynamic> json) => _$ErrorsImpl(
      base: (json['base'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ErrorsImplToJson(_$ErrorsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('base', instance.base);
  return val;
}
