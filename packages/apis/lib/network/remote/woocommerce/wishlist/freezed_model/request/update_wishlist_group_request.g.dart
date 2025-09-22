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
        _$UpdateWishlistGroupRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      if (instance.description case final value?) 'description': value,
    };
