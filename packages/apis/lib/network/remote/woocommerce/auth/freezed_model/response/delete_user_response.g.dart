// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteUserResponseImpl _$$DeleteUserResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteUserResponseImpl(
      success: json['success'] as bool? ?? true,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DeleteUserData.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$DeleteUserResponseImplToJson(
    _$DeleteUserResponseImpl instance) {
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

_$DeleteUserDataImpl _$$DeleteUserDataImplFromJson(Map<String, dynamic> json) =>
    _$DeleteUserDataImpl(
      userId: json['id'] as String,
      email: json['email'] as String?,
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      reason: json['reason'] as String?,
      ordersDeleted: json['orders_deleted'] as bool?,
      reviewsDeleted: json['reviews_deleted'] as bool?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$DeleteUserDataImplToJson(
    _$DeleteUserDataImpl instance) {
  final val = <String, dynamic>{
    'id': instance.userId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('reason', instance.reason);
  writeNotNull('orders_deleted', instance.ordersDeleted);
  writeNotNull('reviews_deleted', instance.reviewsDeleted);
  writeNotNull('metadata', instance.metadata);
  return val;
}
