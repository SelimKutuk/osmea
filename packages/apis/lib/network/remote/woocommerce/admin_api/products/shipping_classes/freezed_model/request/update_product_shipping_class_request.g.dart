// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_product_shipping_class_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateProductShippingClassRequestImpl
    _$$UpdateProductShippingClassRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$UpdateProductShippingClassRequestImpl(
          name: json['name'] as String?,
          slug: json['slug'] as String?,
          description: json['description'] as String?,
        );

Map<String, dynamic> _$$UpdateProductShippingClassRequestImplToJson(
    _$UpdateProductShippingClassRequestImpl instance) {
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
