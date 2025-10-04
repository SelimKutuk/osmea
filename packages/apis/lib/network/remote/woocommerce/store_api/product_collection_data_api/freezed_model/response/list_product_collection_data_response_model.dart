// To parse this JSON data, do
//
//     final listProductCollectionDataResponseModel = listProductCollectionDataResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'list_product_collection_data_response_model.freezed.dart';
part 'list_product_collection_data_response_model.g.dart';

ListProductCollectionDataResponseModel
    listProductCollectionDataResponseModelFromJson(String str) =>
        ListProductCollectionDataResponseModel.fromJson(json.decode(str));

String listProductCollectionDataResponseModelToJson(
        ListProductCollectionDataResponseModel data) =>
    json.encode(data.toJson());

@freezed
class ListProductCollectionDataResponseModel
    with _$ListProductCollectionDataResponseModel {
  const factory ListProductCollectionDataResponseModel({
    @JsonKey(name: "price_range") PriceRange? priceRange,
    @JsonKey(name: "attribute_counts") List<Count>? attributeCounts,
    @JsonKey(name: "rating_counts") List<RatingCount>? ratingCounts,
    @JsonKey(name: "taxonomy_counts") List<Count>? taxonomyCounts,
  }) = _ListProductCollectionDataResponseModel;

  factory ListProductCollectionDataResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$ListProductCollectionDataResponseModelFromJson(json);
}

@freezed
class Count with _$Count {
  const factory Count({
    @JsonKey(name: "term") int? term,
    @JsonKey(name: "count") int? count,
  }) = _Count;

  factory Count.fromJson(Map<String, dynamic> json) => _$CountFromJson(json);
}

@freezed
class PriceRange with _$PriceRange {
  const factory PriceRange({
    @JsonKey(name: "currency_minor_unit") int? currencyMinorUnit,
    @JsonKey(name: "min_price") String? minPrice,
    @JsonKey(name: "max_price") String? maxPrice,
    @JsonKey(name: "currency_code") String? currencyCode,
    @JsonKey(name: "currency_decimal_separator")
    String? currencyDecimalSeparator,
    @JsonKey(name: "currency_prefix") String? currencyPrefix,
    @JsonKey(name: "currency_suffix") String? currencySuffix,
    @JsonKey(name: "currency_symbol") String? currencySymbol,
    @JsonKey(name: "currency_thousand_separator")
    String? currencyThousandSeparator,
  }) = _PriceRange;

  factory PriceRange.fromJson(Map<String, dynamic> json) =>
      _$PriceRangeFromJson(json);
}

@freezed
class RatingCount with _$RatingCount {
  const factory RatingCount({
    @JsonKey(name: "rating") int? rating,
    @JsonKey(name: "count") int? count,
  }) = _RatingCount;

  factory RatingCount.fromJson(Map<String, dynamic> json) =>
      _$RatingCountFromJson(json);
}
