// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_webhooks_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllWebhooksResponseImpl _$$GetAllWebhooksResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAllWebhooksResponseImpl(
      webhooks: (json['webhooks'] as List<dynamic>?)
          ?.map((e) => Webhook.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetAllWebhooksResponseImplToJson(
    _$GetAllWebhooksResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('webhooks', instance.webhooks?.map((e) => e.toJson()).toList());
  return val;
}
