// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_price_rule_free_shipping_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatePriceRuleFreeShippingResponseImpl
    _$$CreatePriceRuleFreeShippingResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$CreatePriceRuleFreeShippingResponseImpl(
          priceRule: json['price_rule'] == null
              ? null
              : PriceRule.fromJson(json['price_rule'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreatePriceRuleFreeShippingResponseImplToJson(
    _$CreatePriceRuleFreeShippingResponseImpl instance) {
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
      id: (json['id'] as num?)?.toInt(),
      valueType: json['value_type'] as String?,
      value: json['value'] as String?,
      customerSelection: json['customer_selection'] as String?,
      targetType: json['target_type'] as String?,
      targetSelection: json['target_selection'] as String?,
      allocationMethod: json['allocation_method'] as String?,
      allocationLimit: json['allocation_limit'],
      oncePerCustomer: json['once_per_customer'] as bool?,
      usageLimit: (json['usage_limit'] as num?)?.toInt(),
      startsAt: json['starts_at'] as String?,
      endsAt: json['ends_at'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      entitledProductIds: json['entitled_product_ids'] as List<dynamic>?,
      entitledVariantIds: json['entitled_variant_ids'] as List<dynamic>?,
      entitledCollectionIds: json['entitled_collection_ids'] as List<dynamic>?,
      entitledCountryIds: json['entitled_country_ids'] as List<dynamic>?,
      prerequisiteProductIds:
          json['prerequisite_product_ids'] as List<dynamic>?,
      prerequisiteVariantIds:
          json['prerequisite_variant_ids'] as List<dynamic>?,
      prerequisiteCollectionIds:
          json['prerequisite_collection_ids'] as List<dynamic>?,
      prerequisiteSavedSearchIds:
          json['prerequisite_saved_search_ids'] as List<dynamic>?,
      prerequisiteCustomerIds:
          json['prerequisite_customer_ids'] as List<dynamic>?,
      prerequisiteSubtotalRange: json['prerequisite_subtotal_range'] == null
          ? null
          : PrerequisiteSubtotalRange.fromJson(
              json['prerequisite_subtotal_range'] as Map<String, dynamic>),
      prerequisiteQuantityRange: json['prerequisite_quantity_range'],
      prerequisiteShippingPriceRange: json['prerequisite_shipping_price_range'],
      prerequisiteToEntitlementQuantityRatio:
          json['prerequisite_to_entitlement_quantity_ratio'] == null
              ? null
              : PrerequisiteToEntitlementQuantityRatio.fromJson(
                  json['prerequisite_to_entitlement_quantity_ratio']
                      as Map<String, dynamic>),
      title: json['title'] as String?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
    );

Map<String, dynamic> _$$PriceRuleImplToJson(_$PriceRuleImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('value_type', instance.valueType);
  writeNotNull('value', instance.value);
  writeNotNull('customer_selection', instance.customerSelection);
  writeNotNull('target_type', instance.targetType);
  writeNotNull('target_selection', instance.targetSelection);
  writeNotNull('allocation_method', instance.allocationMethod);
  writeNotNull('allocation_limit', instance.allocationLimit);
  writeNotNull('once_per_customer', instance.oncePerCustomer);
  writeNotNull('usage_limit', instance.usageLimit);
  writeNotNull('starts_at', instance.startsAt);
  writeNotNull('ends_at', instance.endsAt);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('entitled_product_ids', instance.entitledProductIds);
  writeNotNull('entitled_variant_ids', instance.entitledVariantIds);
  writeNotNull('entitled_collection_ids', instance.entitledCollectionIds);
  writeNotNull('entitled_country_ids', instance.entitledCountryIds);
  writeNotNull('prerequisite_product_ids', instance.prerequisiteProductIds);
  writeNotNull('prerequisite_variant_ids', instance.prerequisiteVariantIds);
  writeNotNull(
      'prerequisite_collection_ids', instance.prerequisiteCollectionIds);
  writeNotNull(
      'prerequisite_saved_search_ids', instance.prerequisiteSavedSearchIds);
  writeNotNull('prerequisite_customer_ids', instance.prerequisiteCustomerIds);
  writeNotNull('prerequisite_subtotal_range',
      instance.prerequisiteSubtotalRange?.toJson());
  writeNotNull(
      'prerequisite_quantity_range', instance.prerequisiteQuantityRange);
  writeNotNull('prerequisite_shipping_price_range',
      instance.prerequisiteShippingPriceRange);
  writeNotNull('prerequisite_to_entitlement_quantity_ratio',
      instance.prerequisiteToEntitlementQuantityRatio?.toJson());
  writeNotNull('title', instance.title);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
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

_$PrerequisiteToEntitlementQuantityRatioImpl
    _$$PrerequisiteToEntitlementQuantityRatioImplFromJson(
            Map<String, dynamic> json) =>
        _$PrerequisiteToEntitlementQuantityRatioImpl(
          prerequisiteQuantity: json['prerequisite_quantity'],
          entitledQuantity: json['entitled_quantity'],
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
