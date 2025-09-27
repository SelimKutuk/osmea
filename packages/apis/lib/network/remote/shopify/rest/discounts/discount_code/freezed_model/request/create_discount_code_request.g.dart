// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_discount_code_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateDiscountCodeRequestImpl _$$CreateDiscountCodeRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateDiscountCodeRequestImpl(
      discountCode: json['discount_code'] == null
          ? null
          : DiscountCode.fromJson(
              json['discount_code'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateDiscountCodeRequestImplToJson(
    _$CreateDiscountCodeRequestImpl instance) {
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
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$DiscountCodeImplToJson(_$DiscountCodeImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  return val;
}
