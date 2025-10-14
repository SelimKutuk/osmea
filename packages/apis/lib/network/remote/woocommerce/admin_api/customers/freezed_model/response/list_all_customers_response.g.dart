// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_all_customers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListAllCustomersResponseImpl _$$ListAllCustomersResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ListAllCustomersResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      dateCreated: json['date_created'] as String?,
      dateCreatedGmt: json['date_created_gmt'] as String?,
      dateModified: json['date_modified'] as String?,
      dateModifiedGmt: json['date_modified_gmt'] as String?,
      email: json['email'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      role: json['role'] as String?,
      username: json['username'] as String?,
      billing: json['billing'] == null
          ? null
          : Billing.fromJson(json['billing'] as Map<String, dynamic>),
      shipping: json['shipping'] == null
          ? null
          : Shipping.fromJson(json['shipping'] as Map<String, dynamic>),
      isPayingCustomer: json['is_paying_customer'] as bool?,
      avatarUrl: json['avatar_url'] as String?,
      metaData: (json['meta_data'] as List<dynamic>?)
          ?.map((e) => MetaDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: json['_links'] == null
          ? null
          : Links.fromJson(json['_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ListAllCustomersResponseImplToJson(
    _$ListAllCustomersResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('date_created', instance.dateCreated);
  writeNotNull('date_created_gmt', instance.dateCreatedGmt);
  writeNotNull('date_modified', instance.dateModified);
  writeNotNull('date_modified_gmt', instance.dateModifiedGmt);
  writeNotNull('email', instance.email);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('role', instance.role);
  writeNotNull('username', instance.username);
  writeNotNull('billing', instance.billing?.toJson());
  writeNotNull('shipping', instance.shipping?.toJson());
  writeNotNull('is_paying_customer', instance.isPayingCustomer);
  writeNotNull('avatar_url', instance.avatarUrl);
  writeNotNull('meta_data', instance.metaData?.map((e) => e.toJson()).toList());
  writeNotNull('_links', instance.links?.toJson());
  return val;
}

_$BillingImpl _$$BillingImplFromJson(Map<String, dynamic> json) =>
    _$BillingImpl(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      company: json['company'] as String?,
      address1: json['address_1'] as String?,
      address2: json['address_2'] as String?,
      city: json['city'] as String?,
      postcode: json['postcode'] as String?,
      country: json['country'] as String?,
      state: json['state'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$BillingImplToJson(_$BillingImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('company', instance.company);
  writeNotNull('address_1', instance.address1);
  writeNotNull('address_2', instance.address2);
  writeNotNull('city', instance.city);
  writeNotNull('postcode', instance.postcode);
  writeNotNull('country', instance.country);
  writeNotNull('state', instance.state);
  writeNotNull('email', instance.email);
  writeNotNull('phone', instance.phone);
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

_$MetaDatumImpl _$$MetaDatumImplFromJson(Map<String, dynamic> json) =>
    _$MetaDatumImpl(
      id: (json['id'] as num?)?.toInt(),
      key: json['key'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$MetaDatumImplToJson(_$MetaDatumImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('key', instance.key);
  writeNotNull('value', instance.value);
  return val;
}

_$ShippingImpl _$$ShippingImplFromJson(Map<String, dynamic> json) =>
    _$ShippingImpl(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      company: json['company'] as String?,
      address1: json['address_1'] as String?,
      address2: json['address_2'] as String?,
      city: json['city'] as String?,
      postcode: json['postcode'] as String?,
      country: json['country'] as String?,
      state: json['state'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$ShippingImplToJson(_$ShippingImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('company', instance.company);
  writeNotNull('address_1', instance.address1);
  writeNotNull('address_2', instance.address2);
  writeNotNull('city', instance.city);
  writeNotNull('postcode', instance.postcode);
  writeNotNull('country', instance.country);
  writeNotNull('state', instance.state);
  writeNotNull('phone', instance.phone);
  return val;
}
