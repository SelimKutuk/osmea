// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_update_webhooks_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BatchUpdateWebhooksRequestImpl _$$BatchUpdateWebhooksRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$BatchUpdateWebhooksRequestImpl(
      creat: (json['creat'] as List<dynamic>?)
          ?.map((e) => Creat.fromJson(e as Map<String, dynamic>))
          .toList(),
      update: (json['update'] as List<dynamic>?)
          ?.map((e) => Update.fromJson(e as Map<String, dynamic>))
          .toList(),
      delete: (json['delete'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$BatchUpdateWebhooksRequestImplToJson(
    _$BatchUpdateWebhooksRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('creat', instance.creat?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete);
  return val;
}

_$CreatImpl _$$CreatImplFromJson(Map<String, dynamic> json) => _$CreatImpl(
      name: json['name'] as String?,
      status: json['status'] as String?,
      topic: json['topic'] as String?,
      resource: json['resource'] as String?,
      event: json['event'] as String?,
      hooks:
          (json['hooks'] as List<dynamic>?)?.map((e) => e as String).toList(),
      deliveryUrl: json['delivery_url'] as String?,
    );

Map<String, dynamic> _$$CreatImplToJson(_$CreatImpl instance) {
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

_$UpdateImpl _$$UpdateImplFromJson(Map<String, dynamic> json) => _$UpdateImpl(
      id: (json['id'] as num?)?.toInt(),
      status: json['status'] as String?,
      deliveryUrl: json['delivery_url'] as String?,
    );

Map<String, dynamic> _$$UpdateImplToJson(_$UpdateImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('status', instance.status);
  writeNotNull('delivery_url', instance.deliveryUrl);
  return val;
}
