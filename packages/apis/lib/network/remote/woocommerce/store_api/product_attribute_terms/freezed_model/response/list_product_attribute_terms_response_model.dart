// To parse this JSON data, do
//
//     final listProductAttributeTermsResponseModel = listProductAttributeTermsResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'list_product_attribute_terms_response_model.freezed.dart';
part 'list_product_attribute_terms_response_model.g.dart';

List<ListProductAttributeTermsResponseModel>
    listProductAttributeTermsResponseModelFromJson(String str) =>
        List<ListProductAttributeTermsResponseModel>.from(json
            .decode(str)
            .map((x) => ListProductAttributeTermsResponseModel.fromJson(x)));

String listProductAttributeTermsResponseModelToJson(
        List<ListProductAttributeTermsResponseModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class ListProductAttributeTermsResponseModel
    with _$ListProductAttributeTermsResponseModel {
  const factory ListProductAttributeTermsResponseModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "slug") String? slug,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "parent") int? parent,
    @JsonKey(name: "count") int? count,
  }) = _ListProductAttributeTermsResponseModel;

  factory ListProductAttributeTermsResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$ListProductAttributeTermsResponseModelFromJson(json);
}
