// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receive_a_list_of_all_product_image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReceiveAListOfAllProductImagesResponseImpl
    _$$ReceiveAListOfAllProductImagesResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$ReceiveAListOfAllProductImagesResponseImpl(
          images: (json['images'] as List<dynamic>?)
              ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$ReceiveAListOfAllProductImagesResponseImplToJson(
    _$ReceiveAListOfAllProductImagesResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('images', instance.images?.map((e) => e.toJson()).toList());
  return val;
}

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      id: (json['id'] as num?)?.toInt(),
      alt: json['alt'] as String?,
      position: (json['position'] as num?)?.toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      src: json['src'] as String?,
      variantIds: json['variant_ids'] as List<dynamic>?,
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
  writeNotNull('variant_ids', instance.variantIds);
  return val;
}
