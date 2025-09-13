// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserLoginResponseImpl _$$UserLoginResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserLoginResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : UserLoginData.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$UserLoginResponseImplToJson(
        _$UserLoginResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      if (instance.data?.toJson() case final value?) 'data': value,
      if (instance.error case final value?) 'error': value,
      if (instance.metadata case final value?) 'metadata': value,
    };

_$UserLoginDataImpl _$$UserLoginDataImplFromJson(Map<String, dynamic> json) =>
    _$UserLoginDataImpl(
      accessToken: json['access_token'] as String,
      tokenType: json['token_type'] as String,
      expiresIn: (json['expires_in'] as num).toInt(),
      refreshToken: json['refresh_token'] as String?,
      scope: json['scope'] as String?,
      user: UserInfo.fromJson(json['user'] as Map<String, dynamic>),
      issuedAt: json['issued_at'] == null
          ? null
          : DateTime.parse(json['issued_at'] as String),
      expiresAt: json['expires_at'] == null
          ? null
          : DateTime.parse(json['expires_at'] as String),
    );

Map<String, dynamic> _$$UserLoginDataImplToJson(_$UserLoginDataImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'expires_in': instance.expiresIn,
      if (instance.refreshToken case final value?) 'refresh_token': value,
      if (instance.scope case final value?) 'scope': value,
      'user': instance.user.toJson(),
      if (instance.issuedAt?.toIso8601String() case final value?)
        'issued_at': value,
      if (instance.expiresAt?.toIso8601String() case final value?)
        'expires_at': value,
    };

_$UserInfoImpl _$$UserInfoImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      phone: json['phone'] as String?,
      company: json['company'] as String?,
      avatar: json['avatar'] as String?,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
      billing: json['billing'] as Map<String, dynamic>?,
      shipping: json['shipping'] as Map<String, dynamic>?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      lastLoginAt: json['last_login_at'] == null
          ? null
          : DateTime.parse(json['last_login_at'] as String),
      isActive: json['is_active'] as bool?,
      isVerified: json['is_verified'] as bool?,
    );

Map<String, dynamic> _$$UserInfoImplToJson(_$UserInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      if (instance.phone case final value?) 'phone': value,
      if (instance.company case final value?) 'company': value,
      if (instance.avatar case final value?) 'avatar': value,
      if (instance.roles case final value?) 'roles': value,
      if (instance.billing case final value?) 'billing': value,
      if (instance.shipping case final value?) 'shipping': value,
      if (instance.createdAt?.toIso8601String() case final value?)
        'created_at': value,
      if (instance.updatedAt?.toIso8601String() case final value?)
        'updated_at': value,
      if (instance.lastLoginAt?.toIso8601String() case final value?)
        'last_login_at': value,
      if (instance.isActive case final value?) 'is_active': value,
      if (instance.isVerified case final value?) 'is_verified': value,
    };
