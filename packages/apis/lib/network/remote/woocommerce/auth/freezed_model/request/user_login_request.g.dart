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
    _$UserLoginRequestImpl instance) {
  final val = <String, dynamic>{
    'email': instance.email,
    'password': instance.password,
    'remember_me': instance.rememberMe,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('device_id', instance.deviceId);
  writeNotNull('device_name', instance.deviceName);
  writeNotNull('metadata', instance.metadata);
  return val;
}
