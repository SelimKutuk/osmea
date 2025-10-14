// To parse this JSON data, do
//
//     final processPaymentAndOrderRequestModel = processPaymentAndOrderRequestModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'process_payment_and_order_request_model.freezed.dart';
part 'process_payment_and_order_request_model.g.dart';

ProcessPaymentAndOrderRequestModel processPaymentAndOrderRequestModelFromJson(
        String str) =>
    ProcessPaymentAndOrderRequestModel.fromJson(json.decode(str));

String processPaymentAndOrderRequestModelToJson(
        ProcessPaymentAndOrderRequestModel data) =>
    json.encode(data.toJson());

@freezed
class ProcessPaymentAndOrderRequestModel
    with _$ProcessPaymentAndOrderRequestModel {
  const factory ProcessPaymentAndOrderRequestModel({
    @JsonKey(name: "key") String? key,
    @JsonKey(name: "billing_email") String? billingEmail,
    @JsonKey(name: "billing_address") IngAddress? billingAddress,
    @JsonKey(name: "shipping_address") IngAddress? shippingAddress,
    @JsonKey(name: "payment_method") String? paymentMethod,
    @JsonKey(name: "payment_data") List<dynamic>? paymentData,
  }) = _ProcessPaymentAndOrderRequestModel;

  factory ProcessPaymentAndOrderRequestModel.fromJson(
          Map<String, dynamic> json) =>
      _$ProcessPaymentAndOrderRequestModelFromJson(json);
}

@freezed
class IngAddress with _$IngAddress {
  const factory IngAddress({
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "company") String? company,
    @JsonKey(name: "address_1") String? address1,
    @JsonKey(name: "address_2") String? address2,
    @JsonKey(name: "city") String? city,
    @JsonKey(name: "state") String? state,
    @JsonKey(name: "postcode") String? postcode,
    @JsonKey(name: "country") String? country,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "phone") String? phone,
  }) = _IngAddress;

  factory IngAddress.fromJson(Map<String, dynamic> json) =>
      _$IngAddressFromJson(json);
}
