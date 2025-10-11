// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_hidden_product_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShowHiddenProductRequestImpl _$$ShowHiddenProductRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ShowHiddenProductRequestImpl(
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ShowHiddenProductRequestImplToJson(
    _$ShowHiddenProductRequestImpl instance) {
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
      published: json['published'] as bool?,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('published', instance.published);
  return val;
}
