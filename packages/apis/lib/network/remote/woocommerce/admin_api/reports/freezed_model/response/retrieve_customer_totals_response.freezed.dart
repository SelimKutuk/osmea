// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'retrieve_customer_totals_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RetrieveCustomerTotalsResponse _$RetrieveCustomerTotalsResponseFromJson(
    Map<String, dynamic> json) {
  return _RetrieveCustomerTotalsResponse.fromJson(json);
}

/// @nodoc
mixin _$RetrieveCustomerTotalsResponse {
  @JsonKey(name: "slug")
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RetrieveCustomerTotalsResponseCopyWith<RetrieveCustomerTotalsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RetrieveCustomerTotalsResponseCopyWith<$Res> {
  factory $RetrieveCustomerTotalsResponseCopyWith(
          RetrieveCustomerTotalsResponse value,
          $Res Function(RetrieveCustomerTotalsResponse) then) =
      _$RetrieveCustomerTotalsResponseCopyWithImpl<$Res,
          RetrieveCustomerTotalsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "slug") String? slug,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "total") int? total});
}

/// @nodoc
class _$RetrieveCustomerTotalsResponseCopyWithImpl<$Res,
        $Val extends RetrieveCustomerTotalsResponse>
    implements $RetrieveCustomerTotalsResponseCopyWith<$Res> {
  _$RetrieveCustomerTotalsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = freezed,
    Object? name = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RetrieveCustomerTotalsResponseImplCopyWith<$Res>
    implements $RetrieveCustomerTotalsResponseCopyWith<$Res> {
  factory _$$RetrieveCustomerTotalsResponseImplCopyWith(
          _$RetrieveCustomerTotalsResponseImpl value,
          $Res Function(_$RetrieveCustomerTotalsResponseImpl) then) =
      __$$RetrieveCustomerTotalsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "slug") String? slug,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "total") int? total});
}

/// @nodoc
class __$$RetrieveCustomerTotalsResponseImplCopyWithImpl<$Res>
    extends _$RetrieveCustomerTotalsResponseCopyWithImpl<$Res,
        _$RetrieveCustomerTotalsResponseImpl>
    implements _$$RetrieveCustomerTotalsResponseImplCopyWith<$Res> {
  __$$RetrieveCustomerTotalsResponseImplCopyWithImpl(
      _$RetrieveCustomerTotalsResponseImpl _value,
      $Res Function(_$RetrieveCustomerTotalsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = freezed,
    Object? name = freezed,
    Object? total = freezed,
  }) {
    return _then(_$RetrieveCustomerTotalsResponseImpl(
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RetrieveCustomerTotalsResponseImpl
    implements _RetrieveCustomerTotalsResponse {
  const _$RetrieveCustomerTotalsResponseImpl(
      {@JsonKey(name: "slug") this.slug,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "total") this.total});

  factory _$RetrieveCustomerTotalsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RetrieveCustomerTotalsResponseImplFromJson(json);

  @override
  @JsonKey(name: "slug")
  final String? slug;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "total")
  final int? total;

  @override
  String toString() {
    return 'RetrieveCustomerTotalsResponse(slug: $slug, name: $name, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetrieveCustomerTotalsResponseImpl &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slug, name, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RetrieveCustomerTotalsResponseImplCopyWith<
          _$RetrieveCustomerTotalsResponseImpl>
      get copyWith => __$$RetrieveCustomerTotalsResponseImplCopyWithImpl<
          _$RetrieveCustomerTotalsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RetrieveCustomerTotalsResponseImplToJson(
      this,
    );
  }
}

abstract class _RetrieveCustomerTotalsResponse
    implements RetrieveCustomerTotalsResponse {
  const factory _RetrieveCustomerTotalsResponse(
          {@JsonKey(name: "slug") final String? slug,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "total") final int? total}) =
      _$RetrieveCustomerTotalsResponseImpl;

  factory _RetrieveCustomerTotalsResponse.fromJson(Map<String, dynamic> json) =
      _$RetrieveCustomerTotalsResponseImpl.fromJson;

  @override
  @JsonKey(name: "slug")
  String? get slug;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "total")
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$RetrieveCustomerTotalsResponseImplCopyWith<
          _$RetrieveCustomerTotalsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
