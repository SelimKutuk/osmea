// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_inventory_item_sku_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateInventoryItemSkuResponseImpl
    _$$UpdateInventoryItemSkuResponseImplFromJson(Map<String, dynamic> json) =>
        _$UpdateInventoryItemSkuResponseImpl(
          inventoryItem: json['inventory_item'] == null
              ? null
              : InventoryItem.fromJson(
                  json['inventory_item'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$UpdateInventoryItemSkuResponseImplToJson(
    _$UpdateInventoryItemSkuResponseImpl instance) {
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
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      requiresShipping: json['requires_shipping'] as bool?,
      cost: json['cost'],
      countryCodeOfOrigin: json['country_code_of_origin'],
      provinceCodeOfOrigin: json['province_code_of_origin'],
      harmonizedSystemCode: json['harmonized_system_code'],
      tracked: json['tracked'] as bool?,
      countryHarmonizedSystemCodes:
          json['country_harmonized_system_codes'] as List<dynamic>?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
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
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('requires_shipping', instance.requiresShipping);
  writeNotNull('cost', instance.cost);
  writeNotNull('country_code_of_origin', instance.countryCodeOfOrigin);
  writeNotNull('province_code_of_origin', instance.provinceCodeOfOrigin);
  writeNotNull('harmonized_system_code', instance.harmonizedSystemCode);
  writeNotNull('tracked', instance.tracked);
  writeNotNull(
      'country_harmonized_system_codes', instance.countryHarmonizedSystemCodes);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  return val;
}
