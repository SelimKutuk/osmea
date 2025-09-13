// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_signup_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserSignUpResponseImpl _$$UserSignUpResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserSignUpResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserSignUpData.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$UserSignUpResponseImplToJson(
        _$UserSignUpResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      if (instance.message case final value?) 'message': value,
      if (instance.data?.toJson() case final value?) 'data': value,
      if (instance.error case final value?) 'error': value,
      if (instance.metadata case final value?) 'metadata': value,
    };

_$UserSignUpDataImpl _$$UserSignUpDataImplFromJson(Map<String, dynamic> json) =>
    _$UserSignUpDataImpl(
      userId: json['user_id'] as String,
      email: json['email'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      phone: json['phone'] as String?,
      company: json['company'] as String?,
      requiresVerification: json['requires_verification'] as bool?,
      verificationToken: json['verification_token'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$UserSignUpDataImplToJson(
        _$UserSignUpDataImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      if (instance.phone case final value?) 'phone': value,
      if (instance.company case final value?) 'company': value,
      if (instance.requiresVerification case final value?)
        'requires_verification': value,
      if (instance.verificationToken case final value?)
        'verification_token': value,
      if (instance.createdAt?.toIso8601String() case final value?)
        'created_at': value,
      if (instance.metadata case final value?) 'metadata': value,
    };
