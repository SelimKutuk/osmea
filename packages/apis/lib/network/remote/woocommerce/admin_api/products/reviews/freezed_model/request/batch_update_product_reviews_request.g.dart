// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_update_product_reviews_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BatchUpdateProductReviewsRequestImpl
    _$$BatchUpdateProductReviewsRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$BatchUpdateProductReviewsRequestImpl(
          create: (json['create'] as List<dynamic>?)
              ?.map((e) => Create.fromJson(e as Map<String, dynamic>))
              .toList(),
          update: (json['update'] as List<dynamic>?)
              ?.map((e) => Update.fromJson(e as Map<String, dynamic>))
              .toList(),
          delete: (json['delete'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList(),
        );

Map<String, dynamic> _$$BatchUpdateProductReviewsRequestImplToJson(
    _$BatchUpdateProductReviewsRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete);
  return val;
}

_$CreateImpl _$$CreateImplFromJson(Map<String, dynamic> json) => _$CreateImpl(
      productId: (json['product_id'] as num?)?.toInt(),
      status: json['status'] as String?,
      reviewer: json['reviewer'] as String?,
      reviewerEmail: json['reviewer_email'] as String?,
      review: json['review'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      verified: json['verified'] as bool?,
    );

Map<String, dynamic> _$$CreateImplToJson(_$CreateImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product_id', instance.productId);
  writeNotNull('status', instance.status);
  writeNotNull('reviewer', instance.reviewer);
  writeNotNull('reviewer_email', instance.reviewerEmail);
  writeNotNull('review', instance.review);
  writeNotNull('rating', instance.rating);
  writeNotNull('verified', instance.verified);
  return val;
}

_$UpdateImpl _$$UpdateImplFromJson(Map<String, dynamic> json) => _$UpdateImpl(
      id: (json['id'] as num?)?.toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      status: json['status'] as String?,
      reviewer: json['reviewer'] as String?,
      reviewerEmail: json['reviewer_email'] as String?,
      review: json['review'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      verified: json['verified'] as bool?,
    );

Map<String, dynamic> _$$UpdateImplToJson(_$UpdateImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('product_id', instance.productId);
  writeNotNull('status', instance.status);
  writeNotNull('reviewer', instance.reviewer);
  writeNotNull('reviewer_email', instance.reviewerEmail);
  writeNotNull('review', instance.review);
  writeNotNull('rating', instance.rating);
  writeNotNull('verified', instance.verified);
  return val;
}
