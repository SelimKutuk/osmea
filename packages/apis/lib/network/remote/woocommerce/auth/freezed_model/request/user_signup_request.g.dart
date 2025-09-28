// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_signup_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserSignUpRequestImpl _$$UserSignUpRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UserSignUpRequestImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      authKey: json['AUTH_KEY'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      phone: json['phone'] as String?,
      company: json['company'] as String?,
      acceptTerms: json['accept_terms'] as bool? ?? true,
      subscribeNewsletter: json['subscribe_newsletter'] as bool? ?? false,
      referralCode: json['referral_code'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$UserSignUpRequestImplToJson(
    _$UserSignUpRequestImpl instance) {
  final val = <String, dynamic>{
    'email': instance.email,
    'password': instance.password,
    'AUTH_KEY': instance.authKey,
    'first_name': instance.firstName,
    'last_name': instance.lastName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('phone', instance.phone);
  writeNotNull('company', instance.company);
  val['accept_terms'] = instance.acceptTerms;
  val['subscribe_newsletter'] = instance.subscribeNewsletter;
  writeNotNull('referral_code', instance.referralCode);
  writeNotNull('metadata', instance.metadata);
  return val;
}
