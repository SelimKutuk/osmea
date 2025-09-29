// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_update_coupons_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BatchUpdateCouponsRequestImpl _$$BatchUpdateCouponsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$BatchUpdateCouponsRequestImpl(
      create: (json['create'] as List<dynamic>?)
          ?.map((e) => Create.fromJson(e as Map<String, dynamic>))
          .toList(),
      update: (json['update'] as List<dynamic>?)
          ?.map((e) => Update.fromJson(e as Map<String, dynamic>))
          .toList(),
      delete: (json['delete'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$BatchUpdateCouponsRequestImplToJson(
    _$BatchUpdateCouponsRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete);
  return val;
}

_$CreateImpl _$$CreateImplFromJson(Map<String, dynamic> json) => _$CreateImpl(
      code: json['code'] as String?,
      amount: json['amount'] as String?,
      discountType: json['discount_type'] as String?,
      individualUse: json['individual_use'] as bool?,
      excludeSaleItems: json['exclude_sale_items'] as bool?,
      minimumAmount: json['minimum_amount'] as String?,
    );

Map<String, dynamic> _$$CreateImplToJson(_$CreateImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('amount', instance.amount);
  writeNotNull('discount_type', instance.discountType);
  writeNotNull('individual_use', instance.individualUse);
  writeNotNull('exclude_sale_items', instance.excludeSaleItems);
  writeNotNull('minimum_amount', instance.minimumAmount);
  return val;
}

_$UpdateImpl _$$UpdateImplFromJson(Map<String, dynamic> json) => _$UpdateImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      amount: json['amount'] as String?,
      discountType: json['discount_type'] as String?,
      individualUse: json['individual_use'] as bool?,
      excludeSaleItems: json['exclude_sale_items'] as bool?,
      minimumAmount: json['minimum_amount'] as String?,
    );

Map<String, dynamic> _$$UpdateImplToJson(_$UpdateImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('code', instance.code);
  writeNotNull('amount', instance.amount);
  writeNotNull('discount_type', instance.discountType);
  writeNotNull('individual_use', instance.individualUse);
  writeNotNull('exclude_sale_items', instance.excludeSaleItems);
  writeNotNull('minimum_amount', instance.minimumAmount);
  return val;
}
