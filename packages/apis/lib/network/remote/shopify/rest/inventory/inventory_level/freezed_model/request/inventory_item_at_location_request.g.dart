// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_item_at_location_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InventoryItemAtLocationRequestImpl
    _$$InventoryItemAtLocationRequestImplFromJson(Map<String, dynamic> json) =>
        _$InventoryItemAtLocationRequestImpl(
          locationId: (json['location_id'] as num?)?.toInt(),
          inventoryItemId: (json['inventory_item_id'] as num?)?.toInt(),
          availableAdjustment: (json['available_adjustment'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$InventoryItemAtLocationRequestImplToJson(
    _$InventoryItemAtLocationRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('location_id', instance.locationId);
  writeNotNull('inventory_item_id', instance.inventoryItemId);
  writeNotNull('available_adjustment', instance.availableAdjustment);
  return val;
}
