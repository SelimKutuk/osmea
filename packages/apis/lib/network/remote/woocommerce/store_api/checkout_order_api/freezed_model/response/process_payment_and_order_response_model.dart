// To parse this JSON data, do
//
//     final processPaymentAndOrderResponseModel = processPaymentAndOrderResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'process_payment_and_order_response_model.freezed.dart';
part 'process_payment_and_order_response_model.g.dart';

ProcessPaymentAndOrderResponseModel processPaymentAndOrderResponseModelFromJson(
        String str) =>
    ProcessPaymentAndOrderResponseModel.fromJson(json.decode(str));

String processPaymentAndOrderResponseModelToJson(
        ProcessPaymentAndOrderResponseModel data) =>
    json.encode(data.toJson());

@freezed
class ProcessPaymentAndOrderResponseModel
    with _$ProcessPaymentAndOrderResponseModel {
  const factory ProcessPaymentAndOrderResponseModel({
    @JsonKey(name: "order_id") int? orderId,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "order_key") String? orderKey,
    @JsonKey(name: "customer_note") String? customerNote,
    @JsonKey(name: "customer_id") int? customerId,
    @JsonKey(name: "billing_address") IngAddress? billingAddress,
    @JsonKey(name: "shipping_address") IngAddress? shippingAddress,
    @JsonKey(name: "payment_method") String? paymentMethod,
    @JsonKey(name: "payment_result") PaymentResult? paymentResult,
  }) = _ProcessPaymentAndOrderResponseModel;

  factory ProcessPaymentAndOrderResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$ProcessPaymentAndOrderResponseModelFromJson(json);
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

@freezed
class PaymentResult with _$PaymentResult {
  const factory PaymentResult({
    @JsonKey(name: "payment_status") String? paymentStatus,
    @JsonKey(name: "payment_details") List<dynamic>? paymentDetails,
    @JsonKey(name: "redirect_url") String? redirectUrl,
  }) = _PaymentResult;

  factory PaymentResult.fromJson(Map<String, dynamic> json) =>
      _$PaymentResultFromJson(json);
}
