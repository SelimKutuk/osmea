// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_code_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscountCodeListResponseImpl _$$DiscountCodeListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscountCodeListResponseImpl(
      discountCodes: (json['discount_codes'] as List<dynamic>?)
          ?.map((e) => DiscountCode.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DiscountCodeListResponseImplToJson(
    _$DiscountCodeListResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('discount_codes',
      instance.discountCodes?.map((e) => e.toJson()).toList());
  return val;
}

_$DiscountCodeImpl _$$DiscountCodeImplFromJson(Map<String, dynamic> json) =>
    _$DiscountCodeImpl(
      id: (json['id'] as num?)?.toInt(),
      priceRuleId: (json['price_rule_id'] as num?)?.toInt(),
      code: json['code'] as String?,
      usageCount: (json['usage_count'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$DiscountCodeImplToJson(_$DiscountCodeImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('price_rule_id', instance.priceRuleId);
  writeNotNull('code', instance.code);
  writeNotNull('usage_count', instance.usageCount);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  return val;
}
