// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'include_shipping_method_to_shipping_zone_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IncludeShippingMethodToShippingZoneRequestImpl
    _$$IncludeShippingMethodToShippingZoneRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$IncludeShippingMethodToShippingZoneRequestImpl(
          methodId: json['method_id'] as String?,
          enabled: json['enabled'] as bool?,
          order: (json['order'] as num?)?.toInt(),
          settings: json['settings'] == null
              ? null
              : Settings.fromJson(json['settings'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$IncludeShippingMethodToShippingZoneRequestImplToJson(
    _$IncludeShippingMethodToShippingZoneRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('method_id', instance.methodId);
  writeNotNull('enabled', instance.enabled);
  writeNotNull('order', instance.order);
  writeNotNull('settings', instance.settings?.toJson());
  return val;
}

_$SettingsImpl _$$SettingsImplFromJson(Map<String, dynamic> json) =>
    _$SettingsImpl(
      title: json['title'] as String?,
      taxStatus: json['tax_status'] as String?,
      cost: json['cost'] as String?,
      classCosts: json['class_costs'] as String?,
      classCost91: json['class_cost_91'] as String?,
      classCost92: json['class_cost_92'] as String?,
      noClassCost: json['no_class_cost'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$SettingsImplToJson(_$SettingsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('tax_status', instance.taxStatus);
  writeNotNull('cost', instance.cost);
  writeNotNull('class_costs', instance.classCosts);
  writeNotNull('class_cost_91', instance.classCost91);
  writeNotNull('class_cost_92', instance.classCost92);
  writeNotNull('no_class_cost', instance.noClassCost);
  writeNotNull('type', instance.type);
  return val;
}
