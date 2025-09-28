// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_code_creation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscountCodeCreationResponseImpl _$$DiscountCodeCreationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscountCodeCreationResponseImpl(
      discountCodeCreation: json['discount_code_creation'] == null
          ? null
          : DiscountCodeCreation.fromJson(
              json['discount_code_creation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DiscountCodeCreationResponseImplToJson(
    _$DiscountCodeCreationResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'discount_code_creation', instance.discountCodeCreation?.toJson());
  return val;
}

_$DiscountCodeCreationImpl _$$DiscountCodeCreationImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscountCodeCreationImpl(
      id: (json['id'] as num?)?.toInt(),
      priceRuleId: (json['price_rule_id'] as num?)?.toInt(),
      startedAt: json['started_at'] as String?,
      completedAt: json['completed_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      status: json['status'] as String?,
      codesCount: (json['codes_count'] as num?)?.toInt(),
      importedCount: (json['imported_count'] as num?)?.toInt(),
      failedCount: (json['failed_count'] as num?)?.toInt(),
      logs: json['logs'] as List<dynamic>?,
    );

Map<String, dynamic> _$$DiscountCodeCreationImplToJson(
    _$DiscountCodeCreationImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('price_rule_id', instance.priceRuleId);
  writeNotNull('started_at', instance.startedAt);
  writeNotNull('completed_at', instance.completedAt);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('status', instance.status);
  writeNotNull('codes_count', instance.codesCount);
  writeNotNull('imported_count', instance.importedCount);
  writeNotNull('failed_count', instance.failedCount);
  writeNotNull('logs', instance.logs);
  return val;
}
