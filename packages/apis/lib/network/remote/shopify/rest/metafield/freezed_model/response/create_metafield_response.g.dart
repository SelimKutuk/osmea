// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_metafield_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateMetafieldResponseImpl _$$CreateMetafieldResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateMetafieldResponseImpl(
      metafield: json['metafield'] == null
          ? null
          : Metafield.fromJson(json['metafield'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateMetafieldResponseImplToJson(
    _$CreateMetafieldResponseImpl instance) {
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
      id: (json['id'] as num?)?.toInt(),
      namespace: json['namespace'] as String?,
      key: json['key'] as String?,
      value: json['value'] as String?,
      description: json['description'],
      ownerId: (json['owner_id'] as num?)?.toInt(),
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

  writeNotNull('id', instance.id);
  writeNotNull('namespace', instance.namespace);
  writeNotNull('key', instance.key);
  writeNotNull('value', instance.value);
  writeNotNull('description', instance.description);
  writeNotNull('owner_id', instance.ownerId);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('owner_resource', instance.ownerResource);
  writeNotNull('type', instance.type);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  return val;
}
