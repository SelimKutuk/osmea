// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_group_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WishlistGroupResponseImpl _$$WishlistGroupResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WishlistGroupResponseImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      isDefault: json['is_default'] as bool?,
      itemCount: (json['item_count'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$WishlistGroupResponseImplToJson(
    _$WishlistGroupResponseImpl instance) {
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
  writeNotNull('item_count', instance.itemCount);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('user_id', instance.userId);
  return val;
}
