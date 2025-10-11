// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_tax_rate_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateTaxRateRequestImpl _$$CreateTaxRateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateTaxRateRequestImpl(
      country: json['country'] as String?,
      state: json['state'] as String?,
      postcode: json['postcode'] as String?,
      city: json['city'] as String?,
      postcodes: (json['postcodes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      cities:
          (json['cities'] as List<dynamic>?)?.map((e) => e as String).toList(),
      rate: json['rate'] as String?,
      name: json['name'] as String?,
      priority: (json['priority'] as num?)?.toInt(),
      compound: json['compound'] as bool?,
      shipping: json['shipping'] as bool?,
      order: (json['order'] as num?)?.toInt(),
      createTaxRateRequestClass: json['class'] as String?,
    );

Map<String, dynamic> _$$CreateTaxRateRequestImplToJson(
    _$CreateTaxRateRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('country', instance.country);
  writeNotNull('state', instance.state);
  writeNotNull('postcode', instance.postcode);
  writeNotNull('city', instance.city);
  writeNotNull('postcodes', instance.postcodes);
  writeNotNull('cities', instance.cities);
  writeNotNull('rate', instance.rate);
  writeNotNull('name', instance.name);
  writeNotNull('priority', instance.priority);
  writeNotNull('compound', instance.compound);
  writeNotNull('shipping', instance.shipping);
  writeNotNull('order', instance.order);
  writeNotNull('class', instance.createTaxRateRequestClass);
  return val;
}
