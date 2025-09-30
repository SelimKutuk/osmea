// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscountCodeResponseImpl _$$DiscountCodeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscountCodeResponseImpl(
      discountCode: json['discount_code'] == null
          ? null
          : DiscountCode.fromJson(
              json['discount_code'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DiscountCodeResponseImplToJson(
    _$DiscountCodeResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('discount_code', instance.discountCode?.toJson());
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
