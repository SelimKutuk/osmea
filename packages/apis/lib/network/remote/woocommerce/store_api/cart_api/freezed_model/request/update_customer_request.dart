// To parse this JSON data, do
//
//     final updateCustomerRequest = updateCustomerRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'update_customer_request.freezed.dart';
part 'update_customer_request.g.dart';

UpdateCustomerRequest updateCustomerRequestFromJson(String str) => UpdateCustomerRequest.fromJson(json.decode(str));

String updateCustomerRequestToJson(UpdateCustomerRequest data) => json.encode(data.toJson());

@freezed
class UpdateCustomerRequest with _$UpdateCustomerRequest {
    const factory UpdateCustomerRequest({
        @JsonKey(name: "billing_address")
        BillingAddress? billingAddress,
        @JsonKey(name: "shipping_address")
        ShippingAddress? shippingAddress,
    }) = _UpdateCustomerRequest;

    factory UpdateCustomerRequest.fromJson(Map<String, dynamic> json) => _$UpdateCustomerRequestFromJson(json);
}

@freezed
class BillingAddress with _$BillingAddress {
    const factory BillingAddress({
        @JsonKey(name: "first_name")
        String? firstName,
        @JsonKey(name: "last_name")
        String? lastName,
        @JsonKey(name: "address_1")
        String? address1,
        @JsonKey(name: "address_2")
        String? address2,
        @JsonKey(name: "city")
        String? city,
        @JsonKey(name: "state")
        String? state,
        @JsonKey(name: "postcode")
        String? postcode,
        @JsonKey(name: "country")
        String? country,
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "phone")
        String? phone,
    }) = _BillingAddress;

    factory BillingAddress.fromJson(Map<String, dynamic> json) => _$BillingAddressFromJson(json);
}

@freezed
class ShippingAddress with _$ShippingAddress {
    const factory ShippingAddress({
        @JsonKey(name: "first_name")
        String? firstName,
        @JsonKey(name: "last_name")
        String? lastName,
        @JsonKey(name: "address_1")
        String? address1,
        @JsonKey(name: "address_2")
        String? address2,
        @JsonKey(name: "city")
        String? city,
        @JsonKey(name: "state")
        String? state,
        @JsonKey(name: "postcode")
        String? postcode,
        @JsonKey(name: "country")
        String? country,
        @JsonKey(name: "phone")
        String? phone,
    }) = _ShippingAddress;

    factory ShippingAddress.fromJson(Map<String, dynamic> json) => _$ShippingAddressFromJson(json);
}
