// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_code_list_creation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscountCodeListCreationResponseImpl
    _$$DiscountCodeListCreationResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$DiscountCodeListCreationResponseImpl(
          discountCodes: (json['discount_codes'] as List<dynamic>?)
              ?.map((e) => DiscountCode.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$DiscountCodeListCreationResponseImplToJson(
    _$DiscountCodeListCreationResponseImpl instance) {
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
      code: json['code'] as String?,
      errors: json['errors'] == null
          ? null
          : Errors.fromJson(json['errors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DiscountCodeImplToJson(_$DiscountCodeImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('code', instance.code);
  writeNotNull('errors', instance.errors?.toJson());
  return val;
}

_$ErrorsImpl _$$ErrorsImplFromJson(Map<String, dynamic> json) => _$ErrorsImpl();

Map<String, dynamic> _$$ErrorsImplToJson(_$ErrorsImpl instance) =>
    <String, dynamic>{};
