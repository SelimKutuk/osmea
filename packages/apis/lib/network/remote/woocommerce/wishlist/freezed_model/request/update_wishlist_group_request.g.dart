// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_wishlist_group_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateWishlistGroupRequestImpl _$$UpdateWishlistGroupRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateWishlistGroupRequestImpl(
      name: json['name'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$UpdateWishlistGroupRequestImplToJson(
    _$UpdateWishlistGroupRequestImpl instance) {
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
