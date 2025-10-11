// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_tax_class_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateTaxClassRequestImpl _$$CreateTaxClassRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateTaxClassRequestImpl(
      slug: json['slug'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$CreateTaxClassRequestImplToJson(
    _$CreateTaxClassRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('slug', instance.slug);
  writeNotNull('name', instance.name);
  return val;
}
