// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_discount_code_creation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateDiscountCodeCreationRequestImpl
    _$$CreateDiscountCodeCreationRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateDiscountCodeCreationRequestImpl(
          discountCodes: (json['discount_codes'] as List<dynamic>?)
              ?.map((e) => DiscountCode.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$CreateDiscountCodeCreationRequestImplToJson(
    _$CreateDiscountCodeCreationRequestImpl instance) {
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
