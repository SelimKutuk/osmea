// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_reset_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendResetPasswordRequestImpl _$$SendResetPasswordRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SendResetPasswordRequestImpl(
      email: json['email'] as String,
      resetUrl: json['reset_url'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$SendResetPasswordRequestImplToJson(
        _$SendResetPasswordRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      if (instance.resetUrl case final value?) 'reset_url': value,
      if (instance.metadata case final value?) 'metadata': value,
    };
