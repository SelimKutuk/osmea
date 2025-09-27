// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_all_payment_gateways_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListAllPaymentGatewaysResponseImpl
    _$$ListAllPaymentGatewaysResponseImplFromJson(Map<String, dynamic> json) =>
        _$ListAllPaymentGatewaysResponseImpl(
          id: json['id'] as String?,
          title: json['title'] as String?,
          description: json['description'] as String?,
          order: (json['order'] as num?)?.toInt(),
          enabled: json['enabled'] as bool?,
          methodTitle: json['method_title'] as String?,
          methodDescription: json['method_description'] as String?,
          methodSupports: (json['method_supports'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          settings: json['settings'] == null
              ? null
              : Settings.fromJson(json['settings'] as Map<String, dynamic>),
          needsSetup: json['needs_setup'] as bool?,
          postInstallScripts: json['post_install_scripts'] as List<dynamic>?,
          settingsUrl: json['settings_url'] as String?,
          connectionUrl: json['connection_url'],
          setupHelpText: json['setup_help_text'],
          requiredSettingsKeys:
              json['required_settings_keys'] as List<dynamic>?,
          links: json['_links'] == null
              ? null
              : Links.fromJson(json['_links'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ListAllPaymentGatewaysResponseImplToJson(
    _$ListAllPaymentGatewaysResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('order', instance.order);
  writeNotNull('enabled', instance.enabled);
  writeNotNull('method_title', instance.methodTitle);
  writeNotNull('method_description', instance.methodDescription);
  writeNotNull('method_supports', instance.methodSupports);
  writeNotNull('settings', instance.settings?.toJson());
  writeNotNull('needs_setup', instance.needsSetup);
  writeNotNull('post_install_scripts', instance.postInstallScripts);
  writeNotNull('settings_url', instance.settingsUrl);
  writeNotNull('connection_url', instance.connectionUrl);
  writeNotNull('setup_help_text', instance.setupHelpText);
  writeNotNull('required_settings_keys', instance.requiredSettingsKeys);
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

_$SettingsImpl _$$SettingsImplFromJson(Map<String, dynamic> json) =>
    _$SettingsImpl(
      title: json['title'] == null
          ? null
          : EnableForVirtual.fromJson(json['title'] as Map<String, dynamic>),
      instructions: json['instructions'] == null
          ? null
          : EnableForVirtual.fromJson(
              json['instructions'] as Map<String, dynamic>),
      enableForMethods: json['enable_for_methods'] == null
          ? null
          : EnableForMethods.fromJson(
              json['enable_for_methods'] as Map<String, dynamic>),
      enableForVirtual: json['enable_for_virtual'] == null
          ? null
          : EnableForVirtual.fromJson(
              json['enable_for_virtual'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SettingsImplToJson(_$SettingsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title?.toJson());
  writeNotNull('instructions', instance.instructions?.toJson());
  writeNotNull('enable_for_methods', instance.enableForMethods?.toJson());
  writeNotNull('enable_for_virtual', instance.enableForVirtual?.toJson());
  return val;
}

_$EnableForMethodsImpl _$$EnableForMethodsImplFromJson(
        Map<String, dynamic> json) =>
    _$EnableForMethodsImpl(
      id: json['id'] as String?,
      label: json['label'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      value: json['value'] as String?,
      enableForMethodsDefault: json['default'] as String?,
      tip: json['tip'] as String?,
      placeholder: json['placeholder'] as String?,
      options: json['options'] == null
          ? null
          : PaymentGatewayOptions.fromJson(
              json['options'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EnableForMethodsImplToJson(
    _$EnableForMethodsImpl instance) {
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
  writeNotNull('default', instance.enableForMethodsDefault);
  writeNotNull('tip', instance.tip);
  writeNotNull('placeholder', instance.placeholder);
  writeNotNull('options', instance.options?.toJson());
  return val;
}

_$PaymentGatewayOptionsImpl _$$PaymentGatewayOptionsImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentGatewayOptionsImpl(
      fixedPrice: json['Fixed Price'] == null
          ? null
          : FixedPrice.fromJson(json['Fixed Price'] as Map<String, dynamic>),
      freeShipping: json['Free Shipping'] == null
          ? null
          : FreeShipping.fromJson(
              json['Free Shipping'] as Map<String, dynamic>),
      storePickup: json['Store Pickup'] == null
          ? null
          : StorePickup.fromJson(json['Store Pickup'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaymentGatewayOptionsImplToJson(
    _$PaymentGatewayOptionsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Fixed Price', instance.fixedPrice?.toJson());
  writeNotNull('Free Shipping', instance.freeShipping?.toJson());
  writeNotNull('Store Pickup', instance.storePickup?.toJson());
  return val;
}

_$FreeShippingImpl _$$FreeShippingImplFromJson(Map<String, dynamic> json) =>
    _$FreeShippingImpl(
      freeShipping: json['free_shipping'] as String?,
      freeShipping1: json['free_shipping:1'] as String?,
    );

Map<String, dynamic> _$$FreeShippingImplToJson(_$FreeShippingImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('free_shipping', instance.freeShipping);
  writeNotNull('free_shipping:1', instance.freeShipping1);
  return val;
}

_$StorePickupImpl _$$StorePickupImplFromJson(Map<String, dynamic> json) =>
    _$StorePickupImpl(
      pickupLocation: json['pickup_location'] as String?,
    );

Map<String, dynamic> _$$StorePickupImplToJson(_$StorePickupImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pickup_location', instance.pickupLocation);
  return val;
}

_$FixedPriceImpl _$$FixedPriceImplFromJson(Map<String, dynamic> json) =>
    _$FixedPriceImpl(
      flatRate: json['flat_rate'] as String?,
      flatRate2: json['flat_rate:2'] as String?,
    );

Map<String, dynamic> _$$FixedPriceImplToJson(_$FixedPriceImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('flat_rate', instance.flatRate);
  writeNotNull('flat_rate:2', instance.flatRate2);
  return val;
}

_$EnableForVirtualImpl _$$EnableForVirtualImplFromJson(
        Map<String, dynamic> json) =>
    _$EnableForVirtualImpl(
      id: json['id'] as String?,
      label: json['label'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      value: json['value'] as String?,
      enableForVirtualDefault: json['default'] as String?,
      tip: json['tip'] as String?,
      placeholder: json['placeholder'] as String?,
    );

Map<String, dynamic> _$$EnableForVirtualImplToJson(
    _$EnableForVirtualImpl instance) {
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
  writeNotNull('default', instance.enableForVirtualDefault);
  writeNotNull('tip', instance.tip);
  writeNotNull('placeholder', instance.placeholder);
  return val;
}
