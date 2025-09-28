// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateProductRequestImpl _$$CreateProductRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateProductRequestImpl(
      name: json['name'] as String?,
      type: json['type'] as String?,
      regularPrice: json['regular_price'] as String?,
      description: json['description'] as String?,
      shortDescription: json['short_description'] as String?,
      sku: json['sku'] as String?,
      manageStock: json['manage_stock'] as bool?,
      stockStatus: json['stock_status'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$CreateProductRequestImplToJson(
    _$CreateProductRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('type', instance.type);
  writeNotNull('regular_price', instance.regularPrice);
  writeNotNull('description', instance.description);
  writeNotNull('short_description', instance.shortDescription);
  writeNotNull('sku', instance.sku);
  writeNotNull('manage_stock', instance.manageStock);
  writeNotNull('stock_status', instance.stockStatus);
  writeNotNull('status', instance.status);
  return val;
}
