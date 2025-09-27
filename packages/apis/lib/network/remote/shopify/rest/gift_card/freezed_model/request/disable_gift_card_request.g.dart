// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_gift_card_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DisableGiftCardRequestImpl _$$DisableGiftCardRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$DisableGiftCardRequestImpl(
      giftCard: json['gift_card'] == null
          ? null
          : GiftCard.fromJson(json['gift_card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DisableGiftCardRequestImplToJson(
    _$DisableGiftCardRequestImpl instance) {
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
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GiftCardImplToJson(_$GiftCardImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}
