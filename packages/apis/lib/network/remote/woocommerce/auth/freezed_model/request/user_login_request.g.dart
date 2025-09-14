// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserLoginRequestImpl _$$UserLoginRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UserLoginRequestImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      rememberMe: json['remember_me'] as bool? ?? false,
      deviceId: json['device_id'] as String?,
      deviceName: json['device_name'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$UserLoginRequestImplToJson(
        _$UserLoginRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'remember_me': instance.rememberMe,
      if (instance.deviceId case final value?) 'device_id': value,
      if (instance.deviceName case final value?) 'device_name': value,
      if (instance.metadata case final value?) 'metadata': value,
    };
