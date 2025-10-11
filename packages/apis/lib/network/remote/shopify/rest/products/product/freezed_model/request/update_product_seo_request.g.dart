// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_product_seo_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateProductSeoRequestImpl _$$UpdateProductSeoRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateProductSeoRequestImpl(
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateProductSeoRequestImplToJson(
    _$UpdateProductSeoRequestImpl instance) {
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
      metafieldsGlobalTitleTag: json['metafields_global_title_tag'] as String?,
      metafieldsGlobalDescriptionTag:
          json['metafields_global_description_tag'] as String?,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'metafields_global_title_tag', instance.metafieldsGlobalTitleTag);
  writeNotNull('metafields_global_description_tag',
      instance.metafieldsGlobalDescriptionTag);
  return val;
}
