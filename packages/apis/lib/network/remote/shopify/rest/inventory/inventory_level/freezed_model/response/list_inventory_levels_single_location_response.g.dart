// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_inventory_levels_single_location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListInventoryLevelsSingleLocationResponseImpl
    _$$ListInventoryLevelsSingleLocationResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$ListInventoryLevelsSingleLocationResponseImpl(
          inventoryLevels: (json['inventory_levels'] as List<dynamic>?)
              ?.map((e) => InventoryLevel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$ListInventoryLevelsSingleLocationResponseImplToJson(
    _$ListInventoryLevelsSingleLocationResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('inventory_levels',
      instance.inventoryLevels?.map((e) => e.toJson()).toList());
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
