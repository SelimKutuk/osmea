// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WishlistApiResponseImpl<T> _$$WishlistApiResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$WishlistApiResponseImpl<T>(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      errorCode: json['error_code'] as String?,
      errors:
          (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$WishlistApiResponseImplToJson<T>(
  _$WishlistApiResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      if (instance.success case final value?) 'success': value,
      if (instance.message case final value?) 'message': value,
      if (_$nullableGenericToJson(instance.data, toJsonT) case final value?)
        'data': value,
      if (instance.errorCode case final value?) 'error_code': value,
      if (instance.errors case final value?) 'errors': value,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

_$WishlistPaginatedResponseImpl<T> _$$WishlistPaginatedResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$WishlistPaginatedResponseImpl<T>(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)?.map(fromJsonT).toList(),
      currentPage: (json['current_page'] as num?)?.toInt(),
      perPage: (json['per_page'] as num?)?.toInt(),
      totalItems: (json['total_items'] as num?)?.toInt(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      errorCode: json['error_code'] as String?,
      errors:
          (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$WishlistPaginatedResponseImplToJson<T>(
  _$WishlistPaginatedResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      if (instance.success case final value?) 'success': value,
      if (instance.message case final value?) 'message': value,
      if (instance.data?.map(toJsonT).toList() case final value?) 'data': value,
      if (instance.currentPage case final value?) 'current_page': value,
      if (instance.perPage case final value?) 'per_page': value,
      if (instance.totalItems case final value?) 'total_items': value,
      if (instance.totalPages case final value?) 'total_pages': value,
      if (instance.errorCode case final value?) 'error_code': value,
      if (instance.errors case final value?) 'errors': value,
    };
