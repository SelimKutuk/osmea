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
        _$UserSignUpRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      if (instance.phone case final value?) 'phone': value,
      if (instance.company case final value?) 'company': value,
      'accept_terms': instance.acceptTerms,
      'subscribe_newsletter': instance.subscribeNewsletter,
      if (instance.referralCode case final value?) 'referral_code': value,
      if (instance.metadata case final value?) 'metadata': value,
    };
