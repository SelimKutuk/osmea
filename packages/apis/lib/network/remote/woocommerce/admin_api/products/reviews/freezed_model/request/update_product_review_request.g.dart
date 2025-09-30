// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_product_review_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateProductReviewRequestImpl _$$UpdateProductReviewRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateProductReviewRequestImpl(
      review: json['review'] as String?,
      reviewer: json['reviewer'] as String?,
      reviewerEmail: json['reviewer_email'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$UpdateProductReviewRequestImplToJson(
    _$UpdateProductReviewRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('review', instance.review);
  writeNotNull('reviewer', instance.reviewer);
  writeNotNull('reviewer_email', instance.reviewerEmail);
  writeNotNull('rating', instance.rating);
  writeNotNull('status', instance.status);
  return val;
}
