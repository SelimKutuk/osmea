// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_item_to_location_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InventoryItemToLocationRequestImpl
    _$$InventoryItemToLocationRequestImplFromJson(Map<String, dynamic> json) =>
        _$InventoryItemToLocationRequestImpl(
          locationId: (json['location_id'] as num?)?.toInt(),
          inventoryItemId: (json['inventory_item_id'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$InventoryItemToLocationRequestImplToJson(
    _$InventoryItemToLocationRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('location_id', instance.locationId);
  writeNotNull('inventory_item_id', instance.inventoryItemId);
  return val;
}
