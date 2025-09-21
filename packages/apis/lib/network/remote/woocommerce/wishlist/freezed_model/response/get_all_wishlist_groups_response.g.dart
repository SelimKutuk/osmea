// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_wishlist_groups_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllWishlistGroupsResponseImpl _$$GetAllWishlistGroupsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAllWishlistGroupsResponseImpl(
      groups: (json['groups'] as List<dynamic>?)
          ?.map(
              (e) => WishlistGroupResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetAllWishlistGroupsResponseImplToJson(
        _$GetAllWishlistGroupsResponseImpl instance) =>
    <String, dynamic>{
      if (instance.groups?.map((e) => e.toJson()).toList() case final value?)
        'groups': value,
    };
