// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_default_product_variant_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateDefaultProductVariantRequestImpl
    _$$CreateDefaultProductVariantRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateDefaultProductVariantRequestImpl(
          product: json['product'] == null
              ? null
              : Product.fromJson(json['product'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateDefaultProductVariantRequestImplToJson(
    _$CreateDefaultProductVariantRequestImpl instance) {
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
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
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
  writeNotNull('tags', instance.tags);
  return val;
}
