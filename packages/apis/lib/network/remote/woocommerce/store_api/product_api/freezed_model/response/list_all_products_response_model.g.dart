// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_all_products_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListAllProductsResponseModelImpl _$$ListAllProductsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ListAllProductsResponseModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      parent: (json['parent'] as num?)?.toInt(),
      type: json['type'] as String?,
      variation: json['variation'] as String?,
      permalink: json['permalink'] as String?,
      sku: json['sku'] as String?,
      shortDescription: json['short_description'] as String?,
      description: json['description'] as String?,
      onSale: json['on_sale'] as bool?,
      prices: json['prices'] == null
          ? null
          : Prices.fromJson(json['prices'] as Map<String, dynamic>),
      priceHtml: json['price_html'] as String?,
      averageRating: json['average_rating'] as String?,
      reviewCount: (json['review_count'] as num?)?.toInt(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: json['tags'] as List<dynamic>?,
      brands: json['brands'] as List<dynamic>?,
      attributes: (json['attributes'] as List<dynamic>?)
          ?.map((e) => ListAllProductsResponseModelAttribute.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      variations: (json['variations'] as List<dynamic>?)
          ?.map((e) => Variation.fromJson(e as Map<String, dynamic>))
          .toList(),
      groupedProducts: json['grouped_products'] as List<dynamic>?,
      hasOptions: json['has_options'] as bool?,
      isPurchasable: json['is_purchasable'] as bool?,
      isInStock: json['is_in_stock'] as bool?,
      isOnBackorder: json['is_on_backorder'] as bool?,
      lowStockRemaining: json['low_stock_remaining'],
      stockAvailability: json['stock_availability'] == null
          ? null
          : StockAvailability.fromJson(
              json['stock_availability'] as Map<String, dynamic>),
      soldIndividually: json['sold_individually'] as bool?,
      addToCart: json['add_to_cart'] == null
          ? null
          : AddToCart.fromJson(json['add_to_cart'] as Map<String, dynamic>),
      extensions: json['extensions'] == null
          ? null
          : Extensions.fromJson(json['extensions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ListAllProductsResponseModelImplToJson(
        _$ListAllProductsResponseModelImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.slug case final value?) 'slug': value,
      if (instance.parent case final value?) 'parent': value,
      if (instance.type case final value?) 'type': value,
      if (instance.variation case final value?) 'variation': value,
      if (instance.permalink case final value?) 'permalink': value,
      if (instance.sku case final value?) 'sku': value,
      if (instance.shortDescription case final value?)
        'short_description': value,
      if (instance.description case final value?) 'description': value,
      if (instance.onSale case final value?) 'on_sale': value,
      if (instance.prices?.toJson() case final value?) 'prices': value,
      if (instance.priceHtml case final value?) 'price_html': value,
      if (instance.averageRating case final value?) 'average_rating': value,
      if (instance.reviewCount case final value?) 'review_count': value,
      if (instance.images?.map((e) => e.toJson()).toList() case final value?)
        'images': value,
      if (instance.categories?.map((e) => e.toJson()).toList()
          case final value?)
        'categories': value,
      if (instance.tags case final value?) 'tags': value,
      if (instance.brands case final value?) 'brands': value,
      if (instance.attributes?.map((e) => e.toJson()).toList()
          case final value?)
        'attributes': value,
      if (instance.variations?.map((e) => e.toJson()).toList()
          case final value?)
        'variations': value,
      if (instance.groupedProducts case final value?) 'grouped_products': value,
      if (instance.hasOptions case final value?) 'has_options': value,
      if (instance.isPurchasable case final value?) 'is_purchasable': value,
      if (instance.isInStock case final value?) 'is_in_stock': value,
      if (instance.isOnBackorder case final value?) 'is_on_backorder': value,
      if (instance.lowStockRemaining case final value?)
        'low_stock_remaining': value,
      if (instance.stockAvailability?.toJson() case final value?)
        'stock_availability': value,
      if (instance.soldIndividually case final value?)
        'sold_individually': value,
      if (instance.addToCart?.toJson() case final value?) 'add_to_cart': value,
      if (instance.extensions?.toJson() case final value?) 'extensions': value,
    };

_$AddToCartImpl _$$AddToCartImplFromJson(Map<String, dynamic> json) =>
    _$AddToCartImpl(
      text: json['text'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      singleText: json['single_text'] as String?,
      minimum: (json['minimum'] as num?)?.toInt(),
      maximum: (json['maximum'] as num?)?.toInt(),
      multipleOf: (json['multiple_of'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AddToCartImplToJson(_$AddToCartImpl instance) =>
    <String, dynamic>{
      if (instance.text case final value?) 'text': value,
      if (instance.description case final value?) 'description': value,
      if (instance.url case final value?) 'url': value,
      if (instance.singleText case final value?) 'single_text': value,
      if (instance.minimum case final value?) 'minimum': value,
      if (instance.maximum case final value?) 'maximum': value,
      if (instance.multipleOf case final value?) 'multiple_of': value,
    };

_$ListAllProductsResponseModelAttributeImpl
    _$$ListAllProductsResponseModelAttributeImplFromJson(
            Map<String, dynamic> json) =>
        _$ListAllProductsResponseModelAttributeImpl(
          id: (json['id'] as num?)?.toInt(),
          name: $enumDecodeNullable(_$NameEnumMap, json['name']),
          taxonomy: json['taxonomy'] as String?,
          hasVariations: json['has_variations'] as bool?,
          terms: (json['terms'] as List<dynamic>?)
              ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$ListAllProductsResponseModelAttributeImplToJson(
        _$ListAllProductsResponseModelAttributeImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (_$NameEnumMap[instance.name] case final value?) 'name': value,
      if (instance.taxonomy case final value?) 'taxonomy': value,
      if (instance.hasVariations case final value?) 'has_variations': value,
      if (instance.terms?.map((e) => e.toJson()).toList() case final value?)
        'terms': value,
    };

const _$NameEnumMap = {
  Name.BEDEN: 'Beden',
  Name.RENK: 'Renk',
};

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      categoryDefault: json['default'] as bool?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.slug case final value?) 'slug': value,
      if (instance.categoryDefault case final value?) 'default': value,
      if (instance.link case final value?) 'link': value,
    };

_$ExtensionsImpl _$$ExtensionsImplFromJson(Map<String, dynamic> json) =>
    _$ExtensionsImpl();

Map<String, dynamic> _$$ExtensionsImplToJson(_$ExtensionsImpl instance) =>
    <String, dynamic>{};

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      id: (json['id'] as num?)?.toInt(),
      src: json['src'] as String?,
      thumbnail: json['thumbnail'] as String?,
      srcset: json['srcset'] as String?,
      sizes: $enumDecodeNullable(_$SizesEnumMap, json['sizes']),
      name: json['name'] as String?,
      alt: json['alt'] as String?,
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.src case final value?) 'src': value,
      if (instance.thumbnail case final value?) 'thumbnail': value,
      if (instance.srcset case final value?) 'srcset': value,
      if (_$SizesEnumMap[instance.sizes] case final value?) 'sizes': value,
      if (instance.name case final value?) 'name': value,
      if (instance.alt case final value?) 'alt': value,
    };

const _$SizesEnumMap = {
  Sizes.MAX_WIDTH_800_PX_100_VW_800_PX: '(max-width: 800px) 100vw, 800px',
};

_$PricesImpl _$$PricesImplFromJson(Map<String, dynamic> json) => _$PricesImpl(
      price: json['price'] as String?,
      regularPrice: json['regular_price'] as String?,
      salePrice: json['sale_price'] as String?,
      priceRange: json['price_range'],
      currencyCode: json['currency_code'] as String?,
      currencySymbol: json['currency_symbol'] as String?,
      currencyMinorUnit: (json['currency_minor_unit'] as num?)?.toInt(),
      currencyDecimalSeparator: json['currency_decimal_separator'] as String?,
      currencyThousandSeparator: json['currency_thousand_separator'] as String?,
      currencyPrefix: json['currency_prefix'] as String?,
      currencySuffix: json['currency_suffix'] as String?,
    );

Map<String, dynamic> _$$PricesImplToJson(_$PricesImpl instance) =>
    <String, dynamic>{
      if (instance.price case final value?) 'price': value,
      if (instance.regularPrice case final value?) 'regular_price': value,
      if (instance.salePrice case final value?) 'sale_price': value,
      if (instance.priceRange case final value?) 'price_range': value,
      if (instance.currencyCode case final value?) 'currency_code': value,
      if (instance.currencySymbol case final value?) 'currency_symbol': value,
      if (instance.currencyMinorUnit case final value?)
        'currency_minor_unit': value,
      if (instance.currencyDecimalSeparator case final value?)
        'currency_decimal_separator': value,
      if (instance.currencyThousandSeparator case final value?)
        'currency_thousand_separator': value,
      if (instance.currencyPrefix case final value?) 'currency_prefix': value,
      if (instance.currencySuffix case final value?) 'currency_suffix': value,
    };

_$StockAvailabilityImpl _$$StockAvailabilityImplFromJson(
        Map<String, dynamic> json) =>
    _$StockAvailabilityImpl(
      text: json['text'] as String?,
      stockAvailabilityClass: json['class'] as String?,
    );

Map<String, dynamic> _$$StockAvailabilityImplToJson(
        _$StockAvailabilityImpl instance) =>
    <String, dynamic>{
      if (instance.text case final value?) 'text': value,
      if (instance.stockAvailabilityClass case final value?) 'class': value,
    };

_$VariationImpl _$$VariationImplFromJson(Map<String, dynamic> json) =>
    _$VariationImpl(
      id: (json['id'] as num?)?.toInt(),
      attributes: (json['attributes'] as List<dynamic>?)
          ?.map((e) => VariationAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VariationImplToJson(_$VariationImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.attributes?.map((e) => e.toJson()).toList()
          case final value?)
        'attributes': value,
    };

_$VariationAttributeImpl _$$VariationAttributeImplFromJson(
        Map<String, dynamic> json) =>
    _$VariationAttributeImpl(
      name: $enumDecodeNullable(_$NameEnumMap, json['name']),
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$VariationAttributeImplToJson(
        _$VariationAttributeImpl instance) =>
    <String, dynamic>{
      if (_$NameEnumMap[instance.name] case final value?) 'name': value,
      if (instance.value case final value?) 'value': value,
    };
