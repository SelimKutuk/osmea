// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_country_using_shopify_tax_rate_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateCountryUsingShopifyTaxRateRequestImpl
    _$$CreateCountryUsingShopifyTaxRateRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateCountryUsingShopifyTaxRateRequestImpl(
          country: json['country'] == null
              ? null
              : Country.fromJson(json['country'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateCountryUsingShopifyTaxRateRequestImplToJson(
    _$CreateCountryUsingShopifyTaxRateRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('country', instance.country?.toJson());
  return val;
}

_$CountryImpl _$$CountryImplFromJson(Map<String, dynamic> json) =>
    _$CountryImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      tax: (json['tax'] as num?)?.toDouble(),
      code: json['code'] as String?,
      taxName: json['tax_name'] as String?,
      provinces: json['provinces'] as List<dynamic>?,
    );

Map<String, dynamic> _$$CountryImplToJson(_$CountryImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('tax', instance.tax);
  writeNotNull('code', instance.code);
  writeNotNull('tax_name', instance.taxName);
  writeNotNull('provinces', instance.provinces);
  return val;
}
