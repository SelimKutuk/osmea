// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_update_product_categories_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BatchUpdateProductCategoriesRequestImpl
    _$$BatchUpdateProductCategoriesRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$BatchUpdateProductCategoriesRequestImpl(
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

Map<String, dynamic> _$$BatchUpdateProductCategoriesRequestImplToJson(
    _$BatchUpdateProductCategoriesRequestImpl instance) {
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
      parent: (json['parent'] as num?)?.toInt(),
      description: json['description'] as String?,
      display: json['display'] as String?,
      menuOrder: (json['menu_order'] as num?)?.toInt(),
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
  writeNotNull('parent', instance.parent);
  writeNotNull('description', instance.description);
  writeNotNull('display', instance.display);
  writeNotNull('menu_order', instance.menuOrder);
  return val;
}

_$UpdateImpl _$$UpdateImplFromJson(Map<String, dynamic> json) => _$UpdateImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      parent: (json['parent'] as num?)?.toInt(),
      description: json['description'] as String?,
      display: json['display'] as String?,
      menuOrder: (json['menu_order'] as num?)?.toInt(),
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
  writeNotNull('parent', instance.parent);
  writeNotNull('description', instance.description);
  writeNotNull('display', instance.display);
  writeNotNull('menu_order', instance.menuOrder);
  return val;
}
