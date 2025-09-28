// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_code_count_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscountCodeCountResponseImpl _$$DiscountCodeCountResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscountCodeCountResponseImpl(
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DiscountCodeCountResponseImplToJson(
    _$DiscountCodeCountResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}
