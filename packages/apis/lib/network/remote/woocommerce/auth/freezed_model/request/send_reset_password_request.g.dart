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
    _$SendResetPasswordRequestImpl instance) {
  final val = <String, dynamic>{
    'email': instance.email,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('reset_url', instance.resetUrl);
  writeNotNull('metadata', instance.metadata);
  return val;
}
