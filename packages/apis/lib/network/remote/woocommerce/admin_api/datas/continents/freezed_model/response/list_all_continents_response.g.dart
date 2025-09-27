// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_all_continents_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListAllContinentsResponseImpl _$$ListAllContinentsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ListAllContinentsResponseImpl(
      code: json['code'] as String?,
      name: json['name'] as String?,
      countries: (json['countries'] as List<dynamic>?)
          ?.map((e) => Country.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: json['_links'] == null
          ? null
          : Links.fromJson(json['_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ListAllContinentsResponseImplToJson(
    _$ListAllContinentsResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('name', instance.name);
  writeNotNull(
      'countries', instance.countries?.map((e) => e.toJson()).toList());
  writeNotNull('_links', instance.links?.toJson());
  return val;
}

_$CountryImpl _$$CountryImplFromJson(Map<String, dynamic> json) =>
    _$CountryImpl(
      code: json['code'] as String?,
      name: json['name'] as String?,
      currencyCode: json['currency_code'] as String?,
      currencyPos: json['currency_pos'] as String?,
      decimalSep: json['decimal_sep'] as String?,
      dimensionUnit: json['dimension_unit'] as String?,
      numDecimals: (json['num_decimals'] as num?)?.toInt(),
      thousandSep: json['thousand_sep'] as String?,
      weightUnit: json['weight_unit'] as String?,
      states: (json['states'] as List<dynamic>?)
          ?.map((e) => State.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CountryImplToJson(_$CountryImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('name', instance.name);
  writeNotNull('currency_code', instance.currencyCode);
  writeNotNull('currency_pos', instance.currencyPos);
  writeNotNull('decimal_sep', instance.decimalSep);
  writeNotNull('dimension_unit', instance.dimensionUnit);
  writeNotNull('num_decimals', instance.numDecimals);
  writeNotNull('thousand_sep', instance.thousandSep);
  writeNotNull('weight_unit', instance.weightUnit);
  writeNotNull('states', instance.states?.map((e) => e.toJson()).toList());
  return val;
}

_$StateImpl _$$StateImplFromJson(Map<String, dynamic> json) => _$StateImpl(
      code: json['code'],
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$StateImplToJson(_$StateImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('name', instance.name);
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
