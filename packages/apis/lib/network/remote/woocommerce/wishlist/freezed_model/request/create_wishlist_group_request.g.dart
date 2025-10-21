// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_wishlist_group_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateWishlistGroupRequestImpl _$$CreateWishlistGroupRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateWishlistGroupRequestImpl(
      name: json['name'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$CreateWishlistGroupRequestImplToJson(
    _$CreateWishlistGroupRequestImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  return val;
}
