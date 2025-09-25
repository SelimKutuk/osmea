// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_price_rule_discount_selected_customers_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatePriceRuleDiscountSelectedCustomersRequestImpl
    _$$CreatePriceRuleDiscountSelectedCustomersRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$CreatePriceRuleDiscountSelectedCustomersRequestImpl(
          priceRule: json['price_rule'] == null
              ? null
              : PriceRule.fromJson(json['price_rule'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$$CreatePriceRuleDiscountSelectedCustomersRequestImplToJson(
        _$CreatePriceRuleDiscountSelectedCustomersRequestImpl instance) {
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
      customerSelection: json['customer_selection'] as String?,
      prerequisiteSavedSearchIds:
          (json['prerequisite_saved_search_ids'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList(),
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
  writeNotNull('customer_selection', instance.customerSelection);
  writeNotNull(
      'prerequisite_saved_search_ids', instance.prerequisiteSavedSearchIds);
  writeNotNull('starts_at', instance.startsAt);
  return val;
}
