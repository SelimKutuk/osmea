// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_gift_card_with_custom_code_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateGiftCardWithCustomCodeRequestImpl
    _$$CreateGiftCardWithCustomCodeRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateGiftCardWithCustomCodeRequestImpl(
          giftCard: json['gift_card'] == null
              ? null
              : GiftCard.fromJson(json['gift_card'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateGiftCardWithCustomCodeRequestImplToJson(
    _$CreateGiftCardWithCustomCodeRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('gift_card', instance.giftCard?.toJson());
  return val;
}

_$GiftCardImpl _$$GiftCardImplFromJson(Map<String, dynamic> json) =>
    _$GiftCardImpl(
      note: json['note'] as String?,
      initialValue: (json['initial_value'] as num?)?.toInt(),
      code: json['code'] as String?,
      templateSuffix: json['template_suffix'] as String?,
    );

Map<String, dynamic> _$$GiftCardImplToJson(_$GiftCardImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('note', instance.note);
  writeNotNull('initial_value', instance.initialValue);
  writeNotNull('code', instance.code);
  writeNotNull('template_suffix', instance.templateSuffix);
  return val;
}
