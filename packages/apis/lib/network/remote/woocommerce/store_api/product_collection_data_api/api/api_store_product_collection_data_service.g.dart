// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_store_product_collection_data_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _StoreProductCollectionDataServiceClient
    implements StoreProductCollectionDataServiceClient {
  _StoreProductCollectionDataServiceClient(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ListProductCollectionDataResponseModel> getProductCollectionData({
    required String apiVersion,
    String? context,
    int? page,
    int? perPage,
    String? search,
    List<int>? exclude,
    List<int>? include,
    int? offset,
    String? order,
    String? orderby,
    bool? hideEmpty,
    int? product,
    String? slug,
    String? attribute,
    String? attributeTerm,
    bool? featured,
    int? category,
    String? categoryOperator,
    int? tag,
    String? tagOperator,
    bool? onSale,
    String? minPrice,
    String? maxPrice,
    String? stockStatus,
    bool? featuredImage,
    int? shippingClass,
    String? shippingClassOperator,
    int? minRating,
    int? maxRating,
    bool? reviewsOnly,
    int? parent,
    List<int>? parentExclude,
    String? type,
    String? sku,
    int? featuredImageId,
    String? catalogVisibility,
    bool? manageStock,
    int? stockQuantity,
    String? backorders,
    bool? soldIndividually,
    String? weight,
    String? dimensions,
    bool? shippingRequired,
    bool? shippingTaxable,
    int? shippingClassId,
    bool? reviewsAllowed,
    String? averageRating,
    int? ratingCount,
    List<int>? relatedIds,
    List<int>? upsellIds,
    List<int>? crossSellIds,
    int? parentId,
    String? purchaseNote,
    List<Map<String, dynamic>>? categories,
    List<Map<String, dynamic>>? tags,
    List<Map<String, dynamic>>? images,
    List<Map<String, dynamic>>? attributes,
    List<Map<String, dynamic>>? defaultAttributes,
    List<Map<String, dynamic>>? variations,
    List<int>? groupedProducts,
    int? menuOrder,
    List<Map<String, dynamic>>? metaData,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'context': context,
      r'page': page,
      r'per_page': perPage,
      r'search': search,
      r'exclude': exclude,
      r'include': include,
      r'offset': offset,
      r'order': order,
      r'orderby': orderby,
      r'hide_empty': hideEmpty,
      r'product': product,
      r'slug': slug,
      r'attribute': attribute,
      r'attribute_term': attributeTerm,
      r'featured': featured,
      r'category': category,
      r'category_operator': categoryOperator,
      r'tag': tag,
      r'tag_operator': tagOperator,
      r'on_sale': onSale,
      r'min_price': minPrice,
      r'max_price': maxPrice,
      r'stock_status': stockStatus,
      r'featured_image': featuredImage,
      r'shipping_class': shippingClass,
      r'shipping_class_operator': shippingClassOperator,
      r'min_rating': minRating,
      r'max_rating': maxRating,
      r'reviews_only': reviewsOnly,
      r'parent': parent,
      r'parent_exclude': parentExclude,
      r'type': type,
      r'sku': sku,
      r'featured_image_id': featuredImageId,
      r'catalog_visibility': catalogVisibility,
      r'manage_stock': manageStock,
      r'stock_quantity': stockQuantity,
      r'backorders': backorders,
      r'sold_individually': soldIndividually,
      r'weight': weight,
      r'dimensions': dimensions,
      r'shipping_required': shippingRequired,
      r'shipping_taxable': shippingTaxable,
      r'shipping_class_id': shippingClassId,
      r'reviews_allowed': reviewsAllowed,
      r'average_rating': averageRating,
      r'rating_count': ratingCount,
      r'related_ids': relatedIds,
      r'upsell_ids': upsellIds,
      r'cross_sell_ids': crossSellIds,
      r'parent_id': parentId,
      r'purchase_note': purchaseNote,
      r'categories': categories,
      r'tags': tags,
      r'images': images,
      r'attributes': attributes,
      r'default_attributes': defaultAttributes,
      r'variations': variations,
      r'grouped_products': groupedProducts,
      r'menu_order': menuOrder,
      r'meta_data': metaData,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ListProductCollectionDataResponseModel>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/wp-json/wc/store/${apiVersion}/products/collection-data',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value =
        ListProductCollectionDataResponseModel.fromJson(_result.data!);
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
