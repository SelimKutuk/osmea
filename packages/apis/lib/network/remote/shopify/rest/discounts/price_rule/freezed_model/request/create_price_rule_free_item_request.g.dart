// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_price_rule_free_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatePriceRuleFreeItemRequestImpl
    _$$CreatePriceRuleFreeItemRequestImplFromJson(Map<String, dynamic> json) =>
        _$CreatePriceRuleFreeItemRequestImpl(
          priceRule: json['price_rule'] == null
              ? null
              : PriceRule.fromJson(json['price_rule'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreatePriceRuleFreeItemRequestImplToJson(
    _$CreatePriceRuleFreeItemRequestImpl instance) {
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
      valueType: json['value_type'] as String?,
      value: json['value'] as String?,
      customerSelection: json['customer_selection'] as String?,
      targetType: json['target_type'] as String?,
      targetSelection: json['target_selection'] as String?,
      allocationMethod: json['allocation_method'] as String?,
      startsAt: json['starts_at'] as String?,
      prerequisiteCollectionIds:
          (json['prerequisite_collection_ids'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList(),
      entitledProductIds: (json['entitled_product_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      prerequisiteToEntitlementQuantityRatio:
          json['prerequisite_to_entitlement_quantity_ratio'] == null
              ? null
              : PrerequisiteToEntitlementQuantityRatio.fromJson(
                  json['prerequisite_to_entitlement_quantity_ratio']
                      as Map<String, dynamic>),
      allocationLimit: (json['allocation_limit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PriceRuleImplToJson(_$PriceRuleImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('value_type', instance.valueType);
  writeNotNull('value', instance.value);
  writeNotNull('customer_selection', instance.customerSelection);
  writeNotNull('target_type', instance.targetType);
  writeNotNull('target_selection', instance.targetSelection);
  writeNotNull('allocation_method', instance.allocationMethod);
  writeNotNull('starts_at', instance.startsAt);
  writeNotNull(
      'prerequisite_collection_ids', instance.prerequisiteCollectionIds);
  writeNotNull('entitled_product_ids', instance.entitledProductIds);
  writeNotNull('prerequisite_to_entitlement_quantity_ratio',
      instance.prerequisiteToEntitlementQuantityRatio?.toJson());
  writeNotNull('allocation_limit', instance.allocationLimit);
  return val;
}

_$PrerequisiteToEntitlementQuantityRatioImpl
    _$$PrerequisiteToEntitlementQuantityRatioImplFromJson(
            Map<String, dynamic> json) =>
        _$PrerequisiteToEntitlementQuantityRatioImpl(
          prerequisiteQuantity:
              (json['prerequisite_quantity'] as num?)?.toInt(),
          entitledQuantity: (json['entitled_quantity'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$PrerequisiteToEntitlementQuantityRatioImplToJson(
    _$PrerequisiteToEntitlementQuantityRatioImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('prerequisite_quantity', instance.prerequisiteQuantity);
  writeNotNull('entitled_quantity', instance.entitledQuantity);
  return val;
}
