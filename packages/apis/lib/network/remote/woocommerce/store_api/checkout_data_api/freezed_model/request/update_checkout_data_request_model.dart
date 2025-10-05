// To parse this JSON data, do
//
//     final updateCheckoutDataRequestModel = updateCheckoutDataRequestModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'update_checkout_data_request_model.freezed.dart';
part 'update_checkout_data_request_model.g.dart';

UpdateCheckoutDataRequestModel updateCheckoutDataRequestModelFromJson(
        String str) =>
    UpdateCheckoutDataRequestModel.fromJson(json.decode(str));

String updateCheckoutDataRequestModelToJson(
        UpdateCheckoutDataRequestModel data) =>
    json.encode(data.toJson());

@freezed
class UpdateCheckoutDataRequestModel with _$UpdateCheckoutDataRequestModel {
  const factory UpdateCheckoutDataRequestModel({
    @JsonKey(name: "additional_fields") AdditionalFields? additionalFields,
    @JsonKey(name: "payment_method") String? paymentMethod,
    @JsonKey(name: "order_notes") String? orderNotes,
    @JsonKey(name: "billing_address") IngAddress? billingAddress,
    @JsonKey(name: "shipping_address") IngAddress? shippingAddress,
  }) = _UpdateCheckoutDataRequestModel;

  factory UpdateCheckoutDataRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateCheckoutDataRequestModelFromJson(json);
}

@freezed
class AdditionalFields with _$AdditionalFields {
  const factory AdditionalFields({
    @JsonKey(name: "plugin-namespace/leave-on-porch")
    bool? pluginNamespaceLeaveOnPorch,
    @JsonKey(name: "plugin-namespace/location-on-porch")
    String? pluginNamespaceLocationOnPorch,
  }) = _AdditionalFields;

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
