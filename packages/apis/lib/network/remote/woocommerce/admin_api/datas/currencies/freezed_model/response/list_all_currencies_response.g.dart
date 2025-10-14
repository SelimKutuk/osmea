// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_all_currencies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListAllCurrenciesResponseImpl _$$ListAllCurrenciesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ListAllCurrenciesResponseImpl(
      code: json['code'] as String?,
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
      links: json['_links'] == null
          ? null
          : Links.fromJson(json['_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ListAllCurrenciesResponseImplToJson(
    _$ListAllCurrenciesResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('name', instance.name);
  writeNotNull('symbol', instance.symbol);
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
