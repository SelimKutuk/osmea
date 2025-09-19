// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_update_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasswordUpdateResponseImpl _$$PasswordUpdateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PasswordUpdateResponseImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
      error: json['error'] as String?,
      data: json['data'] == null
          ? null
          : PasswordUpdateData.fromJson(json['data'] as Map<String, dynamic>),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$PasswordUpdateResponseImplToJson(
        _$PasswordUpdateResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      if (instance.message case final value?) 'message': value,
      if (instance.error case final value?) 'error': value,
      if (instance.data?.toJson() case final value?) 'data': value,
      if (instance.metadata case final value?) 'metadata': value,
    };

_$PasswordUpdateDataImpl _$$PasswordUpdateDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PasswordUpdateDataImpl(
      email: json['email'] as String?,
      passwordUpdated: json['password_updated'] as bool? ?? false,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$PasswordUpdateDataImplToJson(
        _$PasswordUpdateDataImpl instance) =>
    <String, dynamic>{
      if (instance.email case final value?) 'email': value,
      'password_updated': instance.passwordUpdated,
      if (instance.updatedAt?.toIso8601String() case final value?)
        'updated_at': value,
    };
