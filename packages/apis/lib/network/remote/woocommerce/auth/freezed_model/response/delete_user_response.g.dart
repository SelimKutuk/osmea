// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteUserResponseImpl _$$DeleteUserResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteUserResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : DeleteUserData.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$DeleteUserResponseImplToJson(
        _$DeleteUserResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      if (instance.data?.toJson() case final value?) 'data': value,
      if (instance.error case final value?) 'error': value,
      if (instance.metadata case final value?) 'metadata': value,
    };

_$DeleteUserDataImpl _$$DeleteUserDataImplFromJson(Map<String, dynamic> json) =>
    _$DeleteUserDataImpl(
      userId: json['user_id'] as String,
      email: json['email'] as String,
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      reason: json['reason'] as String?,
      ordersDeleted: json['orders_deleted'] as bool?,
      reviewsDeleted: json['reviews_deleted'] as bool?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$DeleteUserDataImplToJson(
        _$DeleteUserDataImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'email': instance.email,
      if (instance.deletedAt?.toIso8601String() case final value?)
        'deleted_at': value,
      if (instance.reason case final value?) 'reason': value,
      if (instance.ordersDeleted case final value?) 'orders_deleted': value,
      if (instance.reviewsDeleted case final value?) 'reviews_deleted': value,
      if (instance.metadata case final value?) 'metadata': value,
    };
