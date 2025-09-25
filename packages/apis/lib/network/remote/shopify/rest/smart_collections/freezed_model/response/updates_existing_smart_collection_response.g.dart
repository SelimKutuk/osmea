// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updates_existing_smart_collection_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdatesExistingSmartCollectionResponseImpl
    _$$UpdatesExistingSmartCollectionResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$UpdatesExistingSmartCollectionResponseImpl(
          smartCollection: json['smart_collection'] == null
              ? null
              : SmartCollection.fromJson(
                  json['smart_collection'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$UpdatesExistingSmartCollectionResponseImplToJson(
    _$UpdatesExistingSmartCollectionResponseImpl instance) {
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
      bodyHtml: json['body_html'] as String?,
      sortOrder: json['sort_order'] as String?,
      title: json['title'] as String?,
      disjunctive: json['disjunctive'] as bool?,
      templateSuffix: json['template_suffix'],
      handle: json['handle'] as String?,
      id: (json['id'] as num?)?.toInt(),
      updatedAt: json['updated_at'] as String?,
      publishedAt: json['published_at'] as String?,
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

  writeNotNull('body_html', instance.bodyHtml);
  writeNotNull('sort_order', instance.sortOrder);
  writeNotNull('title', instance.title);
  writeNotNull('disjunctive', instance.disjunctive);
  writeNotNull('template_suffix', instance.templateSuffix);
  writeNotNull('handle', instance.handle);
  writeNotNull('id', instance.id);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('published_at', instance.publishedAt);
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
