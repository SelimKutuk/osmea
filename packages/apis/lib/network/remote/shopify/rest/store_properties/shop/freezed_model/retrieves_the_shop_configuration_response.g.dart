// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieves_the_shop_configuration_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrievesTheShopConfigurationResponseImpl
    _$$RetrievesTheShopConfigurationResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$RetrievesTheShopConfigurationResponseImpl(
          shop: json['shop'] == null
              ? null
              : Shop.fromJson(json['shop'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$RetrievesTheShopConfigurationResponseImplToJson(
    _$RetrievesTheShopConfigurationResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('shop', instance.shop?.toJson());
  return val;
}

_$ShopImpl _$$ShopImplFromJson(Map<String, dynamic> json) => _$ShopImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      domain: json['domain'] as String?,
      province: json['province'],
      country: json['country'] as String?,
      address1: json['address1'] as String?,
      zip: json['zip'] as String?,
      city: json['city'] as String?,
      source: json['source'],
      phone: json['phone'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      primaryLocale: json['primary_locale'] as String?,
      address2: json['address2'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      countryCode: json['country_code'] as String?,
      countryName: json['country_name'] as String?,
      currency: json['currency'] as String?,
      customerEmail: json['customer_email'] as String?,
      timezone: json['timezone'] as String?,
      ianaTimezone: json['iana_timezone'] as String?,
      shopOwner: json['shop_owner'] as String?,
      moneyFormat: json['money_format'] as String?,
      moneyWithCurrencyFormat: json['money_with_currency_format'] as String?,
      weightUnit: json['weight_unit'] as String?,
      provinceCode: json['province_code'],
      taxesIncluded: json['taxes_included'] as bool?,
      autoConfigureTaxInclusivity: json['auto_configure_tax_inclusivity'],
      taxShipping: json['tax_shipping'],
      countyTaxes: json['county_taxes'] as bool?,
      planDisplayName: json['plan_display_name'] as String?,
      planName: json['plan_name'] as String?,
      hasDiscounts: json['has_discounts'] as bool?,
      hasGiftCards: json['has_gift_cards'] as bool?,
      myshopifyDomain: json['myshopify_domain'] as String?,
      googleAppsDomain: json['google_apps_domain'],
      googleAppsLoginEnabled: json['google_apps_login_enabled'],
      moneyInEmailsFormat: json['money_in_emails_format'] as String?,
      moneyWithCurrencyInEmailsFormat:
          json['money_with_currency_in_emails_format'] as String?,
      eligibleForPayments: json['eligible_for_payments'] as bool?,
      requiresExtraPaymentsAgreement:
          json['requires_extra_payments_agreement'] as bool?,
      passwordEnabled: json['password_enabled'] as bool?,
      hasStorefront: json['has_storefront'] as bool?,
      finances: json['finances'] as bool?,
      primaryLocationId: (json['primary_location_id'] as num?)?.toInt(),
      checkoutApiSupported: json['checkout_api_supported'] as bool?,
      multiLocationEnabled: json['multi_location_enabled'] as bool?,
      setupRequired: json['setup_required'] as bool?,
      preLaunchEnabled: json['pre_launch_enabled'] as bool?,
      enabledPresentmentCurrencies:
          (json['enabled_presentment_currencies'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      marketingSmsConsentEnabledAtCheckout:
          json['marketing_sms_consent_enabled_at_checkout'] as bool?,
      transactionalSmsDisabled: json['transactional_sms_disabled'] as bool?,
    );

Map<String, dynamic> _$$ShopImplToJson(_$ShopImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('email', instance.email);
  writeNotNull('domain', instance.domain);
  writeNotNull('province', instance.province);
  writeNotNull('country', instance.country);
  writeNotNull('address1', instance.address1);
  writeNotNull('zip', instance.zip);
  writeNotNull('city', instance.city);
  writeNotNull('source', instance.source);
  writeNotNull('phone', instance.phone);
  writeNotNull('latitude', instance.latitude);
  writeNotNull('longitude', instance.longitude);
  writeNotNull('primary_locale', instance.primaryLocale);
  writeNotNull('address2', instance.address2);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('country_code', instance.countryCode);
  writeNotNull('country_name', instance.countryName);
  writeNotNull('currency', instance.currency);
  writeNotNull('customer_email', instance.customerEmail);
  writeNotNull('timezone', instance.timezone);
  writeNotNull('iana_timezone', instance.ianaTimezone);
  writeNotNull('shop_owner', instance.shopOwner);
  writeNotNull('money_format', instance.moneyFormat);
  writeNotNull('money_with_currency_format', instance.moneyWithCurrencyFormat);
  writeNotNull('weight_unit', instance.weightUnit);
  writeNotNull('province_code', instance.provinceCode);
  writeNotNull('taxes_included', instance.taxesIncluded);
  writeNotNull(
      'auto_configure_tax_inclusivity', instance.autoConfigureTaxInclusivity);
  writeNotNull('tax_shipping', instance.taxShipping);
  writeNotNull('county_taxes', instance.countyTaxes);
  writeNotNull('plan_display_name', instance.planDisplayName);
  writeNotNull('plan_name', instance.planName);
  writeNotNull('has_discounts', instance.hasDiscounts);
  writeNotNull('has_gift_cards', instance.hasGiftCards);
  writeNotNull('myshopify_domain', instance.myshopifyDomain);
  writeNotNull('google_apps_domain', instance.googleAppsDomain);
  writeNotNull('google_apps_login_enabled', instance.googleAppsLoginEnabled);
  writeNotNull('money_in_emails_format', instance.moneyInEmailsFormat);
  writeNotNull('money_with_currency_in_emails_format',
      instance.moneyWithCurrencyInEmailsFormat);
  writeNotNull('eligible_for_payments', instance.eligibleForPayments);
  writeNotNull('requires_extra_payments_agreement',
      instance.requiresExtraPaymentsAgreement);
  writeNotNull('password_enabled', instance.passwordEnabled);
  writeNotNull('has_storefront', instance.hasStorefront);
  writeNotNull('finances', instance.finances);
  writeNotNull('primary_location_id', instance.primaryLocationId);
  writeNotNull('checkout_api_supported', instance.checkoutApiSupported);
  writeNotNull('multi_location_enabled', instance.multiLocationEnabled);
  writeNotNull('setup_required', instance.setupRequired);
  writeNotNull('pre_launch_enabled', instance.preLaunchEnabled);
  writeNotNull(
      'enabled_presentment_currencies', instance.enabledPresentmentCurrencies);
  writeNotNull('marketing_sms_consent_enabled_at_checkout',
      instance.marketingSmsConsentEnabledAtCheckout);
  writeNotNull('transactional_sms_disabled', instance.transactionalSmsDisabled);
  return val;
}
