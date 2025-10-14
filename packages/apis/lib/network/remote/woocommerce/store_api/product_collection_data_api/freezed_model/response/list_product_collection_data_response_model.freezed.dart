// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_product_collection_data_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListProductCollectionDataResponseModel
    _$ListProductCollectionDataResponseModelFromJson(
        Map<String, dynamic> json) {
  return _ListProductCollectionDataResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ListProductCollectionDataResponseModel {
  @JsonKey(name: "price_range")
  PriceRange? get priceRange => throw _privateConstructorUsedError;
  @JsonKey(name: "attribute_counts")
  List<Count>? get attributeCounts => throw _privateConstructorUsedError;
  @JsonKey(name: "rating_counts")
  List<RatingCount>? get ratingCounts => throw _privateConstructorUsedError;
  @JsonKey(name: "taxonomy_counts")
  List<Count>? get taxonomyCounts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListProductCollectionDataResponseModelCopyWith<
          ListProductCollectionDataResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListProductCollectionDataResponseModelCopyWith<$Res> {
  factory $ListProductCollectionDataResponseModelCopyWith(
          ListProductCollectionDataResponseModel value,
          $Res Function(ListProductCollectionDataResponseModel) then) =
      _$ListProductCollectionDataResponseModelCopyWithImpl<$Res,
          ListProductCollectionDataResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "price_range") PriceRange? priceRange,
      @JsonKey(name: "attribute_counts") List<Count>? attributeCounts,
      @JsonKey(name: "rating_counts") List<RatingCount>? ratingCounts,
      @JsonKey(name: "taxonomy_counts") List<Count>? taxonomyCounts});

  $PriceRangeCopyWith<$Res>? get priceRange;
}

