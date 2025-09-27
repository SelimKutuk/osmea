// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_settings_groups_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListSettingsGroupsResponseImpl _$$ListSettingsGroupsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ListSettingsGroupsResponseImpl(
      id: json['id'] as String?,
      label: json['label'] as String?,
      description: json['description'] as String?,
      parentId: json['parent_id'] as String?,
      subGroups: (json['sub_groups'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      links: json['_links'] == null
          ? null
          : Links.fromJson(json['_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ListSettingsGroupsResponseImplToJson(
    _$ListSettingsGroupsResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('label', instance.label);
  writeNotNull('description', instance.description);
  writeNotNull('parent_id', instance.parentId);
  writeNotNull('sub_groups', instance.subGroups);
  writeNotNull('_links', instance.links?.toJson());
  return val;
}

_$LinksImpl _$$LinksImplFromJson(Map<String, dynamic> json) => _$LinksImpl(
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => Option.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LinksImplToJson(_$LinksImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('options', instance.options?.map((e) => e.toJson()).toList());
  return val;
}

_$OptionImpl _$$OptionImplFromJson(Map<String, dynamic> json) => _$OptionImpl(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$$OptionImplToJson(_$OptionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}
