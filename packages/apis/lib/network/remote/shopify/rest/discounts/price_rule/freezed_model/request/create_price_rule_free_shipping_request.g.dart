// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_price_rule_free_shipping_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatePriceRuleFreeShippingRequestImpl
    _$$CreatePriceRuleFreeShippingRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$CreatePriceRuleFreeShippingRequestImpl(
          priceRule: json['price_rule'] == null
              ? null
              : PriceRule.fromJson(json['price_rule'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreatePriceRuleFreeShippingRequestImplToJson(
    _$CreatePriceRuleFreeShippingRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('price_rule', instance.priceRule?.toJson());
  return val;
}

_$PriceRuleImpl _$$PriceRuleImplFromJson(Map<String, dynamic> json) =>
    _$PriceRuleImpl(
      title: json['title'] as String?,
      targetType: json['target_type'] as String?,
      targetSelection: json['target_selection'] as String?,
      allocationMethod: json['allocation_method'] as String?,
      valueType: json['value_type'] as String?,
      value: json['value'] as String?,
      usageLimit: (json['usage_limit'] as num?)?.toInt(),
      customerSelection: json['customer_selection'] as String?,
      prerequisiteSubtotalRange: json['prerequisite_subtotal_range'] == null
          ? null
          : PrerequisiteSubtotalRange.fromJson(
              json['prerequisite_subtotal_range'] as Map<String, dynamic>),
      startsAt: json['starts_at'] as String?,
    );

Map<String, dynamic> _$$PriceRuleImplToJson(_$PriceRuleImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('target_type', instance.targetType);
  writeNotNull('target_selection', instance.targetSelection);
  writeNotNull('allocation_method', instance.allocationMethod);
  writeNotNull('value_type', instance.valueType);
  writeNotNull('value', instance.value);
  writeNotNull('usage_limit', instance.usageLimit);
  writeNotNull('customer_selection', instance.customerSelection);
  writeNotNull('prerequisite_subtotal_range',
      instance.prerequisiteSubtotalRange?.toJson());
  writeNotNull('starts_at', instance.startsAt);
  return val;
}

_$PrerequisiteSubtotalRangeImpl _$$PrerequisiteSubtotalRangeImplFromJson(
        Map<String, dynamic> json) =>
    _$PrerequisiteSubtotalRangeImpl(
      greaterThanOrEqualTo: json['greater_than_or_equal_to'] as String?,
    );

Map<String, dynamic> _$$PrerequisiteSubtotalRangeImplToJson(
    _$PrerequisiteSubtotalRangeImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('greater_than_or_equal_to', instance.greaterThanOrEqualTo);
  return val;
}
