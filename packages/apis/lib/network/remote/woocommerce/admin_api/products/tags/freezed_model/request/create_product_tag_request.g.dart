// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product_tag_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateProductTagRequestImpl _$$CreateProductTagRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateProductTagRequestImpl(
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$CreateProductTagRequestImplToJson(
    _$CreateProductTagRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('slug', instance.slug);
  writeNotNull('description', instance.description);
  return val;
}
