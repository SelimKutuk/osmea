// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_coupon_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateCouponRequestImpl _$$UpdateCouponRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateCouponRequestImpl(
      code: json['code'] as String?,
      amount: json['amount'] as String?,
      discountType: json['discount_type'] as String?,
      description: json['description'] as String?,
      dateExpires: json['date_expires'] as String?,
      individualUse: json['individual_use'] as bool?,
      productIds: (json['product_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      excludedProductIds: (json['excluded_product_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      usageLimit: (json['usage_limit'] as num?)?.toInt(),
      usageLimitPerUser: (json['usage_limit_per_user'] as num?)?.toInt(),
      limitUsageToXItems: (json['limit_usage_to_x_items'] as num?)?.toInt(),
      freeShipping: json['free_shipping'] as bool?,
      productCategories: (json['product_categories'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      excludedProductCategories:
          (json['excluded_product_categories'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList(),
      excludeSaleItems: json['exclude_sale_items'] as bool?,
      minimumAmount: json['minimum_amount'] as String?,
      maximumAmount: json['maximum_amount'] as String?,
      emailRestrictions: (json['email_restrictions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$UpdateCouponRequestImplToJson(
    _$UpdateCouponRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('amount', instance.amount);
  writeNotNull('discount_type', instance.discountType);
  writeNotNull('description', instance.description);
  writeNotNull('date_expires', instance.dateExpires);
  writeNotNull('individual_use', instance.individualUse);
  writeNotNull('product_ids', instance.productIds);
  writeNotNull('excluded_product_ids', instance.excludedProductIds);
  writeNotNull('usage_limit', instance.usageLimit);
  writeNotNull('usage_limit_per_user', instance.usageLimitPerUser);
  writeNotNull('limit_usage_to_x_items', instance.limitUsageToXItems);
  writeNotNull('free_shipping', instance.freeShipping);
  writeNotNull('product_categories', instance.productCategories);
  writeNotNull(
      'excluded_product_categories', instance.excludedProductCategories);
  writeNotNull('exclude_sale_items', instance.excludeSaleItems);
  writeNotNull('minimum_amount', instance.minimumAmount);
  writeNotNull('maximum_amount', instance.maximumAmount);
  writeNotNull('email_restrictions', instance.emailRestrictions);
  return val;
}
