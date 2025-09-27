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
) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('success', instance.success);
  writeNotNull('message', instance.message);
  writeNotNull('data', _$nullableGenericToJson(instance.data, toJsonT));
  writeNotNull('error_code', instance.errorCode);
  writeNotNull('errors', instance.errors);
  return val;
}

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
) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('success', instance.success);
  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data?.map(toJsonT).toList());
  writeNotNull('current_page', instance.currentPage);
  writeNotNull('per_page', instance.perPage);
  writeNotNull('total_items', instance.totalItems);
  writeNotNull('total_pages', instance.totalPages);
  writeNotNull('error_code', instance.errorCode);
  writeNotNull('errors', instance.errors);
  return val;
}
