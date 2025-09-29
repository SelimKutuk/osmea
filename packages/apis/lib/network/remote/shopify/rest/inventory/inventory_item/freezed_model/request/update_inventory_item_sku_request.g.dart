// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_inventory_item_sku_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateInventoryItemSkuRequestImpl
    _$$UpdateInventoryItemSkuRequestImplFromJson(Map<String, dynamic> json) =>
        _$UpdateInventoryItemSkuRequestImpl(
          inventoryItem: json['inventory_item'] == null
              ? null
              : InventoryItem.fromJson(
                  json['inventory_item'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$UpdateInventoryItemSkuRequestImplToJson(
    _$UpdateInventoryItemSkuRequestImpl instance) {
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
      sku: json['sku'] as String?,
    );

Map<String, dynamic> _$$InventoryItemImplToJson(_$InventoryItemImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('sku', instance.sku);
  return val;
}
