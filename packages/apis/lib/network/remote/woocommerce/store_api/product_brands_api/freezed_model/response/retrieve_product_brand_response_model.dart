// To parse this JSON data, do
//
//     final retrieveProductBrandResponseModel = retrieveProductBrandResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'retrieve_product_brand_response_model.freezed.dart';
part 'retrieve_product_brand_response_model.g.dart';

RetrieveProductBrandResponseModel retrieveProductBrandResponseModelFromJson(
        String str) =>
    RetrieveProductBrandResponseModel.fromJson(json.decode(str));

String retrieveProductBrandResponseModelToJson(
        RetrieveProductBrandResponseModel data) =>
    json.encode(data.toJson());

@freezed
class RetrieveProductBrandResponseModel
    with _$RetrieveProductBrandResponseModel {
  const factory RetrieveProductBrandResponseModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "slug") String? slug,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "parent") int? parent,
    @JsonKey(name: "count") int? count,
    @JsonKey(name: "image") dynamic image,
    @JsonKey(name: "review_count") int? reviewCount,
    @JsonKey(name: "permalink") String? permalink,
  }) = _RetrieveProductBrandResponseModel;

  factory RetrieveProductBrandResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$RetrieveProductBrandResponseModelFromJson(json);
}
