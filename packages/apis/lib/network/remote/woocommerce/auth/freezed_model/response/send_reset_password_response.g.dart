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
    _$SendResetPasswordResponseImpl instance) {
  final val = <String, dynamic>{
    'success': instance.success,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data?.toJson());
  writeNotNull('error', instance.error);
  writeNotNull('metadata', instance.metadata);
  return val;
}

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
    _$SendResetPasswordDataImpl instance) {
  final val = <String, dynamic>{
    'email': instance.email,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('reset_token', instance.resetToken);
  writeNotNull('expires_at', instance.expiresAt?.toIso8601String());
  writeNotNull('email_sent', instance.emailSent);
  writeNotNull('reset_url', instance.resetUrl);
  writeNotNull('metadata', instance.metadata);
  return val;
}
