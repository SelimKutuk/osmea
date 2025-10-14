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
    _$CreateWishlistGroupResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('success', instance.success);
  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

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
    _$WishlistGroupDataImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('is_default', instance.isDefault);
  writeNotNull('user_id', instance.userId);
  writeNotNull('created_at', instance.createdAt);
  return val;
}
