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
    @JsonKey(name: "order_id") int? orderId,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "order_key") String? orderKey,
    @JsonKey(name: "order_number") String? orderNumber,
    @JsonKey(name: "customer_note") String? customerNote,
    @JsonKey(name: "customer_id") int? customerId,
    @JsonKey(name: "billing_address") IngAddress? billingAddress,
    @JsonKey(name: "shipping_address") IngAddress? shippingAddress,
    @JsonKey(name: "shipping_lines") List<ShippingLine>? shippingLines,
    @JsonKey(name: "payment_method") String? paymentMethod,
    @JsonKey(name: "payment_result") PaymentResult? paymentResult,
    @JsonKey(name: "additional_fields") AdditionalFields? additionalFields,
    @JsonKey(name: "__experimentalCart") dynamic experimentalCart,
    @JsonKey(name: "extensions") AdditionalFields? extensions,
  }) = _ProcessPaymentAndOrderRequestModel;

  factory ProcessPaymentAndOrderRequestModel.fromJson(
          Map<String, dynamic> json) =>
      _$ProcessPaymentAndOrderRequestModelFromJson(json);
}

@freezed
class AdditionalFields with _$AdditionalFields {
  const factory AdditionalFields() = _AdditionalFields;

  factory AdditionalFields.fromJson(Map<String, dynamic> json) =>
      _$AdditionalFieldsFromJson(json);
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

@freezed
class ShippingLine with _$ShippingLine {
  const factory ShippingLine({
    @JsonKey(name: "method_id") String? methodId,
    @JsonKey(name: "method_title") String? methodTitle,
    @JsonKey(name: "total") String? total,
    @JsonKey(name: "instance_id") String? instanceId,
  }) = _ShippingLine;

  factory ShippingLine.fromJson(Map<String, dynamic> json) =>
      _$ShippingLineFromJson(json);
}
