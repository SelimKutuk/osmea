// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updates_gift_card_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdatesGiftCardRequestImpl _$$UpdatesGiftCardRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatesGiftCardRequestImpl(
      giftCard:
          GiftCardUpdate.fromJson(json['gift_card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdatesGiftCardRequestImplToJson(
        _$UpdatesGiftCardRequestImpl instance) =>
    <String, dynamic>{
      'gift_card': instance.giftCard.toJson(),
    };

_$GiftCardUpdateImpl _$$GiftCardUpdateImplFromJson(Map<String, dynamic> json) =>
    _$GiftCardUpdateImpl(
      note: json['note'] as String?,
      templateSuffix: json['template_suffix'] as String?,
      expiresOn: json['expires_on'] as String?,
    );

Map<String, dynamic> _$$GiftCardUpdateImplToJson(
    _$GiftCardUpdateImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('note', instance.note);
  writeNotNull('template_suffix', instance.templateSuffix);
  writeNotNull('expires_on', instance.expiresOn);
  return val;
}
