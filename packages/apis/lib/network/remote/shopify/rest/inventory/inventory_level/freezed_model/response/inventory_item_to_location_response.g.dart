// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_item_to_location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InventoryItemToLocationResponseImpl
    _$$InventoryItemToLocationResponseImplFromJson(Map<String, dynamic> json) =>
        _$InventoryItemToLocationResponseImpl(
          inventoryLevel: json['inventory_level'] == null
              ? null
              : InventoryLevel.fromJson(
                  json['inventory_level'] as Map<String, dynamic>),
          errors: (json['errors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$$InventoryItemToLocationResponseImplToJson(
    _$InventoryItemToLocationResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('inventory_level', instance.inventoryLevel?.toJson());
  writeNotNull('errors', instance.errors);
  return val;
}

_$InventoryLevelImpl _$$InventoryLevelImplFromJson(Map<String, dynamic> json) =>
    _$InventoryLevelImpl(
      inventoryItemId: (json['inventory_item_id'] as num?)?.toInt(),
      locationId: (json['location_id'] as num?)?.toInt(),
      available: (json['available'] as num?)?.toInt(),
      updatedAt: json['updated_at'] as String?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
    );

Map<String, dynamic> _$$InventoryLevelImplToJson(
    _$InventoryLevelImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('inventory_item_id', instance.inventoryItemId);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('available', instance.available);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  return val;
}