/// @nodoc
class _$ListProductCollectionDataResponseModelCopyWithImpl<$Res,
        $Val extends ListProductCollectionDataResponseModel>
    implements $ListProductCollectionDataResponseModelCopyWith<$Res> {
  _$ListProductCollectionDataResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priceRange = freezed,
    Object? attributeCounts = freezed,
    Object? ratingCounts = freezed,
    Object? taxonomyCounts = freezed,
  }) {
    return _then(_value.copyWith(
      priceRange: freezed == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as PriceRange?,
      attributeCounts: freezed == attributeCounts
          ? _value.attributeCounts
          : attributeCounts // ignore: cast_nullable_to_non_nullable
              as List<Count>?,
      ratingCounts: freezed == ratingCounts
          ? _value.ratingCounts
          : ratingCounts // ignore: cast_nullable_to_non_nullable
              as List<RatingCount>?,
      taxonomyCounts: freezed == taxonomyCounts
          ? _value.taxonomyCounts
          : taxonomyCounts // ignore: cast_nullable_to_non_nullable
              as List<Count>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceRangeCopyWith<$Res>? get priceRange {
    if (_value.priceRange == null) {
      return null;
    }

    return $PriceRangeCopyWith<$Res>(_value.priceRange!, (value) {
      return _then(_value.copyWith(priceRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ListProductCollectionDataResponseModelImplCopyWith<$Res>
    implements $ListProductCollectionDataResponseModelCopyWith<$Res> {
  factory _$$ListProductCollectionDataResponseModelImplCopyWith(
          _$ListProductCollectionDataResponseModelImpl value,
          $Res Function(_$ListProductCollectionDataResponseModelImpl) then) =
      __$$ListProductCollectionDataResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "price_range") PriceRange? priceRange,
      @JsonKey(name: "attribute_counts") List<Count>? attributeCounts,
      @JsonKey(name: "rating_counts") List<RatingCount>? ratingCounts,
      @JsonKey(name: "taxonomy_counts") List<Count>? taxonomyCounts});

  @override
  $PriceRangeCopyWith<$Res>? get priceRange;
}

/// @nodoc
class __$$ListProductCollectionDataResponseModelImplCopyWithImpl<$Res>
    extends _$ListProductCollectionDataResponseModelCopyWithImpl<$Res,
        _$ListProductCollectionDataResponseModelImpl>
    implements _$$ListProductCollectionDataResponseModelImplCopyWith<$Res> {
  __$$ListProductCollectionDataResponseModelImplCopyWithImpl(
      _$ListProductCollectionDataResponseModelImpl _value,
      $Res Function(_$ListProductCollectionDataResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priceRange = freezed,
    Object? attributeCounts = freezed,
    Object? ratingCounts = freezed,
    Object? taxonomyCounts = freezed,
  }) {
    return _then(_$ListProductCollectionDataResponseModelImpl(
      priceRange: freezed == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as PriceRange?,
      attributeCounts: freezed == attributeCounts
          ? _value._attributeCounts
          : attributeCounts // ignore: cast_nullable_to_non_nullable
              as List<Count>?,
      ratingCounts: freezed == ratingCounts
          ? _value._ratingCounts
          : ratingCounts // ignore: cast_nullable_to_non_nullable
              as List<RatingCount>?,
      taxonomyCounts: freezed == taxonomyCounts
          ? _value._taxonomyCounts
          : taxonomyCounts // ignore: cast_nullable_to_non_nullable
              as List<Count>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListProductCollectionDataResponseModelImpl
    implements _ListProductCollectionDataResponseModel {
  const _$ListProductCollectionDataResponseModelImpl(
      {@JsonKey(name: "price_range") this.priceRange,
      @JsonKey(name: "attribute_counts") final List<Count>? attributeCounts,
      @JsonKey(name: "rating_counts") final List<RatingCount>? ratingCounts,
      @JsonKey(name: "taxonomy_counts") final List<Count>? taxonomyCounts})
      : _attributeCounts = attributeCounts,
        _ratingCounts = ratingCounts,
        _taxonomyCounts = taxonomyCounts;

  factory _$ListProductCollectionDataResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ListProductCollectionDataResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "price_range")
  final PriceRange? priceRange;
  final List<Count>? _attributeCounts;
  @override
  @JsonKey(name: "attribute_counts")
  List<Count>? get attributeCounts {
    final value = _attributeCounts;
    if (value == null) return null;
    if (_attributeCounts is EqualUnmodifiableListView) return _attributeCounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RatingCount>? _ratingCounts;
  @override
  @JsonKey(name: "rating_counts")
  List<RatingCount>? get ratingCounts {
    final value = _ratingCounts;
    if (value == null) return null;
    if (_ratingCounts is EqualUnmodifiableListView) return _ratingCounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Count>? _taxonomyCounts;
  @override
  @JsonKey(name: "taxonomy_counts")
  List<Count>? get taxonomyCounts {
    final value = _taxonomyCounts;
    if (value == null) return null;
    if (_taxonomyCounts is EqualUnmodifiableListView) return _taxonomyCounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListProductCollectionDataResponseModel(priceRange: $priceRange, attributeCounts: $attributeCounts, ratingCounts: $ratingCounts, taxonomyCounts: $taxonomyCounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListProductCollectionDataResponseModelImpl &&
            (identical(other.priceRange, priceRange) ||
                other.priceRange == priceRange) &&
            const DeepCollectionEquality()
                .equals(other._attributeCounts, _attributeCounts) &&
            const DeepCollectionEquality()
                .equals(other._ratingCounts, _ratingCounts) &&
            const DeepCollectionEquality()
                .equals(other._taxonomyCounts, _taxonomyCounts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      priceRange,
      const DeepCollectionEquality().hash(_attributeCounts),
      const DeepCollectionEquality().hash(_ratingCounts),
      const DeepCollectionEquality().hash(_taxonomyCounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListProductCollectionDataResponseModelImplCopyWith<
          _$ListProductCollectionDataResponseModelImpl>
      get copyWith =>
          __$$ListProductCollectionDataResponseModelImplCopyWithImpl<
              _$ListProductCollectionDataResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListProductCollectionDataResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ListProductCollectionDataResponseModel
    implements ListProductCollectionDataResponseModel {
  const factory _ListProductCollectionDataResponseModel(
          {@JsonKey(name: "price_range") final PriceRange? priceRange,
          @JsonKey(name: "attribute_counts") final List<Count>? attributeCounts,
          @JsonKey(name: "rating_counts") final List<RatingCount>? ratingCounts,
          @JsonKey(name: "taxonomy_counts")
          final List<Count>? taxonomyCounts}) =
      _$ListProductCollectionDataResponseModelImpl;

  factory _ListProductCollectionDataResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$ListProductCollectionDataResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "price_range")
  PriceRange? get priceRange;
  @override
  @JsonKey(name: "attribute_counts")
  List<Count>? get attributeCounts;
  @override
  @JsonKey(name: "rating_counts")
  List<RatingCount>? get ratingCounts;
  @override
  @JsonKey(name: "taxonomy_counts")
  List<Count>? get taxonomyCounts;
  @override
  @JsonKey(ignore: true)
  _$$ListProductCollectionDataResponseModelImplCopyWith<
          _$ListProductCollectionDataResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Count _$CountFromJson(Map<String, dynamic> json) {
  return _Count.fromJson(json);
}

/// @nodoc
mixin _$Count {
  @JsonKey(name: "term")
  int? get term => throw _privateConstructorUsedError;
  @JsonKey(name: "count")
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountCopyWith<Count> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountCopyWith<$Res> {
  factory $CountCopyWith(Count value, $Res Function(Count) then) =
      _$CountCopyWithImpl<$Res, Count>;
  @useResult
  $Res call(
      {@JsonKey(name: "term") int? term, @JsonKey(name: "count") int? count});
}

/// @nodoc
class _$CountCopyWithImpl<$Res, $Val extends Count>
    implements $CountCopyWith<$Res> {
  _$CountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? term = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      term: freezed == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountImplCopyWith<$Res> implements $CountCopyWith<$Res> {
  factory _$$CountImplCopyWith(
          _$CountImpl value, $Res Function(_$CountImpl) then) =
      __$$CountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "term") int? term, @JsonKey(name: "count") int? count});
}

/// @nodoc
class __$$CountImplCopyWithImpl<$Res>
    extends _$CountCopyWithImpl<$Res, _$CountImpl>
    implements _$$CountImplCopyWith<$Res> {
  __$$CountImplCopyWithImpl(
      _$CountImpl _value, $Res Function(_$CountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? term = freezed,
    Object? count = freezed,
  }) {
    return _then(_$CountImpl(
      term: freezed == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountImpl implements _Count {
  const _$CountImpl(
      {@JsonKey(name: "term") this.term, @JsonKey(name: "count") this.count});

  factory _$CountImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountImplFromJson(json);

  @override
  @JsonKey(name: "term")
  final int? term;
  @override
  @JsonKey(name: "count")
  final int? count;

  @override
  String toString() {
    return 'Count(term: $term, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountImpl &&
            (identical(other.term, term) || other.term == term) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, term, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountImplCopyWith<_$CountImpl> get copyWith =>
      __$$CountImplCopyWithImpl<_$CountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountImplToJson(
      this,
    );
  }
}

abstract class _Count implements Count {
  const factory _Count(
      {@JsonKey(name: "term") final int? term,
      @JsonKey(name: "count") final int? count}) = _$CountImpl;

  factory _Count.fromJson(Map<String, dynamic> json) = _$CountImpl.fromJson;

  @override
  @JsonKey(name: "term")
  int? get term;
  @override
  @JsonKey(name: "count")
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$CountImplCopyWith<_$CountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PriceRange _$PriceRangeFromJson(Map<String, dynamic> json) {
  return _PriceRange.fromJson(json);
}

/// @nodoc
mixin _$PriceRange {
  @JsonKey(name: "currency_minor_unit")
  int? get currencyMinorUnit => throw _privateConstructorUsedError;
  @JsonKey(name: "min_price")
  String? get minPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "max_price")
  String? get maxPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_code")
  String? get currencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_decimal_separator")
  String? get currencyDecimalSeparator => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_prefix")
  String? get currencyPrefix => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_suffix")
  String? get currencySuffix => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_symbol")
  String? get currencySymbol => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_thousand_separator")
  String? get currencyThousandSeparator => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceRangeCopyWith<PriceRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceRangeCopyWith<$Res> {
  factory $PriceRangeCopyWith(
          PriceRange value, $Res Function(PriceRange) then) =
      _$PriceRangeCopyWithImpl<$Res, PriceRange>;
  @useResult
  $Res call(
      {@JsonKey(name: "currency_minor_unit") int? currencyMinorUnit,
      @JsonKey(name: "min_price") String? minPrice,
      @JsonKey(name: "max_price") String? maxPrice,
      @JsonKey(name: "currency_code") String? currencyCode,
      @JsonKey(name: "currency_decimal_separator")
      String? currencyDecimalSeparator,
      @JsonKey(name: "currency_prefix") String? currencyPrefix,
      @JsonKey(name: "currency_suffix") String? currencySuffix,
      @JsonKey(name: "currency_symbol") String? currencySymbol,
      @JsonKey(name: "currency_thousand_separator")
      String? currencyThousandSeparator});
}

/// @nodoc
class _$PriceRangeCopyWithImpl<$Res, $Val extends PriceRange>
    implements $PriceRangeCopyWith<$Res> {
  _$PriceRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyMinorUnit = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? currencyCode = freezed,
    Object? currencyDecimalSeparator = freezed,
    Object? currencyPrefix = freezed,
    Object? currencySuffix = freezed,
    Object? currencySymbol = freezed,
    Object? currencyThousandSeparator = freezed,
  }) {
    return _then(_value.copyWith(
      currencyMinorUnit: freezed == currencyMinorUnit
          ? _value.currencyMinorUnit
          : currencyMinorUnit // ignore: cast_nullable_to_non_nullable
              as int?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyDecimalSeparator: freezed == currencyDecimalSeparator
          ? _value.currencyDecimalSeparator
          : currencyDecimalSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyPrefix: freezed == currencyPrefix
          ? _value.currencyPrefix
          : currencyPrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySuffix: freezed == currencySuffix
          ? _value.currencySuffix
          : currencySuffix // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyThousandSeparator: freezed == currencyThousandSeparator
          ? _value.currencyThousandSeparator
          : currencyThousandSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriceRangeImplCopyWith<$Res>
    implements $PriceRangeCopyWith<$Res> {
  factory _$$PriceRangeImplCopyWith(
          _$PriceRangeImpl value, $Res Function(_$PriceRangeImpl) then) =
      __$$PriceRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "currency_minor_unit") int? currencyMinorUnit,
      @JsonKey(name: "min_price") String? minPrice,
      @JsonKey(name: "max_price") String? maxPrice,
      @JsonKey(name: "currency_code") String? currencyCode,
      @JsonKey(name: "currency_decimal_separator")
      String? currencyDecimalSeparator,
      @JsonKey(name: "currency_prefix") String? currencyPrefix,
      @JsonKey(name: "currency_suffix") String? currencySuffix,
      @JsonKey(name: "currency_symbol") String? currencySymbol,
      @JsonKey(name: "currency_thousand_separator")
      String? currencyThousandSeparator});
}

/// @nodoc
class __$$PriceRangeImplCopyWithImpl<$Res>
    extends _$PriceRangeCopyWithImpl<$Res, _$PriceRangeImpl>
    implements _$$PriceRangeImplCopyWith<$Res> {
  __$$PriceRangeImplCopyWithImpl(
      _$PriceRangeImpl _value, $Res Function(_$PriceRangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyMinorUnit = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? currencyCode = freezed,
    Object? currencyDecimalSeparator = freezed,
    Object? currencyPrefix = freezed,
    Object? currencySuffix = freezed,
    Object? currencySymbol = freezed,
    Object? currencyThousandSeparator = freezed,
  }) {
    return _then(_$PriceRangeImpl(
      currencyMinorUnit: freezed == currencyMinorUnit
          ? _value.currencyMinorUnit
          : currencyMinorUnit // ignore: cast_nullable_to_non_nullable
              as int?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyDecimalSeparator: freezed == currencyDecimalSeparator
          ? _value.currencyDecimalSeparator
          : currencyDecimalSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyPrefix: freezed == currencyPrefix
          ? _value.currencyPrefix
          : currencyPrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySuffix: freezed == currencySuffix
          ? _value.currencySuffix
          : currencySuffix // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyThousandSeparator: freezed == currencyThousandSeparator
          ? _value.currencyThousandSeparator
          : currencyThousandSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceRangeImpl implements _PriceRange {
  const _$PriceRangeImpl(
      {@JsonKey(name: "currency_minor_unit") this.currencyMinorUnit,
      @JsonKey(name: "min_price") this.minPrice,
      @JsonKey(name: "max_price") this.maxPrice,
      @JsonKey(name: "currency_code") this.currencyCode,
      @JsonKey(name: "currency_decimal_separator")
      this.currencyDecimalSeparator,
      @JsonKey(name: "currency_prefix") this.currencyPrefix,
      @JsonKey(name: "currency_suffix") this.currencySuffix,
      @JsonKey(name: "currency_symbol") this.currencySymbol,
      @JsonKey(name: "currency_thousand_separator")
      this.currencyThousandSeparator});

  factory _$PriceRangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceRangeImplFromJson(json);

  @override
  @JsonKey(name: "currency_minor_unit")
  final int? currencyMinorUnit;
  @override
  @JsonKey(name: "min_price")
  final String? minPrice;
  @override
  @JsonKey(name: "max_price")
  final String? maxPrice;
  @override
  @JsonKey(name: "currency_code")
  final String? currencyCode;
  @override
  @JsonKey(name: "currency_decimal_separator")
  final String? currencyDecimalSeparator;
  @override
  @JsonKey(name: "currency_prefix")
  final String? currencyPrefix;
  @override
  @JsonKey(name: "currency_suffix")
  final String? currencySuffix;
  @override
  @JsonKey(name: "currency_symbol")
  final String? currencySymbol;
  @override
  @JsonKey(name: "currency_thousand_separator")
  final String? currencyThousandSeparator;

  @override
  String toString() {
    return 'PriceRange(currencyMinorUnit: $currencyMinorUnit, minPrice: $minPrice, maxPrice: $maxPrice, currencyCode: $currencyCode, currencyDecimalSeparator: $currencyDecimalSeparator, currencyPrefix: $currencyPrefix, currencySuffix: $currencySuffix, currencySymbol: $currencySymbol, currencyThousandSeparator: $currencyThousandSeparator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceRangeImpl &&
            (identical(other.currencyMinorUnit, currencyMinorUnit) ||
                other.currencyMinorUnit == currencyMinorUnit) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(
                    other.currencyDecimalSeparator, currencyDecimalSeparator) ||
                other.currencyDecimalSeparator == currencyDecimalSeparator) &&
            (identical(other.currencyPrefix, currencyPrefix) ||
                other.currencyPrefix == currencyPrefix) &&
            (identical(other.currencySuffix, currencySuffix) ||
                other.currencySuffix == currencySuffix) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.currencyThousandSeparator,
                    currencyThousandSeparator) ||
                other.currencyThousandSeparator == currencyThousandSeparator));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currencyMinorUnit,
      minPrice,
      maxPrice,
      currencyCode,
      currencyDecimalSeparator,
      currencyPrefix,
      currencySuffix,
      currencySymbol,
      currencyThousandSeparator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceRangeImplCopyWith<_$PriceRangeImpl> get copyWith =>
      __$$PriceRangeImplCopyWithImpl<_$PriceRangeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceRangeImplToJson(
      this,
    );
  }
}

abstract class _PriceRange implements PriceRange {
  const factory _PriceRange(
      {@JsonKey(name: "currency_minor_unit") final int? currencyMinorUnit,
      @JsonKey(name: "min_price") final String? minPrice,
      @JsonKey(name: "max_price") final String? maxPrice,
      @JsonKey(name: "currency_code") final String? currencyCode,
      @JsonKey(name: "currency_decimal_separator")
      final String? currencyDecimalSeparator,
      @JsonKey(name: "currency_prefix") final String? currencyPrefix,
      @JsonKey(name: "currency_suffix") final String? currencySuffix,
      @JsonKey(name: "currency_symbol") final String? currencySymbol,
      @JsonKey(name: "currency_thousand_separator")
      final String? currencyThousandSeparator}) = _$PriceRangeImpl;

  factory _PriceRange.fromJson(Map<String, dynamic> json) =
      _$PriceRangeImpl.fromJson;

  @override
  @JsonKey(name: "currency_minor_unit")
  int? get currencyMinorUnit;
  @override
  @JsonKey(name: "min_price")
  String? get minPrice;
  @override
  @JsonKey(name: "max_price")
  String? get maxPrice;
  @override
  @JsonKey(name: "currency_code")
  String? get currencyCode;
  @override
  @JsonKey(name: "currency_decimal_separator")
  String? get currencyDecimalSeparator;
  @override
  @JsonKey(name: "currency_prefix")
  String? get currencyPrefix;
  @override
  @JsonKey(name: "currency_suffix")
  String? get currencySuffix;
  @override
  @JsonKey(name: "currency_symbol")
  String? get currencySymbol;
  @override
  @JsonKey(name: "currency_thousand_separator")
  String? get currencyThousandSeparator;
  @override
  @JsonKey(ignore: true)
  _$$PriceRangeImplCopyWith<_$PriceRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RatingCount _$RatingCountFromJson(Map<String, dynamic> json) {
  return _RatingCount.fromJson(json);
}

/// @nodoc
mixin _$RatingCount {
  @JsonKey(name: "rating")
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "count")
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingCountCopyWith<RatingCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCountCopyWith<$Res> {
  factory $RatingCountCopyWith(
          RatingCount value, $Res Function(RatingCount) then) =
      _$RatingCountCopyWithImpl<$Res, RatingCount>;
  @useResult
  $Res call(
      {@JsonKey(name: "rating") int? rating,
      @JsonKey(name: "count") int? count});
}

/// @nodoc
class _$RatingCountCopyWithImpl<$Res, $Val extends RatingCount>
    implements $RatingCountCopyWith<$Res> {
  _$RatingCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingCountImplCopyWith<$Res>
    implements $RatingCountCopyWith<$Res> {
  factory _$$RatingCountImplCopyWith(
          _$RatingCountImpl value, $Res Function(_$RatingCountImpl) then) =
      __$$RatingCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rating") int? rating,
      @JsonKey(name: "count") int? count});
}

/// @nodoc
class __$$RatingCountImplCopyWithImpl<$Res>
    extends _$RatingCountCopyWithImpl<$Res, _$RatingCountImpl>
    implements _$$RatingCountImplCopyWith<$Res> {
  __$$RatingCountImplCopyWithImpl(
      _$RatingCountImpl _value, $Res Function(_$RatingCountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? count = freezed,
  }) {
    return _then(_$RatingCountImpl(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingCountImpl implements _RatingCount {
  const _$RatingCountImpl(
      {@JsonKey(name: "rating") this.rating,
      @JsonKey(name: "count") this.count});

  factory _$RatingCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingCountImplFromJson(json);

  @override
  @JsonKey(name: "rating")
  final int? rating;
  @override
  @JsonKey(name: "count")
  final int? count;

  @override
  String toString() {
    return 'RatingCount(rating: $rating, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingCountImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rating, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingCountImplCopyWith<_$RatingCountImpl> get copyWith =>
      __$$RatingCountImplCopyWithImpl<_$RatingCountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingCountImplToJson(
      this,
    );
  }
}

abstract class _RatingCount implements RatingCount {
  const factory _RatingCount(
      {@JsonKey(name: "rating") final int? rating,
      @JsonKey(name: "count") final int? count}) = _$RatingCountImpl;

  factory _RatingCount.fromJson(Map<String, dynamic> json) =
      _$RatingCountImpl.fromJson;

  @override
  @JsonKey(name: "rating")
  int? get rating;
  @override
  @JsonKey(name: "count")
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$RatingCountImplCopyWith<_$RatingCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
