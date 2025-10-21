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
    _$DeleteUserRequestImpl instance) {
  final val = <String, dynamic>{
    'user_id': instance.userId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('reason', instance.reason);
  val['delete_orders'] = instance.deleteOrders;
  val['delete_reviews'] = instance.deleteReviews;
  writeNotNull('metadata', instance.metadata);
  return val;
}
