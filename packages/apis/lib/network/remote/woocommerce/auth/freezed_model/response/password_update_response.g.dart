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
    _$PasswordUpdateResponseImpl instance) {
  final val = <String, dynamic>{
    'success': instance.success,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('error', instance.error);
  writeNotNull('data', instance.data?.toJson());
  writeNotNull('metadata', instance.metadata);
  return val;
}

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
    _$PasswordUpdateDataImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  val['password_updated'] = instance.passwordUpdated;
  writeNotNull('updated_at', instance.updatedAt?.toIso8601String());
  return val;
}
