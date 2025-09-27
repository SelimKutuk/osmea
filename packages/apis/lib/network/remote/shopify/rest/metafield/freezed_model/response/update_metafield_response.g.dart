// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_metafield_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateMetafieldResponseImpl _$$UpdateMetafieldResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateMetafieldResponseImpl(
      metafield: json['metafield'] == null
          ? null
          : Metafield.fromJson(json['metafield'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateMetafieldResponseImplToJson(
    _$UpdateMetafieldResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metafield', instance.metafield?.toJson());
  return val;
}

_$MetafieldImpl _$$MetafieldImplFromJson(Map<String, dynamic> json) =>
    _$MetafieldImpl(
      value: json['value'] as String?,
      ownerId: (json['owner_id'] as num?)?.toInt(),
      namespace: json['namespace'] as String?,
      key: json['key'] as String?,
      id: (json['id'] as num?)?.toInt(),
      description: json['description'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      ownerResource: json['owner_resource'] as String?,
      type: json['type'] as String?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
    );

Map<String, dynamic> _$$MetafieldImplToJson(_$MetafieldImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('value', instance.value);
  writeNotNull('owner_id', instance.ownerId);
  writeNotNull('namespace', instance.namespace);
  writeNotNull('key', instance.key);
  writeNotNull('id', instance.id);
  writeNotNull('description', instance.description);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('owner_resource', instance.ownerResource);
  writeNotNull('type', instance.type);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  return val;
}
