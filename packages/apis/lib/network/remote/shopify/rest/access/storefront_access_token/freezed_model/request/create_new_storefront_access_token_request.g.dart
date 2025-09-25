// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_new_storefront_access_token_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateNewStorefrontAccessTokenRequestImpl
    _$$CreateNewStorefrontAccessTokenRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateNewStorefrontAccessTokenRequestImpl(
          storefrontAccessToken: json['storefront_access_token'] == null
              ? null
              : CreateNewStorefrontAccessTokenRequestBody.fromJson(
                  json['storefront_access_token'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateNewStorefrontAccessTokenRequestImplToJson(
    _$CreateNewStorefrontAccessTokenRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'storefront_access_token', instance.storefrontAccessToken?.toJson());
  return val;
}

_$CreateNewStorefrontAccessTokenRequestBodyImpl
    _$$CreateNewStorefrontAccessTokenRequestBodyImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateNewStorefrontAccessTokenRequestBodyImpl(
          title: json['title'] as String?,
        );

Map<String, dynamic> _$$CreateNewStorefrontAccessTokenRequestBodyImplToJson(
    _$CreateNewStorefrontAccessTokenRequestBodyImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  return val;
}
