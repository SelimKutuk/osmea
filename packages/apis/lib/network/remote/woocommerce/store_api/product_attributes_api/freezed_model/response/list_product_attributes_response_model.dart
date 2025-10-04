// To parse this JSON data, do
//
//     final listProductAttributesResponseModel = listProductAttributesResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'list_product_attributes_response_model.freezed.dart';
part 'list_product_attributes_response_model.g.dart';

List<ListProductAttributesResponseModel>
    listProductAttributesResponseModelFromJson(String str) =>
        List<ListProductAttributesResponseModel>.from(json
            .decode(str)
            .map((x) => ListProductAttributesResponseModel.fromJson(x)));

String listProductAttributesResponseModelToJson(
        List<ListProductAttributesResponseModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class ListProductAttributesResponseModel
    with _$ListProductAttributesResponseModel {
  const factory ListProductAttributesResponseModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "taxonomy") String? taxonomy,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "order") String? order,
    @JsonKey(name: "has_archives") bool? hasArchives,
    @JsonKey(name: "count") int? count,
  }) = _ListProductAttributesResponseModel;

  factory ListProductAttributesResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$ListProductAttributesResponseModelFromJson(json);
}
