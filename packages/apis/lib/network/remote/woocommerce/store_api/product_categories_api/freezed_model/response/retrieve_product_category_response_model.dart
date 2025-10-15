// To parse this JSON data, do
//
//     final retrieveProductCategoryResponseModel = retrieveProductCategoryResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'retrieve_product_category_response_model.freezed.dart';
part 'retrieve_product_category_response_model.g.dart';

List<RetrieveProductCategoryResponseModel>
    retrieveProductCategoryResponseModelFromJson(String str) =>
        List<RetrieveProductCategoryResponseModel>.from(json
            .decode(str)
            .map((x) => RetrieveProductCategoryResponseModel.fromJson(x)));

String retrieveProductCategoryResponseModelToJson(
        List<RetrieveProductCategoryResponseModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class RetrieveProductCategoryResponseModel
    with _$RetrieveProductCategoryResponseModel {
  const factory RetrieveProductCategoryResponseModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "slug") String? slug,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "parent") int? parent,
    @JsonKey(name: "count") int? count,
    @JsonKey(name: "image") dynamic image,
    @JsonKey(name: "review_count") int? reviewCount,
    @JsonKey(name: "permalink") String? permalink,
  }) = _RetrieveProductCategoryResponseModel;

  factory RetrieveProductCategoryResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$RetrieveProductCategoryResponseModelFromJson(json);
}
