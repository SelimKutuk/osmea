// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_checkout_data_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListCheckoutDataResponseModelImpl
    _$$ListCheckoutDataResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$ListCheckoutDataResponseModelImpl(
          orderId: (json['order_id'] as num?)?.toInt(),
          status: json['status'] as String?,
          orderKey: json['order_key'] as String?,
          orderNumber: json['order_number'] as String?,
          customerNote: json['customer_note'] as String?,
          customerId: (json['customer_id'] as num?)?.toInt(),
          billingAddress: json['billing_address'] == null
              ? null
              : IngAddress.fromJson(
                  json['billing_address'] as Map<String, dynamic>),
          shippingAddress: json['shipping_address'] == null
              ? null
              : IngAddress.fromJson(
                  json['shipping_address'] as Map<String, dynamic>),
          paymentMethod: json['payment_method'] as String?,
          paymentResult: json['payment_result'] == null
              ? null
              : PaymentResult.fromJson(
                  json['payment_result'] as Map<String, dynamic>),
          additionalFields: json['additional_fields'] == null
              ? null
              : AdditionalFields.fromJson(
                  json['additional_fields'] as Map<String, dynamic>),
          experimentalCart: json['__experimentalCart'],
          extensions: json['extensions'] == null
              ? null
              : AdditionalFields.fromJson(
                  json['extensions'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ListCheckoutDataResponseModelImplToJson(
        _$ListCheckoutDataResponseModelImpl instance) =>
    <String, dynamic>{
      if (instance.orderId case final value?) 'order_id': value,
      if (instance.status case final value?) 'status': value,
      if (instance.orderKey case final value?) 'order_key': value,
      if (instance.orderNumber case final value?) 'order_number': value,
      if (instance.customerNote case final value?) 'customer_note': value,
      if (instance.customerId case final value?) 'customer_id': value,
      if (instance.billingAddress?.toJson() case final value?)
        'billing_address': value,
      if (instance.shippingAddress?.toJson() case final value?)
        'shipping_address': value,
      if (instance.paymentMethod case final value?) 'payment_method': value,
      if (instance.paymentResult?.toJson() case final value?)
        'payment_result': value,
      if (instance.additionalFields?.toJson() case final value?)
        'additional_fields': value,
      if (instance.experimentalCart case final value?)
        '__experimentalCart': value,
      if (instance.extensions?.toJson() case final value?) 'extensions': value,
    };

_$AdditionalFieldsImpl _$$AdditionalFieldsImplFromJson(
        Map<String, dynamic> json) =>
    _$AdditionalFieldsImpl();

Map<String, dynamic> _$$AdditionalFieldsImplToJson(
        _$AdditionalFieldsImpl instance) =>
    <String, dynamic>{};

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

_$PaymentResultImpl _$$PaymentResultImplFromJson(Map<String, dynamic> json) =>
    _$PaymentResultImpl(
      paymentStatus: json['payment_status'] as String?,
      paymentDetails: json['payment_details'] as List<dynamic>?,
      redirectUrl: json['redirect_url'] as String?,
    );

Map<String, dynamic> _$$PaymentResultImplToJson(_$PaymentResultImpl instance) =>
    <String, dynamic>{
      if (instance.paymentStatus case final value?) 'payment_status': value,
      if (instance.paymentDetails case final value?) 'payment_details': value,
      if (instance.redirectUrl case final value?) 'redirect_url': value,
    };
