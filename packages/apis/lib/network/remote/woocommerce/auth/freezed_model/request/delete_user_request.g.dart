// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteUserRequestImpl _$$DeleteUserRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteUserRequestImpl(
      userId: json['user_id'] as String,
      reason: json['reason'] as String?,
      deleteOrders: json['delete_orders'] as bool? ?? false,
      deleteReviews: json['delete_reviews'] as bool? ?? false,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$DeleteUserRequestImplToJson(
        _$DeleteUserRequestImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      if (instance.reason case final value?) 'reason': value,
      'delete_orders': instance.deleteOrders,
      'delete_reviews': instance.deleteReviews,
      if (instance.metadata case final value?) 'metadata': value,
    };
