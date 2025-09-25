// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product_attribute_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateProductAttributeRequestImpl
    _$$CreateProductAttributeRequestImplFromJson(Map<String, dynamic> json) =>
        _$CreateProductAttributeRequestImpl(
          name: json['name'] as String?,
          slug: json['slug'] as String?,
          type: json['type'] as String?,
          orderBy: json['order_by'] as String?,
          hasArchives: json['has_archives'] as bool?,
        );

Map<String, dynamic> _$$CreateProductAttributeRequestImplToJson(
    _$CreateProductAttributeRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('slug', instance.slug);
  writeNotNull('type', instance.type);
  writeNotNull('order_by', instance.orderBy);
  writeNotNull('has_archives', instance.hasArchives);
  return val;
}
