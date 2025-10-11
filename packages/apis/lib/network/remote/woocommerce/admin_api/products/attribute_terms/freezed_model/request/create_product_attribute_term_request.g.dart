// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product_attribute_term_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateProductAttributeTermRequestImpl
    _$$CreateProductAttributeTermRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateProductAttributeTermRequestImpl(
          name: json['name'] as String?,
          slug: json['slug'] as String?,
          description: json['description'] as String?,
          menuOrder: (json['menu_order'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$CreateProductAttributeTermRequestImplToJson(
    _$CreateProductAttributeTermRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('slug', instance.slug);
  writeNotNull('description', instance.description);
  writeNotNull('menu_order', instance.menuOrder);
  return val;
}
