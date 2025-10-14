// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_belonging_to_collection_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductsBelongingToCollectionResponseImpl
    _$$ProductsBelongingToCollectionResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$ProductsBelongingToCollectionResponseImpl(
          products: (json['products'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$ProductsBelongingToCollectionResponseImplToJson(
    _$ProductsBelongingToCollectionResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('products', instance.products?.map((e) => e.toJson()).toList());
  return val;
}

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      bodyHtml: json['body_html'] as String?,
      vendor: json['vendor'] as String?,
      productType: json['product_type'] as String?,
      createdAt: json['created_at'] as String?,
      handle: json['handle'] as String?,
      updatedAt: json['updated_at'] as String?,
      publishedAt: json['published_at'],
      templateSuffix: json['template_suffix'],
      publishedScope: json['published_scope'] as String?,
      tags: json['tags'] as String?,
      status: json['status'] as String?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => Option.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: json['image'] == null
          ? null
          : Image.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('body_html', instance.bodyHtml);
  writeNotNull('vendor', instance.vendor);
  writeNotNull('product_type', instance.productType);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('handle', instance.handle);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('published_at', instance.publishedAt);
  writeNotNull('template_suffix', instance.templateSuffix);
  writeNotNull('published_scope', instance.publishedScope);
  writeNotNull('tags', instance.tags);
  writeNotNull('status', instance.status);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull('options', instance.options?.map((e) => e.toJson()).toList());
  writeNotNull('images', instance.images?.map((e) => e.toJson()).toList());
  writeNotNull('image', instance.image?.toJson());
  return val;
}

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      id: (json['id'] as num?)?.toInt(),
      alt: json['alt'],
      position: (json['position'] as num?)?.toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      src: json['src'] as String?,
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('alt', instance.alt);
  writeNotNull('position', instance.position);
  writeNotNull('product_id', instance.productId);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  writeNotNull('src', instance.src);
  return val;
}

_$OptionImpl _$$OptionImplFromJson(Map<String, dynamic> json) => _$OptionImpl(
      id: (json['id'] as num?)?.toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      position: (json['position'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OptionImplToJson(_$OptionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('product_id', instance.productId);
  writeNotNull('name', instance.name);
  writeNotNull('position', instance.position);
  return val;
}
