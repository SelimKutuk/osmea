// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_webhook_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateWebhookRequestImpl _$$CreateWebhookRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateWebhookRequestImpl(
      name: json['name'] as String?,
      status: json['status'] as String?,
      topic: json['topic'] as String?,
      resource: json['resource'] as String?,
      event: json['event'] as String?,
      hooks:
          (json['hooks'] as List<dynamic>?)?.map((e) => e as String).toList(),
      deliveryUrl: json['delivery_url'] as String?,
    );

Map<String, dynamic> _$$CreateWebhookRequestImplToJson(
    _$CreateWebhookRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('status', instance.status);
  writeNotNull('topic', instance.topic);
  writeNotNull('resource', instance.resource);
  writeNotNull('event', instance.event);
  writeNotNull('hooks', instance.hooks);
  writeNotNull('delivery_url', instance.deliveryUrl);
  return val;
}
