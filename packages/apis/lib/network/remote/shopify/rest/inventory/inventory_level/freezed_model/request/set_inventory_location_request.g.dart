// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_inventory_location_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetInventoryLocationRequestImpl _$$SetInventoryLocationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SetInventoryLocationRequestImpl(
      locationId: (json['location_id'] as num?)?.toInt(),
      inventoryItemId: (json['inventory_item_id'] as num?)?.toInt(),
      available: (json['available'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SetInventoryLocationRequestImplToJson(
    _$SetInventoryLocationRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('location_id', instance.locationId);
  writeNotNull('inventory_item_id', instance.inventoryItemId);
  writeNotNull('available', instance.available);
  return val;
}
