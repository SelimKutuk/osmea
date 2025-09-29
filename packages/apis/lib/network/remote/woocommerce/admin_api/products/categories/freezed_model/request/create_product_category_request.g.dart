// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product_category_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateProductCategoryRequestImpl _$$CreateProductCategoryRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateProductCategoryRequestImpl(
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      parent: (json['parent'] as num?)?.toInt(),
      description: json['description'] as String?,
      display: json['display'] as String?,
    );

Map<String, dynamic> _$$CreateProductCategoryRequestImplToJson(
    _$CreateProductCategoryRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('slug', instance.slug);
  writeNotNull('parent', instance.parent);
  writeNotNull('description', instance.description);
  writeNotNull('display', instance.display);
  return val;
}
