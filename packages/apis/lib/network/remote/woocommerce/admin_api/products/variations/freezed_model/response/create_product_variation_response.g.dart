// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product_variation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateProductVariationResponseImpl
    _$$CreateProductVariationResponseImplFromJson(Map<String, dynamic> json) =>
        _$CreateProductVariationResponseImpl(
          id: (json['id'] as num?)?.toInt(),
          type: json['type'] as String?,
          dateCreated: json['date_created'] as String?,
          dateCreatedGmt: json['date_created_gmt'] as String?,
          dateModified: json['date_modified'] as String?,
          dateModifiedGmt: json['date_modified_gmt'] as String?,
          description: json['description'] as String?,
          permalink: json['permalink'] as String?,
          sku: json['sku'] as String?,
          globalUniqueId: json['global_unique_id'] as String?,
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
          lowStockAmount: json['low_stock_amount'],
          weight: json['weight'] as String?,
          dimensions: json['dimensions'] == null
              ? null
              : Dimensions.fromJson(json['dimensions'] as Map<String, dynamic>),
          shippingClass: json['shipping_class'] as String?,
          shippingClassId: (json['shipping_class_id'] as num?)?.toInt(),
          image: json['image'],
          attributes: json['attributes'] as List<dynamic>?,
          menuOrder: (json['menu_order'] as num?)?.toInt(),
          metaData: json['meta_data'] as List<dynamic>?,
          name: json['name'] as String?,
          parentId: (json['parent_id'] as num?)?.toInt(),
          links: json['_links'] == null
              ? null
              : Links.fromJson(json['_links'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateProductVariationResponseImplToJson(
    _$CreateProductVariationResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('type', instance.type);
  writeNotNull('date_created', instance.dateCreated);
  writeNotNull('date_created_gmt', instance.dateCreatedGmt);
  writeNotNull('date_modified', instance.dateModified);
  writeNotNull('date_modified_gmt', instance.dateModifiedGmt);
  writeNotNull('description', instance.description);
  writeNotNull('permalink', instance.permalink);
  writeNotNull('sku', instance.sku);
  writeNotNull('global_unique_id', instance.globalUniqueId);
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
  writeNotNull('low_stock_amount', instance.lowStockAmount);
  writeNotNull('weight', instance.weight);
  writeNotNull('dimensions', instance.dimensions?.toJson());
  writeNotNull('shipping_class', instance.shippingClass);
  writeNotNull('shipping_class_id', instance.shippingClassId);
  writeNotNull('image', instance.image);
  writeNotNull('attributes', instance.attributes);
  writeNotNull('menu_order', instance.menuOrder);
  writeNotNull('meta_data', instance.metaData);
  writeNotNull('name', instance.name);
  writeNotNull('parent_id', instance.parentId);
  writeNotNull('_links', instance.links?.toJson());
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

_$LinksImpl _$$LinksImplFromJson(Map<String, dynamic> json) => _$LinksImpl(
      self: (json['self'] as List<dynamic>?)
          ?.map((e) => Self.fromJson(e as Map<String, dynamic>))
          .toList(),
      collection: (json['collection'] as List<dynamic>?)
          ?.map((e) => Collection.fromJson(e as Map<String, dynamic>))
          .toList(),
      up: (json['up'] as List<dynamic>?)
          ?.map((e) => Collection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LinksImplToJson(_$LinksImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('self', instance.self?.map((e) => e.toJson()).toList());
  writeNotNull(
      'collection', instance.collection?.map((e) => e.toJson()).toList());
  writeNotNull('up', instance.up?.map((e) => e.toJson()).toList());
  return val;
}

_$CollectionImpl _$$CollectionImplFromJson(Map<String, dynamic> json) =>
    _$CollectionImpl(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$$CollectionImplToJson(_$CollectionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}

_$SelfImpl _$$SelfImplFromJson(Map<String, dynamic> json) => _$SelfImpl(
      href: json['href'] as String?,
      targetHints: json['targetHints'] == null
          ? null
          : TargetHints.fromJson(json['targetHints'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SelfImplToJson(_$SelfImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  writeNotNull('targetHints', instance.targetHints?.toJson());
  return val;
}

_$TargetHintsImpl _$$TargetHintsImplFromJson(Map<String, dynamic> json) =>
    _$TargetHintsImpl(
      allow:
          (json['allow'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$TargetHintsImplToJson(_$TargetHintsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('allow', instance.allow);
  return val;
}
