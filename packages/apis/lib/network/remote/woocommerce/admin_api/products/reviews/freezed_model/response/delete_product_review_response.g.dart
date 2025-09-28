// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_product_review_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteProductReviewResponseImpl _$$DeleteProductReviewResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteProductReviewResponseImpl(
      deleted: json['deleted'] as bool?,
      previous: json['previous'] == null
          ? null
          : Previous.fromJson(json['previous'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeleteProductReviewResponseImplToJson(
    _$DeleteProductReviewResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deleted', instance.deleted);
  writeNotNull('previous', instance.previous?.toJson());
  return val;
}

_$PreviousImpl _$$PreviousImplFromJson(Map<String, dynamic> json) =>
    _$PreviousImpl(
      id: (json['id'] as num?)?.toInt(),
      dateCreated: json['date_created'] as String?,
      dateCreatedGmt: json['date_created_gmt'] as String?,
      productId: (json['product_id'] as num?)?.toInt(),
      productName: json['product_name'] as String?,
      productPermalink: json['product_permalink'] as String?,
      status: json['status'] as String?,
      reviewer: json['reviewer'] as String?,
      reviewerEmail: json['reviewer_email'] as String?,
      review: json['review'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      verified: json['verified'] as bool?,
      reviewerAvatarUrls: json['reviewer_avatar_urls'] == null
          ? null
          : ReviewerAvatarUrls.fromJson(
              json['reviewer_avatar_urls'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PreviousImplToJson(_$PreviousImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('date_created', instance.dateCreated);
  writeNotNull('date_created_gmt', instance.dateCreatedGmt);
  writeNotNull('product_id', instance.productId);
  writeNotNull('product_name', instance.productName);
  writeNotNull('product_permalink', instance.productPermalink);
  writeNotNull('status', instance.status);
  writeNotNull('reviewer', instance.reviewer);
  writeNotNull('reviewer_email', instance.reviewerEmail);
  writeNotNull('review', instance.review);
  writeNotNull('rating', instance.rating);
  writeNotNull('verified', instance.verified);
  writeNotNull('reviewer_avatar_urls', instance.reviewerAvatarUrls?.toJson());
  return val;
}

_$ReviewerAvatarUrlsImpl _$$ReviewerAvatarUrlsImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewerAvatarUrlsImpl(
      the24: json['24'] as String?,
      the48: json['48'] as String?,
      the96: json['96'] as String?,
    );

Map<String, dynamic> _$$ReviewerAvatarUrlsImplToJson(
    _$ReviewerAvatarUrlsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('24', instance.the24);
  writeNotNull('48', instance.the48);
  writeNotNull('96', instance.the96);
  return val;
}
