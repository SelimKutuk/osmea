// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieves_single_product_variant_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrievesSingleProductVariantResponseImpl
    _$$RetrievesSingleProductVariantResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$RetrievesSingleProductVariantResponseImpl(
          variant: json['variant'] == null
              ? null
              : SingleProductVariantResponse.fromJson(
                  json['variant'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$RetrievesSingleProductVariantResponseImplToJson(
    _$RetrievesSingleProductVariantResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('variant', instance.variant?.toJson());
  return val;
}

_$SingleProductVariantResponseImpl _$$SingleProductVariantResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SingleProductVariantResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      title: json['title'] as String?,
      price: json['price'] as String?,
      sku: json['sku'] as String?,
      position: (json['position'] as num?)?.toInt(),
      inventoryPolicy: json['inventory_policy'] as String?,
      compareAtPrice: json['compare_at_price'] as String?,
      fulfillmentService: json['fulfillment_service'] as String?,
      inventoryManagement: json['inventory_management'] as String?,
      option1: json['option1'] as String?,
      option2: json['option2'] as String?,
      option3: json['option3'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      taxable: json['taxable'] as bool?,
      barcode: json['barcode'] as String?,
      grams: (json['grams'] as num?)?.toInt(),
      imageId: (json['image_id'] as num?)?.toInt(),
      weight: (json['weight'] as num?)?.toDouble(),
      weightUnit: json['weight_unit'] as String?,
      inventoryItemId: (json['inventory_item_id'] as num?)?.toInt(),
      inventoryQuantity: (json['inventory_quantity'] as num?)?.toInt(),
      oldInventoryQuantity: (json['old_inventory_quantity'] as num?)?.toInt(),
      requiresShipping: json['requires_shipping'] as bool?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
      presentmentPrices: (json['presentment_prices'] as List<dynamic>?)
          ?.map((e) => SinglePresentmentPriceResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SingleProductVariantResponseImplToJson(
    _$SingleProductVariantResponseImpl instance) {
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
  writeNotNull('sku', instance.sku);
  writeNotNull('position', instance.position);
  writeNotNull('inventory_policy', instance.inventoryPolicy);
  writeNotNull('compare_at_price', instance.compareAtPrice);
  writeNotNull('fulfillment_service', instance.fulfillmentService);
  writeNotNull('inventory_management', instance.inventoryManagement);
  writeNotNull('option1', instance.option1);
  writeNotNull('option2', instance.option2);
  writeNotNull('option3', instance.option3);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('taxable', instance.taxable);
  writeNotNull('barcode', instance.barcode);
  writeNotNull('grams', instance.grams);
  writeNotNull('image_id', instance.imageId);
  writeNotNull('weight', instance.weight);
  writeNotNull('weight_unit', instance.weightUnit);
  writeNotNull('inventory_item_id', instance.inventoryItemId);
  writeNotNull('inventory_quantity', instance.inventoryQuantity);
  writeNotNull('old_inventory_quantity', instance.oldInventoryQuantity);
  writeNotNull('requires_shipping', instance.requiresShipping);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull('presentment_prices',
      instance.presentmentPrices?.map((e) => e.toJson()).toList());
  return val;
}

_$SinglePresentmentPriceResponseImpl
    _$$SinglePresentmentPriceResponseImplFromJson(Map<String, dynamic> json) =>
        _$SinglePresentmentPriceResponseImpl(
          price: json['price'] == null
              ? null
              : SingleMoneyResponse.fromJson(
                  json['price'] as Map<String, dynamic>),
          compareAtPrice: json['compare_at_price'] == null
              ? null
              : SingleMoneyResponse.fromJson(
                  json['compare_at_price'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SinglePresentmentPriceResponseImplToJson(
    _$SinglePresentmentPriceResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('price', instance.price?.toJson());
  writeNotNull('compare_at_price', instance.compareAtPrice?.toJson());
  return val;
}

_$SingleMoneyResponseImpl _$$SingleMoneyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SingleMoneyResponseImpl(
      amount: json['amount'] as String?,
      currencyCode: json['currency_code'] as String?,
    );

Map<String, dynamic> _$$SingleMoneyResponseImplToJson(
    _$SingleMoneyResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount);
  writeNotNull('currency_code', instance.currencyCode);
  return val;
}
