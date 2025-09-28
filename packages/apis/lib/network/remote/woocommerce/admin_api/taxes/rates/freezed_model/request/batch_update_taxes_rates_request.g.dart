// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_update_taxes_rates_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BatchUpdateTaxesRatesRequestImpl _$$BatchUpdateTaxesRatesRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$BatchUpdateTaxesRatesRequestImpl(
      update: (json['update'] as List<dynamic>?)
          ?.map((e) => Update.fromJson(e as Map<String, dynamic>))
          .toList(),
      delete: (json['delete'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      create: (json['create'] as List<dynamic>?)
          ?.map((e) => Create.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BatchUpdateTaxesRatesRequestImplToJson(
    _$BatchUpdateTaxesRatesRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete);
  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  return val;
}

_$CreateImpl _$$CreateImplFromJson(Map<String, dynamic> json) => _$CreateImpl(
      country: json['country'] as String?,
      state: json['state'] as String?,
      postcode: json['postcode'] as String?,
      city: json['city'] as String?,
      rate: json['rate'] as String?,
      name: json['name'] as String?,
      priority: (json['priority'] as num?)?.toInt(),
      compound: json['compound'] as bool?,
      shipping: json['shipping'] as bool?,
      order: (json['order'] as num?)?.toInt(),
      createClass: json['class'] as String?,
    );

Map<String, dynamic> _$$CreateImplToJson(_$CreateImpl instance) {
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
  writeNotNull('rate', instance.rate);
  writeNotNull('name', instance.name);
  writeNotNull('priority', instance.priority);
  writeNotNull('compound', instance.compound);
  writeNotNull('shipping', instance.shipping);
  writeNotNull('order', instance.order);
  writeNotNull('class', instance.createClass);
  return val;
}

_$UpdateImpl _$$UpdateImplFromJson(Map<String, dynamic> json) => _$UpdateImpl(
      id: (json['id'] as num?)?.toInt(),
      rate: json['rate'] as String?,
      name: json['name'] as String?,
      shipping: json['shipping'] as bool?,
    );

Map<String, dynamic> _$$UpdateImplToJson(_$UpdateImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('rate', instance.rate);
  writeNotNull('name', instance.name);
  writeNotNull('shipping', instance.shipping);
  return val;
}
