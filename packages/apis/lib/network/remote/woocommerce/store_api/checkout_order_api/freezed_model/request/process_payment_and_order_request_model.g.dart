// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'process_payment_and_order_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProcessPaymentAndOrderRequestModelImpl
    _$$ProcessPaymentAndOrderRequestModelImplFromJson(
            Map<String, dynamic> json) =>
        _$ProcessPaymentAndOrderRequestModelImpl(
          key: json['key'] as String?,
          billingEmail: json['billing_email'] as String?,
          billingAddress: json['billing_address'] == null
              ? null
              : IngAddress.fromJson(
                  json['billing_address'] as Map<String, dynamic>),
          shippingAddress: json['shipping_address'] == null
              ? null
              : IngAddress.fromJson(
                  json['shipping_address'] as Map<String, dynamic>),
          paymentMethod: json['payment_method'] as String?,
          paymentData: json['payment_data'] as List<dynamic>?,
        );

Map<String, dynamic> _$$ProcessPaymentAndOrderRequestModelImplToJson(
        _$ProcessPaymentAndOrderRequestModelImpl instance) =>
    <String, dynamic>{
      if (instance.key case final value?) 'key': value,
      if (instance.billingEmail case final value?) 'billing_email': value,
      if (instance.billingAddress?.toJson() case final value?)
        'billing_address': value,
      if (instance.shippingAddress?.toJson() case final value?)
        'shipping_address': value,
      if (instance.paymentMethod case final value?) 'payment_method': value,
      if (instance.paymentData case final value?) 'payment_data': value,
    };

_$IngAddressImpl _$$IngAddressImplFromJson(Map<String, dynamic> json) =>
    _$IngAddressImpl(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      company: json['company'] as String?,
      address1: json['address_1'] as String?,
      address2: json['address_2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      postcode: json['postcode'] as String?,
      country: json['country'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$IngAddressImplToJson(_$IngAddressImpl instance) =>
    <String, dynamic>{
      if (instance.firstName case final value?) 'first_name': value,
      if (instance.lastName case final value?) 'last_name': value,
      if (instance.company case final value?) 'company': value,
      if (instance.address1 case final value?) 'address_1': value,
      if (instance.address2 case final value?) 'address_2': value,
      if (instance.city case final value?) 'city': value,
      if (instance.state case final value?) 'state': value,
      if (instance.postcode case final value?) 'postcode': value,
      if (instance.country case final value?) 'country': value,
      if (instance.email case final value?) 'email': value,
      if (instance.phone case final value?) 'phone': value,
    };
