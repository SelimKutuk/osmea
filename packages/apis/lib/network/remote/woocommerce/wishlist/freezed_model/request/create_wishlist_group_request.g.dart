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
        _$CreateWishlistGroupRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      if (instance.description case final value?) 'description': value,
    };
