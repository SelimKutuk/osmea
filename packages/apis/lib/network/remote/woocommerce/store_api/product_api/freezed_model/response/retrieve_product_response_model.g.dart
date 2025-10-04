// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_product_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrieveProductResponseModelImpl _$$RetrieveProductResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RetrieveProductResponseModelImpl(
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
      images: json['images'] as List<dynamic>?,
      categories: json['categories'] as List<dynamic>?,
      tags: json['tags'] as List<dynamic>?,
      brands: json['brands'] as List<dynamic>?,
      attributes: json['attributes'] as List<dynamic>?,
      variations: json['variations'] as List<dynamic>?,
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

Map<String, dynamic> _$$RetrieveProductResponseModelImplToJson(
        _$RetrieveProductResponseModelImpl instance) =>
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
      if (instance.images case final value?) 'images': value,
      if (instance.categories case final value?) 'categories': value,
      if (instance.tags case final value?) 'tags': value,
      if (instance.brands case final value?) 'brands': value,
      if (instance.attributes case final value?) 'attributes': value,
      if (instance.variations case final value?) 'variations': value,
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

_$ExtensionsImpl _$$ExtensionsImplFromJson(Map<String, dynamic> json) =>
    _$ExtensionsImpl();

Map<String, dynamic> _$$ExtensionsImplToJson(_$ExtensionsImpl instance) =>
    <String, dynamic>{};

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
