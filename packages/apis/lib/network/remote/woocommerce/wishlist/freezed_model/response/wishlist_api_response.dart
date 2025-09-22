import 'package:freezed_annotation/freezed_annotation.dart';

part 'wishlist_api_response.freezed.dart';
part 'wishlist_api_response.g.dart';

/// Generic API response wrapper for wishlist operations
@Freezed(genericArgumentFactories: true)
class WishlistApiResponse<T> with _$WishlistApiResponse<T> {
  const factory WishlistApiResponse({
    bool? success,
    String? message,
    T? data,
    @JsonKey(name: 'error_code') String? errorCode,
    List<String>? errors,
  }) = _WishlistApiResponse<T>;

  factory WishlistApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$WishlistApiResponseFromJson(json, fromJsonT);
}

/// Paginated response wrapper for wishlist data
@Freezed(genericArgumentFactories: true)
class WishlistPaginatedResponse<T> with _$WishlistPaginatedResponse<T> {
  const factory WishlistPaginatedResponse({
    bool? success,
    String? message,
    List<T>? data,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'total_items') int? totalItems,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'error_code') String? errorCode,
    List<String>? errors,
  }) = _WishlistPaginatedResponse<T>;

  factory WishlistPaginatedResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$WishlistPaginatedResponseFromJson(json, fromJsonT);
}