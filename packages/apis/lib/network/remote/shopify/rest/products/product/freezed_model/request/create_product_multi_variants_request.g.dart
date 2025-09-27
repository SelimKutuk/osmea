// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product_multi_variants_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateProductMultiVariantsRequestImpl
    _$$CreateProductMultiVariantsRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateProductMultiVariantsRequestImpl(
          product: json['product'] == null
              ? null
              : Product.fromJson(json['product'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateProductMultiVariantsRequestImplToJson(
    _$CreateProductMultiVariantsRequestImpl instance) {
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
      title: json['title'] as String?,
      bodyHtml: json['body_html'] as String?,
      vendor: json['vendor'] as String?,
      productType: json['product_type'] as String?,
      variants: (json['variants'] as List<dynamic>?)
          ?.map((e) => Variant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('body_html', instance.bodyHtml);
  writeNotNull('vendor', instance.vendor);
  writeNotNull('product_type', instance.productType);
  writeNotNull('variants', instance.variants?.map((e) => e.toJson()).toList());
  return val;
}

_$VariantImpl _$$VariantImplFromJson(Map<String, dynamic> json) =>
    _$VariantImpl(
      option1: json['option1'] as String?,
      price: json['price'] as String?,
      sku: json['sku'] as String?,
    );

Map<String, dynamic> _$$VariantImplToJson(_$VariantImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('option1', instance.option1);
  writeNotNull('price', instance.price);
  writeNotNull('sku', instance.sku);
  return val;
}
