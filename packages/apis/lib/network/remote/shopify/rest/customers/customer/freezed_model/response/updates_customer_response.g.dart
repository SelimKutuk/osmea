// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updates_customer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdatesCustomerResponseImpl _$$UpdatesCustomerResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatesCustomerResponseImpl(
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdatesCustomerResponseImplToJson(
    _$UpdatesCustomerResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer', instance.customer?.toJson());
  return val;
}

_$CustomerImpl _$$CustomerImplFromJson(Map<String, dynamic> json) =>
    _$CustomerImpl(
      id: (json['id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      ordersCount: (json['orders_count'] as num?)?.toInt(),
      state: json['state'] as String?,
      totalSpent: json['total_spent'] as String?,
      lastOrderId: json['last_order_id'],
      note: json['note'],
      verifiedEmail: json['verified_email'] as bool?,
      multipassIdentifier: json['multipass_identifier'],
      taxExempt: json['tax_exempt'] as bool?,
      tags: json['tags'] as String?,
      lastOrderName: json['last_order_name'],
      currency: json['currency'] as String?,
      addresses: json['addresses'] as List<dynamic>?,
      taxExemptions: json['tax_exemptions'] as List<dynamic>?,
      emailMarketingConsent: json['email_marketing_consent'] == null
          ? null
          : EmailMarketingConsent.fromJson(
              json['email_marketing_consent'] as Map<String, dynamic>),
      smsMarketingConsent: json['sms_marketing_consent'] == null
          ? null
          : SmsMarketingConsent.fromJson(
              json['sms_marketing_consent'] as Map<String, dynamic>),
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
    );

Map<String, dynamic> _$$CustomerImplToJson(_$CustomerImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('orders_count', instance.ordersCount);
  writeNotNull('state', instance.state);
  writeNotNull('total_spent', instance.totalSpent);
  writeNotNull('last_order_id', instance.lastOrderId);
  writeNotNull('note', instance.note);
  writeNotNull('verified_email', instance.verifiedEmail);
  writeNotNull('multipass_identifier', instance.multipassIdentifier);
  writeNotNull('tax_exempt', instance.taxExempt);
  writeNotNull('tags', instance.tags);
  writeNotNull('last_order_name', instance.lastOrderName);
  writeNotNull('currency', instance.currency);
  writeNotNull('addresses', instance.addresses);
  writeNotNull('tax_exemptions', instance.taxExemptions);
  writeNotNull(
      'email_marketing_consent', instance.emailMarketingConsent?.toJson());
  writeNotNull('sms_marketing_consent', instance.smsMarketingConsent?.toJson());
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  return val;
}

_$EmailMarketingConsentImpl _$$EmailMarketingConsentImplFromJson(
        Map<String, dynamic> json) =>
    _$EmailMarketingConsentImpl(
      state: json['state'] as String?,
      optInLevel: json['opt_in_level'] as String?,
      consentUpdatedAt: json['consent_updated_at'],
    );

Map<String, dynamic> _$$EmailMarketingConsentImplToJson(
    _$EmailMarketingConsentImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('opt_in_level', instance.optInLevel);
  writeNotNull('consent_updated_at', instance.consentUpdatedAt);
  return val;
}

_$SmsMarketingConsentImpl _$$SmsMarketingConsentImplFromJson(
        Map<String, dynamic> json) =>
    _$SmsMarketingConsentImpl(
      state: json['state'] as String?,
      optInLevel: json['opt_in_level'] as String?,
      consentUpdatedAt: json['consent_updated_at'],
      consentCollectedFrom: json['consent_collected_from'] as String?,
    );

Map<String, dynamic> _$$SmsMarketingConsentImplToJson(
    _$SmsMarketingConsentImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('opt_in_level', instance.optInLevel);
  writeNotNull('consent_updated_at', instance.consentUpdatedAt);
  writeNotNull('consent_collected_from', instance.consentCollectedFrom);
  return val;
}
