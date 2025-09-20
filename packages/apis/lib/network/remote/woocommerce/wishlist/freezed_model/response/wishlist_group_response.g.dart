// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_group_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WishlistGroupResponseImpl _$$WishlistGroupResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WishlistGroupResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      isDefault: json['is_default'] as bool?,
      itemCount: (json['item_count'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$WishlistGroupResponseImplToJson(
        _$WishlistGroupResponseImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.description case final value?) 'description': value,
      if (instance.isDefault case final value?) 'is_default': value,
      if (instance.itemCount case final value?) 'item_count': value,
      if (instance.createdAt case final value?) 'created_at': value,
      if (instance.updatedAt case final value?) 'updated_at': value,
      if (instance.userId case final value?) 'user_id': value,
    };
