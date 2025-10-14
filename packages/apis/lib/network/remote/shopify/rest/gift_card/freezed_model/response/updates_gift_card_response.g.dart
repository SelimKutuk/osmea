// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updates_gift_card_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdatesGiftCardResponseImpl _$$UpdatesGiftCardResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatesGiftCardResponseImpl(
      giftCard: json['gift_card'] == null
          ? null
          : GiftCard.fromJson(json['gift_card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdatesGiftCardResponseImplToJson(
    _$UpdatesGiftCardResponseImpl instance) {
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
      templateSuffix: json['template_suffix'] as String?,
      initialValue: json['initial_value'] as String?,
      balance: json['balance'] as String?,
      id: (json['id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      currency: json['currency'] as String?,
      disabledAt: json['disabled_at'] as String?,
      lineItemId: json['line_item_id'],
      apiClientId: (json['api_client_id'] as num?)?.toInt(),
      userId: json['user_id'],
      customerId: json['customer_id'],
      expiresOn: json['expires_on'],
      lastCharacters: json['last_characters'] as String?,
      orderId: json['order_id'],
    );

Map<String, dynamic> _$$GiftCardImplToJson(_$GiftCardImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('note', instance.note);
  writeNotNull('template_suffix', instance.templateSuffix);
  writeNotNull('initial_value', instance.initialValue);
  writeNotNull('balance', instance.balance);
  writeNotNull('id', instance.id);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('currency', instance.currency);
  writeNotNull('disabled_at', instance.disabledAt);
  writeNotNull('line_item_id', instance.lineItemId);
  writeNotNull('api_client_id', instance.apiClientId);
  writeNotNull('user_id', instance.userId);
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('expires_on', instance.expiresOn);
  writeNotNull('last_characters', instance.lastCharacters);
  writeNotNull('order_id', instance.orderId);
  return val;
}
