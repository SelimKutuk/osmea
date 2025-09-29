// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receive_list_of_shipping_zones_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReceiveListOfShippingZonesResponseImpl
    _$$ReceiveListOfShippingZonesResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$ReceiveListOfShippingZonesResponseImpl(
          shippingZones: (json['shipping_zones'] as List<dynamic>?)
              ?.map((e) => ShippingZone.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$ReceiveListOfShippingZonesResponseImplToJson(
    _$ReceiveListOfShippingZonesResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('shipping_zones',
      instance.shippingZones?.map((e) => e.toJson()).toList());
  return val;
}

_$ShippingZoneImpl _$$ShippingZoneImplFromJson(Map<String, dynamic> json) =>
    _$ShippingZoneImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      profileId: json['profile_id'] as String?,
      locationGroupId: json['location_group_id'] as String?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
      countries: (json['countries'] as List<dynamic>?)
          ?.map((e) => Country.fromJson(e as Map<String, dynamic>))
          .toList(),
      weightBasedShippingRates:
          json['weight_based_shipping_rates'] as List<dynamic>?,
      priceBasedShippingRates: (json['price_based_shipping_rates']
              as List<dynamic>?)
          ?.map(
              (e) => PriceBasedShippingRate.fromJson(e as Map<String, dynamic>))
          .toList(),
      carrierShippingRateProviders:
          json['carrier_shipping_rate_providers'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ShippingZoneImplToJson(_$ShippingZoneImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('profile_id', instance.profileId);
  writeNotNull('location_group_id', instance.locationGroupId);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull(
      'countries', instance.countries?.map((e) => e.toJson()).toList());
  writeNotNull(
      'weight_based_shipping_rates', instance.weightBasedShippingRates);
  writeNotNull('price_based_shipping_rates',
      instance.priceBasedShippingRates?.map((e) => e.toJson()).toList());
  writeNotNull(
      'carrier_shipping_rate_providers', instance.carrierShippingRateProviders);
  return val;
}

_$CountryImpl _$$CountryImplFromJson(Map<String, dynamic> json) =>
    _$CountryImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      tax: (json['tax'] as num?)?.toDouble(),
      code: json['code'] as String?,
      taxName: json['tax_name'] as String?,
      shippingZoneId: (json['shipping_zone_id'] as num?)?.toInt(),
      provinces: (json['provinces'] as List<dynamic>?)
          ?.map((e) => Province.fromJson(e as Map<String, dynamic>))
          .toList(),
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
  writeNotNull('shipping_zone_id', instance.shippingZoneId);
  writeNotNull(
      'provinces', instance.provinces?.map((e) => e.toJson()).toList());
  return val;
}

_$ProvinceImpl _$$ProvinceImplFromJson(Map<String, dynamic> json) =>
    _$ProvinceImpl(
      id: (json['id'] as num?)?.toInt(),
      countryId: (json['country_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      code: json['code'] as String?,
      tax: (json['tax'] as num?)?.toInt(),
      taxName: json['tax_name'] as String?,
      taxType: json['tax_type'] as String?,
      taxPercentage: (json['tax_percentage'] as num?)?.toInt(),
      shippingZoneId: (json['shipping_zone_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProvinceImplToJson(_$ProvinceImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('country_id', instance.countryId);
  writeNotNull('name', instance.name);
  writeNotNull('code', instance.code);
  writeNotNull('tax', instance.tax);
  writeNotNull('tax_name', instance.taxName);
  writeNotNull('tax_type', instance.taxType);
  writeNotNull('tax_percentage', instance.taxPercentage);
  writeNotNull('shipping_zone_id', instance.shippingZoneId);
  return val;
}

_$PriceBasedShippingRateImpl _$$PriceBasedShippingRateImplFromJson(
        Map<String, dynamic> json) =>
    _$PriceBasedShippingRateImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      price: json['price'] as String?,
      shippingZoneId: (json['shipping_zone_id'] as num?)?.toInt(),
      minOrderSubtotal: json['min_order_subtotal'],
      maxOrderSubtotal: json['max_order_subtotal'],
    );

Map<String, dynamic> _$$PriceBasedShippingRateImplToJson(
    _$PriceBasedShippingRateImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('price', instance.price);
  writeNotNull('shipping_zone_id', instance.shippingZoneId);
  writeNotNull('min_order_subtotal', instance.minOrderSubtotal);
  writeNotNull('max_order_subtotal', instance.maxOrderSubtotal);
  return val;
}
