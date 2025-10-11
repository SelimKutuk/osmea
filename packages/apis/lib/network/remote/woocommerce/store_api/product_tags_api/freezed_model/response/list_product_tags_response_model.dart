// To parse this JSON data, do
//
//     final listProductTagsResponseModel = listProductTagsResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'list_product_tags_response_model.freezed.dart';
part 'list_product_tags_response_model.g.dart';

List<ListProductTagsResponseModel> listProductTagsResponseModelFromJson(
        String str) =>
    List<ListProductTagsResponseModel>.from(
        json.decode(str).map((x) => ListProductTagsResponseModel.fromJson(x)));

String listProductTagsResponseModelToJson(
        List<ListProductTagsResponseModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class ListProductTagsResponseModel with _$ListProductTagsResponseModel {
  const factory ListProductTagsResponseModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "slug") String? slug,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "parent") int? parent,
    @JsonKey(name: "count") int? count,
  }) = _ListProductTagsResponseModel;

  factory ListProductTagsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ListProductTagsResponseModelFromJson(json);
}
