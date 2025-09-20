// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_wishlist_group_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateWishlistGroupResponseImpl _$$CreateWishlistGroupResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateWishlistGroupResponseImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : WishlistGroupData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateWishlistGroupResponseImplToJson(
        _$CreateWishlistGroupResponseImpl instance) =>
    <String, dynamic>{
      if (instance.success case final value?) 'success': value,
      if (instance.message case final value?) 'message': value,
      if (instance.data?.toJson() case final value?) 'data': value,
    };

_$WishlistGroupDataImpl _$$WishlistGroupDataImplFromJson(
        Map<String, dynamic> json) =>
    _$WishlistGroupDataImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      isDefault: json['is_default'] as bool?,
      userId: (json['user_id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$WishlistGroupDataImplToJson(
        _$WishlistGroupDataImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.description case final value?) 'description': value,
      if (instance.isDefault case final value?) 'is_default': value,
      if (instance.userId case final value?) 'user_id': value,
      if (instance.createdAt case final value?) 'created_at': value,
    };
