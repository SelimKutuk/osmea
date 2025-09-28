// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_new_gift_card_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateNewGiftCardResponseImpl _$$CreateNewGiftCardResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateNewGiftCardResponseImpl(
      giftCard: json['gift_card'] == null
          ? null
          : GiftCard.fromJson(json['gift_card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateNewGiftCardResponseImplToJson(
    _$CreateNewGiftCardResponseImpl instance) {
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
      balance: json['balance'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      currency: json['currency'] as String?,
      initialValue: json['initial_value'] as String?,
      disabledAt: json['disabled_at'],
      lineItemId: json['line_item_id'],
      apiClientId: (json['api_client_id'] as num?)?.toInt(),
      userId: json['user_id'],
      customerId: json['customer_id'],
      note: json['note'] as String?,
      expiresOn: json['expires_on'],
      templateSuffix: json['template_suffix'],
      lastCharacters: json['last_characters'] as String?,
      orderId: json['order_id'],
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$GiftCardImplToJson(_$GiftCardImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('balance', instance.balance);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('currency', instance.currency);
  writeNotNull('initial_value', instance.initialValue);
  writeNotNull('disabled_at', instance.disabledAt);
  writeNotNull('line_item_id', instance.lineItemId);
  writeNotNull('api_client_id', instance.apiClientId);
  writeNotNull('user_id', instance.userId);
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('note', instance.note);
  writeNotNull('expires_on', instance.expiresOn);
  writeNotNull('template_suffix', instance.templateSuffix);
  writeNotNull('last_characters', instance.lastCharacters);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('code', instance.code);
  return val;
}
