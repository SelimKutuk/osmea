// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_product_reviews_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListProductReviewsResponseModelImpl
    _$$ListProductReviewsResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$ListProductReviewsResponseModelImpl(
          id: (json['id'] as num?)?.toInt(),
          dateCreated: json['date_created'] == null
              ? null
              : DateTime.parse(json['date_created'] as String),
          formattedDateCreated: json['formatted_date_created'] as String?,
          dateCreatedGmt: json['date_created_gmt'] == null
              ? null
              : DateTime.parse(json['date_created_gmt'] as String),
          productId: (json['product_id'] as num?)?.toInt(),
          productName: json['product_name'] as String?,
          productPermalink: json['product_permalink'] as String?,
          productImage: json['product_image'] == null
              ? null
              : ProductImage.fromJson(
                  json['product_image'] as Map<String, dynamic>),
          reviewer: json['reviewer'] as String?,
          review: json['review'] as String?,
          rating: (json['rating'] as num?)?.toInt(),
          verified: json['verified'] as bool?,
          reviewerAvatarUrls:
              (json['reviewer_avatar_urls'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
        );

Map<String, dynamic> _$$ListProductReviewsResponseModelImplToJson(
        _$ListProductReviewsResponseModelImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.dateCreated?.toIso8601String() case final value?)
        'date_created': value,
      if (instance.formattedDateCreated case final value?)
        'formatted_date_created': value,
      if (instance.dateCreatedGmt?.toIso8601String() case final value?)
        'date_created_gmt': value,
      if (instance.productId case final value?) 'product_id': value,
      if (instance.productName case final value?) 'product_name': value,
      if (instance.productPermalink case final value?)
        'product_permalink': value,
      if (instance.productImage?.toJson() case final value?)
        'product_image': value,
      if (instance.reviewer case final value?) 'reviewer': value,
      if (instance.review case final value?) 'review': value,
      if (instance.rating case final value?) 'rating': value,
      if (instance.verified case final value?) 'verified': value,
      if (instance.reviewerAvatarUrls case final value?)
        'reviewer_avatar_urls': value,
    };

_$ProductImageImpl _$$ProductImageImplFromJson(Map<String, dynamic> json) =>
    _$ProductImageImpl(
      id: (json['id'] as num?)?.toInt(),
      src: json['src'] as String?,
      thumbnail: json['thumbnail'] as String?,
      srcset: json['srcset'] as String?,
      sizes: json['sizes'] as String?,
      name: json['name'] as String?,
      alt: json['alt'] as String?,
    );

Map<String, dynamic> _$$ProductImageImplToJson(_$ProductImageImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.src case final value?) 'src': value,
      if (instance.thumbnail case final value?) 'thumbnail': value,
      if (instance.srcset case final value?) 'srcset': value,
      if (instance.sizes case final value?) 'sizes': value,
      if (instance.name case final value?) 'name': value,
      if (instance.alt case final value?) 'alt': value,
    };
