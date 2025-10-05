// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_checkout_data_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateCheckoutDataRequestModelImpl
    _$$UpdateCheckoutDataRequestModelImplFromJson(Map<String, dynamic> json) =>
        _$UpdateCheckoutDataRequestModelImpl(
          additionalFields: json['additional_fields'] == null
              ? null
              : AdditionalFields.fromJson(
                  json['additional_fields'] as Map<String, dynamic>),
          paymentMethod: json['payment_method'] as String?,
          orderNotes: json['order_notes'] as String?,
          billingAddress: json['billing_address'] == null
              ? null
              : IngAddress.fromJson(
                  json['billing_address'] as Map<String, dynamic>),
          shippingAddress: json['shipping_address'] == null
              ? null
              : IngAddress.fromJson(
                  json['shipping_address'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$UpdateCheckoutDataRequestModelImplToJson(
        _$UpdateCheckoutDataRequestModelImpl instance) =>
    <String, dynamic>{
      if (instance.additionalFields?.toJson() case final value?)
        'additional_fields': value,
      if (instance.paymentMethod case final value?) 'payment_method': value,
      if (instance.orderNotes case final value?) 'order_notes': value,
      if (instance.billingAddress?.toJson() case final value?)
        'billing_address': value,
      if (instance.shippingAddress?.toJson() case final value?)
        'shipping_address': value,
    };

_$AdditionalFieldsImpl _$$AdditionalFieldsImplFromJson(
        Map<String, dynamic> json) =>
    _$AdditionalFieldsImpl(
      pluginNamespaceLeaveOnPorch:
          json['plugin-namespace/leave-on-porch'] as bool?,
      pluginNamespaceLocationOnPorch:
          json['plugin-namespace/location-on-porch'] as String?,
    );

Map<String, dynamic> _$$AdditionalFieldsImplToJson(
        _$AdditionalFieldsImpl instance) =>
    <String, dynamic>{
      if (instance.pluginNamespaceLeaveOnPorch case final value?)
        'plugin-namespace/leave-on-porch': value,
      if (instance.pluginNamespaceLocationOnPorch case final value?)
        'plugin-namespace/location-on-porch': value,
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
