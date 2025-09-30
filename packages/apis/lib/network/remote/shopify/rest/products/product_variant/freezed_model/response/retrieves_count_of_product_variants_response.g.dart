// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieves_count_of_product_variants_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrievesCountOfProductVariantsResponseImpl
    _$$RetrievesCountOfProductVariantsResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$RetrievesCountOfProductVariantsResponseImpl(
          count: (json['count'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$RetrievesCountOfProductVariantsResponseImplToJson(
    _$RetrievesCountOfProductVariantsResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}
