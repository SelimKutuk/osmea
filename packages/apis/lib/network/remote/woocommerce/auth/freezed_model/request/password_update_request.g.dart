// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasswordUpdateRequestImpl _$$PasswordUpdateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PasswordUpdateRequestImpl(
      email: json['email'] as String,
      newPassword: json['new_password'] as String,
      jwtToken: json['jwt_token'] as String,
    );

Map<String, dynamic> _$$PasswordUpdateRequestImplToJson(
        _$PasswordUpdateRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'new_password': instance.newPassword,
      'jwt_token': instance.jwtToken,
    };
