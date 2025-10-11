// To parse this JSON data, do
//
//     final retrieveProductAttributeResponseModel = retrieveProductAttributeResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'retrieve_product_attribute_response_model.freezed.dart';
part 'retrieve_product_attribute_response_model.g.dart';

RetrieveProductAttributeResponseModel
    retrieveProductAttributeResponseModelFromJson(String str) =>
        RetrieveProductAttributeResponseModel.fromJson(json.decode(str));

String retrieveProductAttributeResponseModelToJson(
        RetrieveProductAttributeResponseModel data) =>
    json.encode(data.toJson());

@freezed
class RetrieveProductAttributeResponseModel
    with _$RetrieveProductAttributeResponseModel {
  const factory RetrieveProductAttributeResponseModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "taxonomy") String? taxonomy,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "order") String? order,
    @JsonKey(name: "has_archives") bool? hasArchives,
    @JsonKey(name: "count") int? count,
  }) = _RetrieveProductAttributeResponseModel;

  factory RetrieveProductAttributeResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$RetrieveProductAttributeResponseModelFromJson(json);
}
