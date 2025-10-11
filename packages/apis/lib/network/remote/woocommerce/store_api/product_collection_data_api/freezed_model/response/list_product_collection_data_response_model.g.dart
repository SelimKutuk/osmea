// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_product_collection_data_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListProductCollectionDataResponseModelImpl
    _$$ListProductCollectionDataResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$ListProductCollectionDataResponseModelImpl(
          priceRange: json['price_range'] == null
              ? null
              : PriceRange.fromJson(
                  json['price_range'] as Map<String, dynamic>),
          attributeCounts: (json['attribute_counts'] as List<dynamic>?)
              ?.map((e) => Count.fromJson(e as Map<String, dynamic>))
              .toList(),
          ratingCounts: (json['rating_counts'] as List<dynamic>?)
              ?.map((e) => RatingCount.fromJson(e as Map<String, dynamic>))
              .toList(),
          taxonomyCounts: (json['taxonomy_counts'] as List<dynamic>?)
              ?.map((e) => Count.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$ListProductCollectionDataResponseModelImplToJson(
        _$ListProductCollectionDataResponseModelImpl instance) =>
    <String, dynamic>{
      if (instance.priceRange?.toJson() case final value?) 'price_range': value,
      if (instance.attributeCounts?.map((e) => e.toJson()).toList()
          case final value?)
        'attribute_counts': value,
      if (instance.ratingCounts?.map((e) => e.toJson()).toList()
          case final value?)
        'rating_counts': value,
      if (instance.taxonomyCounts?.map((e) => e.toJson()).toList()
          case final value?)
        'taxonomy_counts': value,
    };

_$CountImpl _$$CountImplFromJson(Map<String, dynamic> json) => _$CountImpl(
      term: (json['term'] as num?)?.toInt(),
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CountImplToJson(_$CountImpl instance) =>
    <String, dynamic>{
      if (instance.term case final value?) 'term': value,
      if (instance.count case final value?) 'count': value,
    };

_$PriceRangeImpl _$$PriceRangeImplFromJson(Map<String, dynamic> json) =>
    _$PriceRangeImpl(
      currencyMinorUnit: (json['currency_minor_unit'] as num?)?.toInt(),
      minPrice: json['min_price'] as String?,
      maxPrice: json['max_price'] as String?,
      currencyCode: json['currency_code'] as String?,
      currencyDecimalSeparator: json['currency_decimal_separator'] as String?,
      currencyPrefix: json['currency_prefix'] as String?,
      currencySuffix: json['currency_suffix'] as String?,
      currencySymbol: json['currency_symbol'] as String?,
      currencyThousandSeparator: json['currency_thousand_separator'] as String?,
    );

Map<String, dynamic> _$$PriceRangeImplToJson(_$PriceRangeImpl instance) =>
    <String, dynamic>{
      if (instance.currencyMinorUnit case final value?)
        'currency_minor_unit': value,
      if (instance.minPrice case final value?) 'min_price': value,
      if (instance.maxPrice case final value?) 'max_price': value,
      if (instance.currencyCode case final value?) 'currency_code': value,
      if (instance.currencyDecimalSeparator case final value?)
        'currency_decimal_separator': value,
      if (instance.currencyPrefix case final value?) 'currency_prefix': value,
      if (instance.currencySuffix case final value?) 'currency_suffix': value,
      if (instance.currencySymbol case final value?) 'currency_symbol': value,
      if (instance.currencyThousandSeparator case final value?)
        'currency_thousand_separator': value,
    };

_$RatingCountImpl _$$RatingCountImplFromJson(Map<String, dynamic> json) =>
    _$RatingCountImpl(
      rating: (json['rating'] as num?)?.toInt(),
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RatingCountImplToJson(_$RatingCountImpl instance) =>
    <String, dynamic>{
      if (instance.rating case final value?) 'rating': value,
      if (instance.count case final value?) 'count': value,
    };
