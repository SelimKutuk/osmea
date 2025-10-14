// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WishlistApiResponse<T> _$WishlistApiResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _WishlistApiResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$WishlistApiResponse<T> {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  T? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_code')
  String? get errorCode => throw _privateConstructorUsedError;
  List<String>? get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishlistApiResponseCopyWith<T, WishlistApiResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistApiResponseCopyWith<T, $Res> {
  factory $WishlistApiResponseCopyWith(WishlistApiResponse<T> value,
          $Res Function(WishlistApiResponse<T>) then) =
      _$WishlistApiResponseCopyWithImpl<T, $Res, WishlistApiResponse<T>>;
  @useResult
  $Res call(
      {bool? success,
      String? message,
      T? data,
      @JsonKey(name: 'error_code') String? errorCode,
      List<String>? errors});
}

/// @nodoc
class _$WishlistApiResponseCopyWithImpl<T, $Res,
        $Val extends WishlistApiResponse<T>>
    implements $WishlistApiResponseCopyWith<T, $Res> {
  _$WishlistApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? errorCode = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishlistApiResponseImplCopyWith<T, $Res>
    implements $WishlistApiResponseCopyWith<T, $Res> {
  factory _$$WishlistApiResponseImplCopyWith(_$WishlistApiResponseImpl<T> value,
          $Res Function(_$WishlistApiResponseImpl<T>) then) =
      __$$WishlistApiResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {bool? success,
      String? message,
      T? data,
      @JsonKey(name: 'error_code') String? errorCode,
      List<String>? errors});
}

