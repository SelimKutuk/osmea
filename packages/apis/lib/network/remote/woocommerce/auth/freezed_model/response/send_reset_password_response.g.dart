// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_reset_password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendResetPasswordResponseImpl _$$SendResetPasswordResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SendResetPasswordResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SendResetPasswordData.fromJson(
              json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$SendResetPasswordResponseImplToJson(
        _$SendResetPasswordResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      if (instance.message case final value?) 'message': value,
      if (instance.data?.toJson() case final value?) 'data': value,
      if (instance.error case final value?) 'error': value,
      if (instance.metadata case final value?) 'metadata': value,
    };

_$SendResetPasswordDataImpl _$$SendResetPasswordDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SendResetPasswordDataImpl(
      email: json['email'] as String,
      resetToken: json['reset_token'] as String?,
      expiresAt: json['expires_at'] == null
          ? null
          : DateTime.parse(json['expires_at'] as String),
      emailSent: json['email_sent'] as bool?,
      resetUrl: json['reset_url'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$SendResetPasswordDataImplToJson(
        _$SendResetPasswordDataImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      if (instance.resetToken case final value?) 'reset_token': value,
      if (instance.expiresAt?.toIso8601String() case final value?)
        'expires_at': value,
      if (instance.emailSent case final value?) 'email_sent': value,
      if (instance.resetUrl case final value?) 'reset_url': value,
      if (instance.metadata case final value?) 'metadata': value,
    };
