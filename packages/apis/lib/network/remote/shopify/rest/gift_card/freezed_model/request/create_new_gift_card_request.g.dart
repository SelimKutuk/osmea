// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_new_gift_card_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateNewGiftCardRequestImpl _$$CreateNewGiftCardRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateNewGiftCardRequestImpl(
      giftCard: json['gift_card'] == null
          ? null
          : GiftCard.fromJson(json['gift_card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateNewGiftCardRequestImplToJson(
    _$CreateNewGiftCardRequestImpl instance) {
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
      initialValue: (json['initial_value'] as num?)?.toInt(),
      note: json['note'] as String?,
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$$GiftCardImplToJson(_$GiftCardImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('initial_value', instance.initialValue);
  writeNotNull('note', instance.note);
  writeNotNull('currency', instance.currency);
  return val;
}