/// @nodoc
class __$$WishlistApiResponseImplCopyWithImpl<T, $Res>
    extends _$WishlistApiResponseCopyWithImpl<T, $Res,
        _$WishlistApiResponseImpl<T>>
    implements _$$WishlistApiResponseImplCopyWith<T, $Res> {
  __$$WishlistApiResponseImplCopyWithImpl(_$WishlistApiResponseImpl<T> _value,
      $Res Function(_$WishlistApiResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? errorCode = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$WishlistApiResponseImpl<T>(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$WishlistApiResponseImpl<T> implements _WishlistApiResponse<T> {
  const _$WishlistApiResponseImpl(
      {this.success,
      this.message,
      this.data,
      @JsonKey(name: 'error_code') this.errorCode,
      final List<String>? errors})
      : _errors = errors;

  factory _$WishlistApiResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$WishlistApiResponseImplFromJson(json, fromJsonT);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final T? data;
  @override
  @JsonKey(name: 'error_code')
  final String? errorCode;
  final List<String>? _errors;
  @override
  List<String>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WishlistApiResponse<$T>(success: $success, message: $message, data: $data, errorCode: $errorCode, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistApiResponseImpl<T> &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      success,
      message,
      const DeepCollectionEquality().hash(data),
      errorCode,
      const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistApiResponseImplCopyWith<T, _$WishlistApiResponseImpl<T>>
      get copyWith => __$$WishlistApiResponseImplCopyWithImpl<T,
          _$WishlistApiResponseImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$WishlistApiResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _WishlistApiResponse<T> implements WishlistApiResponse<T> {
  const factory _WishlistApiResponse(
      {final bool? success,
      final String? message,
      final T? data,
      @JsonKey(name: 'error_code') final String? errorCode,
      final List<String>? errors}) = _$WishlistApiResponseImpl<T>;

  factory _WishlistApiResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$WishlistApiResponseImpl<T>.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  T? get data;
  @override
  @JsonKey(name: 'error_code')
  String? get errorCode;
  @override
  List<String>? get errors;
  @override
  @JsonKey(ignore: true)
  _$$WishlistApiResponseImplCopyWith<T, _$WishlistApiResponseImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

WishlistPaginatedResponse<T> _$WishlistPaginatedResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _WishlistPaginatedResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$WishlistPaginatedResponse<T> {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<T>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_items')
  int? get totalItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_code')
  String? get errorCode => throw _privateConstructorUsedError;
  List<String>? get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishlistPaginatedResponseCopyWith<T, WishlistPaginatedResponse<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistPaginatedResponseCopyWith<T, $Res> {
  factory $WishlistPaginatedResponseCopyWith(WishlistPaginatedResponse<T> value,
          $Res Function(WishlistPaginatedResponse<T>) then) =
      _$WishlistPaginatedResponseCopyWithImpl<T, $Res,
          WishlistPaginatedResponse<T>>;
  @useResult
  $Res call(
      {bool? success,
      String? message,
      List<T>? data,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'total_items') int? totalItems,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'error_code') String? errorCode,
      List<String>? errors});
}

/// @nodoc
class _$WishlistPaginatedResponseCopyWithImpl<T, $Res,
        $Val extends WishlistPaginatedResponse<T>>
    implements $WishlistPaginatedResponseCopyWith<T, $Res> {
  _$WishlistPaginatedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? totalItems = freezed,
    Object? totalPages = freezed,
    Object? errorCode = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishlistPaginatedResponseImplCopyWith<T, $Res>
    implements $WishlistPaginatedResponseCopyWith<T, $Res> {
  factory _$$WishlistPaginatedResponseImplCopyWith(
          _$WishlistPaginatedResponseImpl<T> value,
          $Res Function(_$WishlistPaginatedResponseImpl<T>) then) =
      __$$WishlistPaginatedResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {bool? success,
      String? message,
      List<T>? data,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'total_items') int? totalItems,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'error_code') String? errorCode,
      List<String>? errors});
}

/// @nodoc
class __$$WishlistPaginatedResponseImplCopyWithImpl<T, $Res>
    extends _$WishlistPaginatedResponseCopyWithImpl<T, $Res,
        _$WishlistPaginatedResponseImpl<T>>
    implements _$$WishlistPaginatedResponseImplCopyWith<T, $Res> {
  __$$WishlistPaginatedResponseImplCopyWithImpl(
      _$WishlistPaginatedResponseImpl<T> _value,
      $Res Function(_$WishlistPaginatedResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? totalItems = freezed,
    Object? totalPages = freezed,
    Object? errorCode = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$WishlistPaginatedResponseImpl<T>(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$WishlistPaginatedResponseImpl<T>
    implements _WishlistPaginatedResponse<T> {
  const _$WishlistPaginatedResponseImpl(
      {this.success,
      this.message,
      final List<T>? data,
      @JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'per_page') this.perPage,
      @JsonKey(name: 'total_items') this.totalItems,
      @JsonKey(name: 'total_pages') this.totalPages,
      @JsonKey(name: 'error_code') this.errorCode,
      final List<String>? errors})
      : _data = data,
        _errors = errors;

  factory _$WishlistPaginatedResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$WishlistPaginatedResponseImplFromJson(json, fromJsonT);

  @override
  final bool? success;
  @override
  final String? message;
  final List<T>? _data;
  @override
  List<T>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  @JsonKey(name: 'total_items')
  final int? totalItems;
  @override
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @override
  @JsonKey(name: 'error_code')
  final String? errorCode;
  final List<String>? _errors;
  @override
  List<String>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WishlistPaginatedResponse<$T>(success: $success, message: $message, data: $data, currentPage: $currentPage, perPage: $perPage, totalItems: $totalItems, totalPages: $totalPages, errorCode: $errorCode, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistPaginatedResponseImpl<T> &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      success,
      message,
      const DeepCollectionEquality().hash(_data),
      currentPage,
      perPage,
      totalItems,
      totalPages,
      errorCode,
      const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistPaginatedResponseImplCopyWith<T,
          _$WishlistPaginatedResponseImpl<T>>
      get copyWith => __$$WishlistPaginatedResponseImplCopyWithImpl<T,
          _$WishlistPaginatedResponseImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$WishlistPaginatedResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _WishlistPaginatedResponse<T>
    implements WishlistPaginatedResponse<T> {
  const factory _WishlistPaginatedResponse(
      {final bool? success,
      final String? message,
      final List<T>? data,
      @JsonKey(name: 'current_page') final int? currentPage,
      @JsonKey(name: 'per_page') final int? perPage,
      @JsonKey(name: 'total_items') final int? totalItems,
      @JsonKey(name: 'total_pages') final int? totalPages,
      @JsonKey(name: 'error_code') final String? errorCode,
      final List<String>? errors}) = _$WishlistPaginatedResponseImpl<T>;

  factory _WishlistPaginatedResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$WishlistPaginatedResponseImpl<T>.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  List<T>? get data;
  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  @JsonKey(name: 'total_items')
  int? get totalItems;
  @override
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @override
  @JsonKey(name: 'error_code')
  String? get errorCode;
  @override
  List<String>? get errors;
  @override
  @JsonKey(ignore: true)
  _$$WishlistPaginatedResponseImplCopyWith<T,
          _$WishlistPaginatedResponseImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
