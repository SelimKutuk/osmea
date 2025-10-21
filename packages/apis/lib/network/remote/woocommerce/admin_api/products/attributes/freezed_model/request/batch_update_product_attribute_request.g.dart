// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_update_product_attribute_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BatchUpdateProductAttributeRequestImpl
    _$$BatchUpdateProductAttributeRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$BatchUpdateProductAttributeRequestImpl(
          creat: (json['creat'] as List<dynamic>?)
              ?.map((e) => Creat.fromJson(e as Map<String, dynamic>))
              .toList(),
          update: (json['update'] as List<dynamic>?)
              ?.map((e) => Update.fromJson(e as Map<String, dynamic>))
              .toList(),
          delete: (json['delete'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList(),
        );

Map<String, dynamic> _$$BatchUpdateProductAttributeRequestImplToJson(
    _$BatchUpdateProductAttributeRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('creat', instance.creat?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete);
  return val;
}

_$CreatImpl _$$CreatImplFromJson(Map<String, dynamic> json) => _$CreatImpl(
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      type: json['type'] as String?,
      orderBy: json['order_by'] as String?,
      hasArchives: json['has_archives'] as bool?,
    );

Map<String, dynamic> _$$CreatImplToJson(_$CreatImpl instance) {
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

_$UpdateImpl _$$UpdateImplFromJson(Map<String, dynamic> json) => _$UpdateImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      type: json['type'] as String?,
      orderBy: json['order_by'] as String?,
      hasArchives: json['has_archives'] as bool?,
    );

Map<String, dynamic> _$$UpdateImplToJson(_$UpdateImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('slug', instance.slug);
  writeNotNull('type', instance.type);
  writeNotNull('order_by', instance.orderBy);
  writeNotNull('has_archives', instance.hasArchives);
  return val;
}
