// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_product_attribute_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrieveProductAttributeResponseModelImpl
    _$$RetrieveProductAttributeResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$RetrieveProductAttributeResponseModelImpl(
          id: (json['id'] as num?)?.toInt(),
          name: json['name'] as String?,
          taxonomy: json['taxonomy'] as String?,
          type: json['type'] as String?,
          order: json['order'] as String?,
          hasArchives: json['has_archives'] as bool?,
          count: (json['count'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$RetrieveProductAttributeResponseModelImplToJson(
        _$RetrieveProductAttributeResponseModelImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.taxonomy case final value?) 'taxonomy': value,
      if (instance.type case final value?) 'type': value,
      if (instance.order case final value?) 'order': value,
      if (instance.hasArchives case final value?) 'has_archives': value,
      if (instance.count case final value?) 'count': value,
    };
