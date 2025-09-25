// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_inventory_item_unit_cost_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateInventoryItemUnitCostRequestImpl
    _$$UpdateInventoryItemUnitCostRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$UpdateInventoryItemUnitCostRequestImpl(
          inventoryItem: json['inventory_item'] == null
              ? null
              : InventoryItem.fromJson(
                  json['inventory_item'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$UpdateInventoryItemUnitCostRequestImplToJson(
    _$UpdateInventoryItemUnitCostRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('inventory_item', instance.inventoryItem?.toJson());
  return val;
}

_$InventoryItemImpl _$$InventoryItemImplFromJson(Map<String, dynamic> json) =>
    _$InventoryItemImpl(
      id: (json['id'] as num?)?.toInt(),
      cost: json['cost'] as String?,
    );

Map<String, dynamic> _$$InventoryItemImplToJson(_$InventoryItemImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('cost', instance.cost);
  return val;
}
