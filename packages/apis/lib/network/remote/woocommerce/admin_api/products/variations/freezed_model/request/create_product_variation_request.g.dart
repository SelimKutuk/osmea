// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product_variation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateProductVariationRequestImpl
    _$$CreateProductVariationRequestImplFromJson(Map<String, dynamic> json) =>
        _$CreateProductVariationRequestImpl(
          description: json['description'] as String?,
          sku: json['sku'] as String?,
          price: json['price'] as String?,
          regularPrice: json['regular_price'] as String?,
          salePrice: json['sale_price'] as String?,
          dateOnSaleFrom: json['date_on_sale_from'],
          dateOnSaleFromGmt: json['date_on_sale_from_gmt'],
          dateOnSaleTo: json['date_on_sale_to'],
          dateOnSaleToGmt: json['date_on_sale_to_gmt'],
          onSale: json['on_sale'] as bool?,
          status: json['status'] as String?,
          purchasable: json['purchasable'] as bool?,
          virtual: json['virtual'] as bool?,
          downloadable: json['downloadable'] as bool?,
          downloads: json['downloads'] as List<dynamic>?,
          downloadLimit: (json['download_limit'] as num?)?.toInt(),
          downloadExpiry: (json['download_expiry'] as num?)?.toInt(),
          taxStatus: json['tax_status'] as String?,
          taxClass: json['tax_class'] as String?,
          manageStock: json['manage_stock'] as bool?,
          stockQuantity: json['stock_quantity'],
          stockStatus: json['stock_status'] as String?,
          backorders: json['backorders'] as String?,
          backordersAllowed: json['backorders_allowed'] as bool?,
          backordered: json['backordered'] as bool?,
          weight: json['weight'] as String?,
          dimensions: json['dimensions'] == null
              ? null
              : Dimensions.fromJson(json['dimensions'] as Map<String, dynamic>),
          shippingClass: json['shipping_class'] as String?,
          shippingClassId: (json['shipping_class_id'] as num?)?.toInt(),
          attributes: (json['attributes'] as List<dynamic>?)
              ?.map((e) => Attribute.fromJson(e as Map<String, dynamic>))
              .toList(),
          menuOrder: (json['menu_order'] as num?)?.toInt(),
          metaData: json['meta_data'] as List<dynamic>?,
        );

Map<String, dynamic> _$$CreateProductVariationRequestImplToJson(
    _$CreateProductVariationRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('sku', instance.sku);
  writeNotNull('price', instance.price);
  writeNotNull('regular_price', instance.regularPrice);
  writeNotNull('sale_price', instance.salePrice);
  writeNotNull('date_on_sale_from', instance.dateOnSaleFrom);
  writeNotNull('date_on_sale_from_gmt', instance.dateOnSaleFromGmt);
  writeNotNull('date_on_sale_to', instance.dateOnSaleTo);
  writeNotNull('date_on_sale_to_gmt', instance.dateOnSaleToGmt);
  writeNotNull('on_sale', instance.onSale);
  writeNotNull('status', instance.status);
  writeNotNull('purchasable', instance.purchasable);
  writeNotNull('virtual', instance.virtual);
  writeNotNull('downloadable', instance.downloadable);
  writeNotNull('downloads', instance.downloads);
  writeNotNull('download_limit', instance.downloadLimit);
  writeNotNull('download_expiry', instance.downloadExpiry);
  writeNotNull('tax_status', instance.taxStatus);
  writeNotNull('tax_class', instance.taxClass);
  writeNotNull('manage_stock', instance.manageStock);
  writeNotNull('stock_quantity', instance.stockQuantity);
  writeNotNull('stock_status', instance.stockStatus);
  writeNotNull('backorders', instance.backorders);
  writeNotNull('backorders_allowed', instance.backordersAllowed);
  writeNotNull('backordered', instance.backordered);
  writeNotNull('weight', instance.weight);
  writeNotNull('dimensions', instance.dimensions?.toJson());
  writeNotNull('shipping_class', instance.shippingClass);
  writeNotNull('shipping_class_id', instance.shippingClassId);
  writeNotNull(
      'attributes', instance.attributes?.map((e) => e.toJson()).toList());
  writeNotNull('menu_order', instance.menuOrder);
  writeNotNull('meta_data', instance.metaData);
  return val;
}

_$AttributeImpl _$$AttributeImplFromJson(Map<String, dynamic> json) =>
    _$AttributeImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      option: json['option'] as String?,
    );

Map<String, dynamic> _$$AttributeImplToJson(_$AttributeImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('option', instance.option);
  return val;
}

_$DimensionsImpl _$$DimensionsImplFromJson(Map<String, dynamic> json) =>
    _$DimensionsImpl(
      length: json['length'] as String?,
      width: json['width'] as String?,
      height: json['height'] as String?,
    );

Map<String, dynamic> _$$DimensionsImplToJson(_$DimensionsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('length', instance.length);
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  return val;
}
