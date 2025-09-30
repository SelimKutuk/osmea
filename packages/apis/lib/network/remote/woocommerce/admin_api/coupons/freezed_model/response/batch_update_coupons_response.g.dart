// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_update_coupons_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BatchUpdateCouponsResponseImpl _$$BatchUpdateCouponsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BatchUpdateCouponsResponseImpl(
      create: (json['create'] as List<dynamic>?)
          ?.map((e) => Create.fromJson(e as Map<String, dynamic>))
          .toList(),
      update: (json['update'] as List<dynamic>?)
          ?.map((e) => Delete.fromJson(e as Map<String, dynamic>))
          .toList(),
      delete: (json['delete'] as List<dynamic>?)
          ?.map((e) => Delete.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BatchUpdateCouponsResponseImplToJson(
    _$BatchUpdateCouponsResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  return val;
}

_$CreateImpl _$$CreateImplFromJson(Map<String, dynamic> json) => _$CreateImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      amount: json['amount'] as String?,
      status: json['status'] as String?,
      dateCreated: json['date_created'] as String?,
      dateCreatedGmt: json['date_created_gmt'] as String?,
      dateModified: json['date_modified'] as String?,
      dateModifiedGmt: json['date_modified_gmt'] as String?,
      discountType: json['discount_type'] as String?,
      description: json['description'] as String?,
      dateExpires: json['date_expires'],
      dateExpiresGmt: json['date_expires_gmt'],
      usageCount: (json['usage_count'] as num?)?.toInt(),
      individualUse: json['individual_use'] as bool?,
      productIds: json['product_ids'] as List<dynamic>?,
      excludedProductIds: json['excluded_product_ids'] as List<dynamic>?,
      usageLimit: json['usage_limit'],
      usageLimitPerUser: json['usage_limit_per_user'],
      limitUsageToXItems: json['limit_usage_to_x_items'],
      freeShipping: json['free_shipping'] as bool?,
      productCategories: json['product_categories'] as List<dynamic>?,
      excludedProductCategories:
          json['excluded_product_categories'] as List<dynamic>?,
      excludeSaleItems: json['exclude_sale_items'] as bool?,
      minimumAmount: json['minimum_amount'] as String?,
      maximumAmount: json['maximum_amount'] as String?,
      emailRestrictions: json['email_restrictions'] as List<dynamic>?,
      usedBy: json['used_by'] as List<dynamic>?,
      metaData: json['meta_data'] as List<dynamic>?,
      links: json['_links'] == null
          ? null
          : Links.fromJson(json['_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateImplToJson(_$CreateImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('code', instance.code);
  writeNotNull('amount', instance.amount);
  writeNotNull('status', instance.status);
  writeNotNull('date_created', instance.dateCreated);
  writeNotNull('date_created_gmt', instance.dateCreatedGmt);
  writeNotNull('date_modified', instance.dateModified);
  writeNotNull('date_modified_gmt', instance.dateModifiedGmt);
  writeNotNull('discount_type', instance.discountType);
  writeNotNull('description', instance.description);
  writeNotNull('date_expires', instance.dateExpires);
  writeNotNull('date_expires_gmt', instance.dateExpiresGmt);
  writeNotNull('usage_count', instance.usageCount);
  writeNotNull('individual_use', instance.individualUse);
  writeNotNull('product_ids', instance.productIds);
  writeNotNull('excluded_product_ids', instance.excludedProductIds);
  writeNotNull('usage_limit', instance.usageLimit);
  writeNotNull('usage_limit_per_user', instance.usageLimitPerUser);
  writeNotNull('limit_usage_to_x_items', instance.limitUsageToXItems);
  writeNotNull('free_shipping', instance.freeShipping);
  writeNotNull('product_categories', instance.productCategories);
  writeNotNull(
      'excluded_product_categories', instance.excludedProductCategories);
  writeNotNull('exclude_sale_items', instance.excludeSaleItems);
  writeNotNull('minimum_amount', instance.minimumAmount);
  writeNotNull('maximum_amount', instance.maximumAmount);
  writeNotNull('email_restrictions', instance.emailRestrictions);
  writeNotNull('used_by', instance.usedBy);
  writeNotNull('meta_data', instance.metaData);
  writeNotNull('_links', instance.links?.toJson());
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

_$DeleteImpl _$$DeleteImplFromJson(Map<String, dynamic> json) => _$DeleteImpl(
      id: (json['id'] as num?)?.toInt(),
      error: json['error'] == null
          ? null
          : Error.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeleteImplToJson(_$DeleteImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('error', instance.error?.toJson());
  return val;
}

_$ErrorImpl _$$ErrorImplFromJson(Map<String, dynamic> json) => _$ErrorImpl(
      code: json['code'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ErrorImplToJson(_$ErrorImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      status: (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  return val;
}
