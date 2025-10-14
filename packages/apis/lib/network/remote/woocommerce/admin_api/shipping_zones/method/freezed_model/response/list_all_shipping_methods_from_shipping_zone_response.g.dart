// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_all_shipping_methods_from_shipping_zone_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListAllShippingMethodsFromShippingZoneResponseImpl
    _$$ListAllShippingMethodsFromShippingZoneResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$ListAllShippingMethodsFromShippingZoneResponseImpl(
          id: (json['id'] as num?)?.toInt(),
          instanceId: (json['instance_id'] as num?)?.toInt(),
          title: json['title'] as String?,
          order: (json['order'] as num?)?.toInt(),
          enabled: json['enabled'] as bool?,
          methodId: json['method_id'] as String?,
          methodTitle: json['method_title'] as String?,
          methodDescription: json['method_description'] as String?,
          settings: json['settings'] == null
              ? null
              : Settings.fromJson(json['settings'] as Map<String, dynamic>),
          links: json['_links'] == null
              ? null
              : Links.fromJson(json['_links'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$$ListAllShippingMethodsFromShippingZoneResponseImplToJson(
        _$ListAllShippingMethodsFromShippingZoneResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('instance_id', instance.instanceId);
  writeNotNull('title', instance.title);
  writeNotNull('order', instance.order);
  writeNotNull('enabled', instance.enabled);
  writeNotNull('method_id', instance.methodId);
  writeNotNull('method_title', instance.methodTitle);
  writeNotNull('method_description', instance.methodDescription);
  writeNotNull('settings', instance.settings?.toJson());
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
      describes: (json['describes'] as List<dynamic>?)
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
  writeNotNull(
      'describes', instance.describes?.map((e) => e.toJson()).toList());
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

_$SettingsImpl _$$SettingsImplFromJson(Map<String, dynamic> json) =>
    _$SettingsImpl(
      title: json['title'] == null
          ? null
          : ClassCost25.fromJson(json['title'] as Map<String, dynamic>),
      taxStatus: json['tax_status'] == null
          ? null
          : TaxStatus.fromJson(json['tax_status'] as Map<String, dynamic>),
      cost: json['cost'] == null
          ? null
          : ClassCost25.fromJson(json['cost'] as Map<String, dynamic>),
      classCosts: json['class_costs'] == null
          ? null
          : ClassCost25.fromJson(json['class_costs'] as Map<String, dynamic>),
      classCost25: json['class_cost_25'] == null
          ? null
          : ClassCost25.fromJson(json['class_cost_25'] as Map<String, dynamic>),
      noClassCost: json['no_class_cost'] == null
          ? null
          : ClassCost25.fromJson(json['no_class_cost'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : Type.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SettingsImplToJson(_$SettingsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title?.toJson());
  writeNotNull('tax_status', instance.taxStatus?.toJson());
  writeNotNull('cost', instance.cost?.toJson());
  writeNotNull('class_costs', instance.classCosts?.toJson());
  writeNotNull('class_cost_25', instance.classCost25?.toJson());
  writeNotNull('no_class_cost', instance.noClassCost?.toJson());
  writeNotNull('type', instance.type?.toJson());
  return val;
}

_$ClassCost25Impl _$$ClassCost25ImplFromJson(Map<String, dynamic> json) =>
    _$ClassCost25Impl(
      id: json['id'] as String?,
      label: json['label'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      value: json['value'] as String?,
      classCost25Default: json['default'] as String?,
      tip: json['tip'] as String?,
      placeholder: json['placeholder'] as String?,
    );

Map<String, dynamic> _$$ClassCost25ImplToJson(_$ClassCost25Impl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('label', instance.label);
  writeNotNull('description', instance.description);
  writeNotNull('type', instance.type);
  writeNotNull('value', instance.value);
  writeNotNull('default', instance.classCost25Default);
  writeNotNull('tip', instance.tip);
  writeNotNull('placeholder', instance.placeholder);
  return val;
}

_$TaxStatusImpl _$$TaxStatusImplFromJson(Map<String, dynamic> json) =>
    _$TaxStatusImpl(
      id: json['id'] as String?,
      label: json['label'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      value: json['value'] as String?,
      taxStatusDefault: json['default'] as String?,
      tip: json['tip'] as String?,
      placeholder: json['placeholder'] as String?,
      options: json['options'] == null
          ? null
          : TaxStatusOptions.fromJson(json['options'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TaxStatusImplToJson(_$TaxStatusImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('label', instance.label);
  writeNotNull('description', instance.description);
  writeNotNull('type', instance.type);
  writeNotNull('value', instance.value);
  writeNotNull('default', instance.taxStatusDefault);
  writeNotNull('tip', instance.tip);
  writeNotNull('placeholder', instance.placeholder);
  writeNotNull('options', instance.options?.toJson());
  return val;
}

_$TaxStatusOptionsImpl _$$TaxStatusOptionsImplFromJson(
        Map<String, dynamic> json) =>
    _$TaxStatusOptionsImpl(
      taxable: json['taxable'] as String?,
      none: json['none'] as String?,
    );

Map<String, dynamic> _$$TaxStatusOptionsImplToJson(
    _$TaxStatusOptionsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('taxable', instance.taxable);
  writeNotNull('none', instance.none);
  return val;
}

_$TypeImpl _$$TypeImplFromJson(Map<String, dynamic> json) => _$TypeImpl(
      id: json['id'] as String?,
      label: json['label'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      value: json['value'] as String?,
      typeDefault: json['default'] as String?,
      tip: json['tip'] as String?,
      placeholder: json['placeholder'] as String?,
      options: json['options'] == null
          ? null
          : TypeOptions.fromJson(json['options'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TypeImplToJson(_$TypeImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('label', instance.label);
  writeNotNull('description', instance.description);
  writeNotNull('type', instance.type);
  writeNotNull('value', instance.value);
  writeNotNull('default', instance.typeDefault);
  writeNotNull('tip', instance.tip);
  writeNotNull('placeholder', instance.placeholder);
  writeNotNull('options', instance.options?.toJson());
  return val;
}

_$TypeOptionsImpl _$$TypeOptionsImplFromJson(Map<String, dynamic> json) =>
    _$TypeOptionsImpl(
      optionsClass: json['class'] as String?,
      order: json['order'] as String?,
    );

Map<String, dynamic> _$$TypeOptionsImplToJson(_$TypeOptionsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('class', instance.optionsClass);
  writeNotNull('order', instance.order);
  return val;
}
