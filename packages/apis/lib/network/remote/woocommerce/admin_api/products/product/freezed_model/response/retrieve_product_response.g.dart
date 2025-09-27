// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrieveProductResponseImpl _$$RetrieveProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RetrieveProductResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      permalink: json['permalink'] as String?,
      dateCreated: json['date_created'] as String?,
      dateCreatedGmt: json['date_created_gmt'] as String?,
      dateModified: json['date_modified'] as String?,
      dateModifiedGmt: json['date_modified_gmt'] as String?,
      type: json['type'] as String?,
      status: json['status'] as String?,
      featured: json['featured'] as bool?,
      catalogVisibility: json['catalog_visibility'] as String?,
      description: json['description'] as String?,
      shortDescription: json['short_description'] as String?,
      sku: json['sku'] as String?,
      price: json['price'] as String?,
      regularPrice: json['regular_price'] as String?,
      salePrice: json['sale_price'] as String?,
      dateOnSaleFrom: json['date_on_sale_from'],
      dateOnSaleFromGmt: json['date_on_sale_from_gmt'],
      dateOnSaleTo: json['date_on_sale_to'],
      dateOnSaleToGmt: json['date_on_sale_to_gmt'],
      onSale: json['on_sale'] as bool?,
      purchasable: json['purchasable'] as bool?,
      totalSales: (json['total_sales'] as num?)?.toInt(),
      virtual: json['virtual'] as bool?,
      downloadable: json['downloadable'] as bool?,
      downloads: json['downloads'] as List<dynamic>?,
      downloadLimit: (json['download_limit'] as num?)?.toInt(),
      downloadExpiry: (json['download_expiry'] as num?)?.toInt(),
      externalUrl: json['external_url'] as String?,
      buttonText: json['button_text'] as String?,
      taxStatus: json['tax_status'] as String?,
      taxClass: json['tax_class'] as String?,
      manageStock: json['manage_stock'] as bool?,
      stockQuantity: json['stock_quantity'],
      backorders: json['backorders'] as String?,
      backordersAllowed: json['backorders_allowed'] as bool?,
      backordered: json['backordered'] as bool?,
      lowStockAmount: json['low_stock_amount'],
      soldIndividually: json['sold_individually'] as bool?,
      weight: json['weight'] as String?,
      dimensions: json['dimensions'] == null
          ? null
          : Dimensions.fromJson(json['dimensions'] as Map<String, dynamic>),
      shippingRequired: json['shipping_required'] as bool?,
      shippingTaxable: json['shipping_taxable'] as bool?,
      shippingClass: json['shipping_class'] as String?,
      shippingClassId: (json['shipping_class_id'] as num?)?.toInt(),
      reviewsAllowed: json['reviews_allowed'] as bool?,
      averageRating: json['average_rating'] as String?,
      ratingCount: (json['rating_count'] as num?)?.toInt(),
      upsellIds: json['upsell_ids'] as List<dynamic>?,
      crossSellIds: json['cross_sell_ids'] as List<dynamic>?,
      parentId: (json['parent_id'] as num?)?.toInt(),
      purchaseNote: json['purchase_note'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      brands: json['brands'] as List<dynamic>?,
      tags: json['tags'] as List<dynamic>?,
      images: json['images'] as List<dynamic>?,
      attributes: json['attributes'] as List<dynamic>?,
      defaultAttributes: json['default_attributes'] as List<dynamic>?,
      variations: json['variations'] as List<dynamic>?,
      groupedProducts: json['grouped_products'] as List<dynamic>?,
      menuOrder: (json['menu_order'] as num?)?.toInt(),
      priceHtml: json['price_html'] as String?,
      relatedIds: (json['related_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      metaData: (json['meta_data'] as List<dynamic>?)
          ?.map((e) => MetaDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      stockStatus: json['stock_status'] as String?,
      hasOptions: json['has_options'] as bool?,
      postPassword: json['post_password'] as String?,
      globalUniqueId: json['global_unique_id'] as String?,
      links: json['_links'] == null
          ? null
          : Links.fromJson(json['_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RetrieveProductResponseImplToJson(
    _$RetrieveProductResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('slug', instance.slug);
  writeNotNull('permalink', instance.permalink);
  writeNotNull('date_created', instance.dateCreated);
  writeNotNull('date_created_gmt', instance.dateCreatedGmt);
  writeNotNull('date_modified', instance.dateModified);
  writeNotNull('date_modified_gmt', instance.dateModifiedGmt);
  writeNotNull('type', instance.type);
  writeNotNull('status', instance.status);
  writeNotNull('featured', instance.featured);
  writeNotNull('catalog_visibility', instance.catalogVisibility);
  writeNotNull('description', instance.description);
  writeNotNull('short_description', instance.shortDescription);
  writeNotNull('sku', instance.sku);
  writeNotNull('price', instance.price);
  writeNotNull('regular_price', instance.regularPrice);
  writeNotNull('sale_price', instance.salePrice);
  writeNotNull('date_on_sale_from', instance.dateOnSaleFrom);
  writeNotNull('date_on_sale_from_gmt', instance.dateOnSaleFromGmt);
  writeNotNull('date_on_sale_to', instance.dateOnSaleTo);
  writeNotNull('date_on_sale_to_gmt', instance.dateOnSaleToGmt);
  writeNotNull('on_sale', instance.onSale);
  writeNotNull('purchasable', instance.purchasable);
  writeNotNull('total_sales', instance.totalSales);
  writeNotNull('virtual', instance.virtual);
  writeNotNull('downloadable', instance.downloadable);
  writeNotNull('downloads', instance.downloads);
  writeNotNull('download_limit', instance.downloadLimit);
  writeNotNull('download_expiry', instance.downloadExpiry);
  writeNotNull('external_url', instance.externalUrl);
  writeNotNull('button_text', instance.buttonText);
  writeNotNull('tax_status', instance.taxStatus);
  writeNotNull('tax_class', instance.taxClass);
  writeNotNull('manage_stock', instance.manageStock);
  writeNotNull('stock_quantity', instance.stockQuantity);
  writeNotNull('backorders', instance.backorders);
  writeNotNull('backorders_allowed', instance.backordersAllowed);
  writeNotNull('backordered', instance.backordered);
  writeNotNull('low_stock_amount', instance.lowStockAmount);
  writeNotNull('sold_individually', instance.soldIndividually);
  writeNotNull('weight', instance.weight);
  writeNotNull('dimensions', instance.dimensions?.toJson());
  writeNotNull('shipping_required', instance.shippingRequired);
  writeNotNull('shipping_taxable', instance.shippingTaxable);
  writeNotNull('shipping_class', instance.shippingClass);
  writeNotNull('shipping_class_id', instance.shippingClassId);
  writeNotNull('reviews_allowed', instance.reviewsAllowed);
  writeNotNull('average_rating', instance.averageRating);
  writeNotNull('rating_count', instance.ratingCount);
  writeNotNull('upsell_ids', instance.upsellIds);
  writeNotNull('cross_sell_ids', instance.crossSellIds);
  writeNotNull('parent_id', instance.parentId);
  writeNotNull('purchase_note', instance.purchaseNote);
  writeNotNull(
      'categories', instance.categories?.map((e) => e.toJson()).toList());
  writeNotNull('brands', instance.brands);
  writeNotNull('tags', instance.tags);
  writeNotNull('images', instance.images);
  writeNotNull('attributes', instance.attributes);
  writeNotNull('default_attributes', instance.defaultAttributes);
  writeNotNull('variations', instance.variations);
  writeNotNull('grouped_products', instance.groupedProducts);
  writeNotNull('menu_order', instance.menuOrder);
  writeNotNull('price_html', instance.priceHtml);
  writeNotNull('related_ids', instance.relatedIds);
  writeNotNull('meta_data', instance.metaData?.map((e) => e.toJson()).toList());
  writeNotNull('stock_status', instance.stockStatus);
  writeNotNull('has_options', instance.hasOptions);
  writeNotNull('post_password', instance.postPassword);
  writeNotNull('global_unique_id', instance.globalUniqueId);
  writeNotNull('_links', instance.links?.toJson());
  return val;
}

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('slug', instance.slug);
  return val;
}

_$DimensionsImpl _$$DimensionsImplFromJson(Map<String, dynamic> json) =>
    _$DimensionsImpl(
      length: json['length'] as String?,
      width: json['width'] as String?,
      height: json['height'] as String?,
    );

Map<String, dynamic> _$$DimensionsImplToJson(_$DimensionsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('length', instance.length);
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  return val;
}

_$LinksImpl _$$LinksImplFromJson(Map<String, dynamic> json) => _$LinksImpl(
      self: (json['self'] as List<dynamic>?)
          ?.map((e) => Self.fromJson(e as Map<String, dynamic>))
          .toList(),
      collection: (json['collection'] as List<dynamic>?)
          ?.map((e) => Collection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LinksImplToJson(_$LinksImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('self', instance.self?.map((e) => e.toJson()).toList());
  writeNotNull(
      'collection', instance.collection?.map((e) => e.toJson()).toList());
  return val;
}

_$CollectionImpl _$$CollectionImplFromJson(Map<String, dynamic> json) =>
    _$CollectionImpl(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$$CollectionImplToJson(_$CollectionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}

_$SelfImpl _$$SelfImplFromJson(Map<String, dynamic> json) => _$SelfImpl(
      href: json['href'] as String?,
      targetHints: json['targetHints'] == null
          ? null
          : TargetHints.fromJson(json['targetHints'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SelfImplToJson(_$SelfImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  writeNotNull('targetHints', instance.targetHints?.toJson());
  return val;
}

_$TargetHintsImpl _$$TargetHintsImplFromJson(Map<String, dynamic> json) =>
    _$TargetHintsImpl(
      allow:
          (json['allow'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$TargetHintsImplToJson(_$TargetHintsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('allow', instance.allow);
  return val;
}

_$MetaDatumImpl _$$MetaDatumImplFromJson(Map<String, dynamic> json) =>
    _$MetaDatumImpl(
      id: (json['id'] as num?)?.toInt(),
      key: json['key'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$MetaDatumImplToJson(_$MetaDatumImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('key', instance.key);
  writeNotNull('value', instance.value);
  return val;
}
