// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_new_storefront_access_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateNewStorefrontAccessTokenResponseImpl
    _$$CreateNewStorefrontAccessTokenResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateNewStorefrontAccessTokenResponseImpl(
          storefrontAccessToken: json['storefront_access_token'] == null
              ? null
              : StorefrontAccessToken.fromJson(
                  json['storefront_access_token'] as Map<String, dynamic>),
          errors: json['errors'],
        );

Map<String, dynamic> _$$CreateNewStorefrontAccessTokenResponseImplToJson(
    _$CreateNewStorefrontAccessTokenResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'storefront_access_token', instance.storefrontAccessToken?.toJson());
  writeNotNull('errors', instance.errors);
  return val;
}

_$StorefrontAccessTokenImpl _$$StorefrontAccessTokenImplFromJson(
        Map<String, dynamic> json) =>
    _$StorefrontAccessTokenImpl(
      accessToken: json['access_token'] as String?,
      accessScope: json['access_scope'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      id: (json['id'] as num?)?.toInt(),
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$StorefrontAccessTokenImplToJson(
    _$StorefrontAccessTokenImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('access_token', instance.accessToken);
  writeNotNull('access_scope', instance.accessScope);
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('id', instance.id);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull('title', instance.title);
  return val;
}
