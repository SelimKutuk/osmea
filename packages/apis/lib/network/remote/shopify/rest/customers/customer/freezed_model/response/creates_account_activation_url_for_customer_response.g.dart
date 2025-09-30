// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creates_account_activation_url_for_customer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatesAccountActivationUrlForCustomerResponseImpl
    _$$CreatesAccountActivationUrlForCustomerResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$CreatesAccountActivationUrlForCustomerResponseImpl(
          accountActivationUrl: json['account_activation_url'] as String?,
          errors: (json['errors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic>
    _$$CreatesAccountActivationUrlForCustomerResponseImplToJson(
        _$CreatesAccountActivationUrlForCustomerResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('account_activation_url', instance.accountActivationUrl);
  writeNotNull('errors', instance.errors);
  return val;
}
