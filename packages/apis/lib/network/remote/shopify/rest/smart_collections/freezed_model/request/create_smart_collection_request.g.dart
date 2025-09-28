// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_smart_collection_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateSmartCollectionRequestImpl _$$CreateSmartCollectionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateSmartCollectionRequestImpl(
      smartCollection: json['smart_collection'] == null
          ? null
          : SmartCollection.fromJson(
              json['smart_collection'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateSmartCollectionRequestImplToJson(
    _$CreateSmartCollectionRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('smart_collection', instance.smartCollection?.toJson());
  return val;
}

_$SmartCollectionImpl _$$SmartCollectionImplFromJson(
        Map<String, dynamic> json) =>
    _$SmartCollectionImpl(
      id: (json['id'] as num?)?.toInt(),
      handle: json['handle'] as String?,
      title: json['title'] as String?,
      updatedAt: json['updated_at'] as String?,
      bodyHtml: json['body_html'],
      publishedAt: json['published_at'] as String?,
      sortOrder: json['sort_order'] as String?,
      templateSuffix: json['template_suffix'],
      disjunctive: json['disjunctive'] as bool?,
      rules: (json['rules'] as List<dynamic>?)
          ?.map((e) => Rule.fromJson(e as Map<String, dynamic>))
          .toList(),
      publishedScope: json['published_scope'] as String?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
    );

Map<String, dynamic> _$$SmartCollectionImplToJson(
    _$SmartCollectionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('handle', instance.handle);
  writeNotNull('title', instance.title);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('body_html', instance.bodyHtml);
  writeNotNull('published_at', instance.publishedAt);
  writeNotNull('sort_order', instance.sortOrder);
  writeNotNull('template_suffix', instance.templateSuffix);
  writeNotNull('disjunctive', instance.disjunctive);
  writeNotNull('rules', instance.rules?.map((e) => e.toJson()).toList());
  writeNotNull('published_scope', instance.publishedScope);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  return val;
}

_$RuleImpl _$$RuleImplFromJson(Map<String, dynamic> json) => _$RuleImpl(
      column: json['column'] as String?,
      relation: json['relation'] as String?,
      condition: json['condition'] as String?,
    );

Map<String, dynamic> _$$RuleImplToJson(_$RuleImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('column', instance.column);
  writeNotNull('relation', instance.relation);
  writeNotNull('condition', instance.condition);
  return val;
}
