// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product_downloaded_image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateProductDownloadedImageResponseImpl
    _$$CreateProductDownloadedImageResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateProductDownloadedImageResponseImpl(
          product: json['product'] == null
              ? null
              : Product.fromJson(json['product'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateProductDownloadedImageResponseImplToJson(
    _$CreateProductDownloadedImageResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product', instance.product?.toJson());
  return val;
}

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      bodyHtml: json['body_html'] as String?,
      vendor: json['vendor'] as String?,
      productType: json['product_type'] as String?,
      createdAt: json['created_at'] as String?,
      handle: json['handle'] as String?,
      updatedAt: json['updated_at'] as String?,
      publishedAt: json['published_at'] as String?,
      templateSuffix: json['template_suffix'],
      publishedScope: json['published_scope'] as String?,
      tags: json['tags'] as String?,
      status: json['status'] as String?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
      variants: (json['variants'] as List<dynamic>?)
          ?.map((e) => Variant.fromJson(e as Map<String, dynamic>))
          .toList(),
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => Option.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: json['images'] as List<dynamic>?,
      image: json['image'],
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('body_html', instance.bodyHtml);
  writeNotNull('vendor', instance.vendor);
  writeNotNull('product_type', instance.productType);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('handle', instance.handle);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('published_at', instance.publishedAt);
  writeNotNull('template_suffix', instance.templateSuffix);
  writeNotNull('published_scope', instance.publishedScope);
  writeNotNull('tags', instance.tags);
  writeNotNull('status', instance.status);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull('variants', instance.variants?.map((e) => e.toJson()).toList());
  writeNotNull('options', instance.options?.map((e) => e.toJson()).toList());
  writeNotNull('images', instance.images);
  writeNotNull('image', instance.image);
  return val;
}

_$OptionImpl _$$OptionImplFromJson(Map<String, dynamic> json) => _$OptionImpl(
      id: (json['id'] as num?)?.toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      position: (json['position'] as num?)?.toInt(),
      values:
          (json['values'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$OptionImplToJson(_$OptionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('product_id', instance.productId);
  writeNotNull('name', instance.name);
  writeNotNull('position', instance.position);
  writeNotNull('values', instance.values);
  return val;
}

_$VariantImpl _$$VariantImplFromJson(Map<String, dynamic> json) =>
    _$VariantImpl(
      id: (json['id'] as num?)?.toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      title: json['title'] as String?,
      price: json['price'] as String?,
      position: (json['position'] as num?)?.toInt(),
      inventoryPolicy: json['inventory_policy'] as String?,
      compareAtPrice: json['compare_at_price'],
      option1: json['option1'] as String?,
      option2: json['option2'],
      option3: json['option3'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      taxable: json['taxable'] as bool?,
      barcode: json['barcode'],
      fulfillmentService: json['fulfillment_service'] as String?,
      grams: (json['grams'] as num?)?.toInt(),
      inventoryManagement: json['inventory_management'],
      requiresShipping: json['requires_shipping'] as bool?,
      sku: json['sku'] as String?,
      weight: (json['weight'] as num?)?.toInt(),
      weightUnit: json['weight_unit'] as String?,
      inventoryItemId: (json['inventory_item_id'] as num?)?.toInt(),
      inventoryQuantity: (json['inventory_quantity'] as num?)?.toInt(),
      oldInventoryQuantity: (json['old_inventory_quantity'] as num?)?.toInt(),
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
      imageId: json['image_id'],
    );

Map<String, dynamic> _$$VariantImplToJson(_$VariantImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('product_id', instance.productId);
  writeNotNull('title', instance.title);
  writeNotNull('price', instance.price);
  writeNotNull('position', instance.position);
  writeNotNull('inventory_policy', instance.inventoryPolicy);
  writeNotNull('compare_at_price', instance.compareAtPrice);
  writeNotNull('option1', instance.option1);
  writeNotNull('option2', instance.option2);
  writeNotNull('option3', instance.option3);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('taxable', instance.taxable);
  writeNotNull('barcode', instance.barcode);
  writeNotNull('fulfillment_service', instance.fulfillmentService);
  writeNotNull('grams', instance.grams);
  writeNotNull('inventory_management', instance.inventoryManagement);
  writeNotNull('requires_shipping', instance.requiresShipping);
  writeNotNull('sku', instance.sku);
  writeNotNull('weight', instance.weight);
  writeNotNull('weight_unit', instance.weightUnit);
  writeNotNull('inventory_item_id', instance.inventoryItemId);
  writeNotNull('inventory_quantity', instance.inventoryQuantity);
  writeNotNull('old_inventory_quantity', instance.oldInventoryQuantity);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull('image_id', instance.imageId);
  return val;
}
