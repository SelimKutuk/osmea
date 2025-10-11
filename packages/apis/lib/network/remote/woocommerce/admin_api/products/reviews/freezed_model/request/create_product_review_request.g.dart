// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product_review_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateProductReviewRequestImpl _$$CreateProductReviewRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateProductReviewRequestImpl(
      productId: (json['product_id'] as num?)?.toInt(),
      review: json['review'] as String?,
      reviewer: json['reviewer'] as String?,
      reviewerEmail: json['reviewer_email'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$CreateProductReviewRequestImplToJson(
    _$CreateProductReviewRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product_id', instance.productId);
  writeNotNull('review', instance.review);
  writeNotNull('reviewer', instance.reviewer);
  writeNotNull('reviewer_email', instance.reviewerEmail);
  writeNotNull('rating', instance.rating);
  writeNotNull('status', instance.status);
  return val;
}
