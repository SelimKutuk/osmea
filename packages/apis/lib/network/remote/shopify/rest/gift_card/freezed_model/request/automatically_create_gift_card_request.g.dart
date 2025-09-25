// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'automatically_create_gift_card_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AutomaticallyCreateGiftCardRequestImpl
    _$$AutomaticallyCreateGiftCardRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$AutomaticallyCreateGiftCardRequestImpl(
          giftCard: json['gift_card'] == null
              ? null
              : GiftCard.fromJson(json['gift_card'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$AutomaticallyCreateGiftCardRequestImplToJson(
    _$AutomaticallyCreateGiftCardRequestImpl instance) {
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
    );

Map<String, dynamic> _$$GiftCardImplToJson(_$GiftCardImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('initial_value', instance.initialValue);
  return val;
}
