// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_all_tools_from_system_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListAllToolsFromSystemStatusResponseImpl
    _$$ListAllToolsFromSystemStatusResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$ListAllToolsFromSystemStatusResponseImpl(
          id: json['id'] as String?,
          name: json['name'] as String?,
          action: json['action'] as String?,
          description: json['description'] as String?,
          links: json['_links'] == null
              ? null
              : Links.fromJson(json['_links'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ListAllToolsFromSystemStatusResponseImplToJson(
    _$ListAllToolsFromSystemStatusResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('action', instance.action);
  writeNotNull('description', instance.description);
  writeNotNull('_links', instance.links?.toJson());
  return val;
}

_$LinksImpl _$$LinksImplFromJson(Map<String, dynamic> json) => _$LinksImpl(
      item: (json['item'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LinksImplToJson(_$LinksImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('item', instance.item?.map((e) => e.toJson()).toList());
  return val;
}

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      embeddable: json['embeddable'] as bool?,
      href: json['href'] as String?,
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('embeddable', instance.embeddable);
  writeNotNull('href', instance.href);
  return val;
}
