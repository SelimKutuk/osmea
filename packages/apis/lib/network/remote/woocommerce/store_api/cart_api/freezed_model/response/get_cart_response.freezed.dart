// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_cart_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetCartResponse _$GetCartResponseFromJson(Map<String, dynamic> json) {
  return _GetCartResponse.fromJson(json);
}

/// @nodoc
mixin _$GetCartResponse {
  @JsonKey(name: "items")
  List<GetCartResponseItem>? get items => throw _privateConstructorUsedError;
  @JsonKey(name: "coupons")
  List<Coupon>? get coupons => throw _privateConstructorUsedError;
  @JsonKey(name: "fees")
  List<dynamic>? get fees => throw _privateConstructorUsedError;
  @JsonKey(name: "totals")
  GetCartResponseTotals? get totals => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_address")
  ShippingAddress? get shippingAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "billing_address")
  BillingAddress? get billingAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "needs_payment")
  bool? get needsPayment => throw _privateConstructorUsedError;
  @JsonKey(name: "needs_shipping")
  bool? get needsShipping => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_requirements")
  List<String>? get paymentRequirements => throw _privateConstructorUsedError;
  @JsonKey(name: "has_calculated_shipping")
  bool? get hasCalculatedShipping => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_rates")
  List<GetCartResponseShippingRate>? get shippingRates =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "items_count")
  int? get itemsCount => throw _privateConstructorUsedError;
  @JsonKey(name: "items_weight")
  int? get itemsWeight => throw _privateConstructorUsedError;
  @JsonKey(name: "cross_sells")
  List<dynamic>? get crossSells => throw _privateConstructorUsedError;
  @JsonKey(name: "errors")
  List<dynamic>? get errors => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_methods")
  List<String>? get paymentMethods => throw _privateConstructorUsedError;
  @JsonKey(name: "extensions")
  Extensions? get extensions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCartResponseCopyWith<GetCartResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCartResponseCopyWith<$Res> {
  factory $GetCartResponseCopyWith(
          GetCartResponse value, $Res Function(GetCartResponse) then) =
      _$GetCartResponseCopyWithImpl<$Res, GetCartResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "items") List<GetCartResponseItem>? items,
      @JsonKey(name: "coupons") List<Coupon>? coupons,
      @JsonKey(name: "fees") List<dynamic>? fees,
      @JsonKey(name: "totals") GetCartResponseTotals? totals,
      @JsonKey(name: "shipping_address") ShippingAddress? shippingAddress,
      @JsonKey(name: "billing_address") BillingAddress? billingAddress,
      @JsonKey(name: "needs_payment") bool? needsPayment,
      @JsonKey(name: "needs_shipping") bool? needsShipping,
      @JsonKey(name: "payment_requirements") List<String>? paymentRequirements,
      @JsonKey(name: "has_calculated_shipping") bool? hasCalculatedShipping,
      @JsonKey(name: "shipping_rates")
      List<GetCartResponseShippingRate>? shippingRates,
      @JsonKey(name: "items_count") int? itemsCount,
      @JsonKey(name: "items_weight") int? itemsWeight,
      @JsonKey(name: "cross_sells") List<dynamic>? crossSells,
      @JsonKey(name: "errors") List<dynamic>? errors,
      @JsonKey(name: "payment_methods") List<String>? paymentMethods,
      @JsonKey(name: "extensions") Extensions? extensions});

  $GetCartResponseTotalsCopyWith<$Res>? get totals;
  $ShippingAddressCopyWith<$Res>? get shippingAddress;
  $BillingAddressCopyWith<$Res>? get billingAddress;
  $ExtensionsCopyWith<$Res>? get extensions;
}

/// @nodoc
class _$GetCartResponseCopyWithImpl<$Res, $Val extends GetCartResponse>
    implements $GetCartResponseCopyWith<$Res> {
  _$GetCartResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? coupons = freezed,
    Object? fees = freezed,
    Object? totals = freezed,
    Object? shippingAddress = freezed,
    Object? billingAddress = freezed,
    Object? needsPayment = freezed,
    Object? needsShipping = freezed,
    Object? paymentRequirements = freezed,
    Object? hasCalculatedShipping = freezed,
    Object? shippingRates = freezed,
    Object? itemsCount = freezed,
    Object? itemsWeight = freezed,
    Object? crossSells = freezed,
    Object? errors = freezed,
    Object? paymentMethods = freezed,
    Object? extensions = freezed,
  }) {
    return _then(_value.copyWith(
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GetCartResponseItem>?,
      coupons: freezed == coupons
          ? _value.coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<Coupon>?,
      fees: freezed == fees
          ? _value.fees
          : fees // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      totals: freezed == totals
          ? _value.totals
          : totals // ignore: cast_nullable_to_non_nullable
              as GetCartResponseTotals?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as ShippingAddress?,
      billingAddress: freezed == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as BillingAddress?,
      needsPayment: freezed == needsPayment
          ? _value.needsPayment
          : needsPayment // ignore: cast_nullable_to_non_nullable
              as bool?,
      needsShipping: freezed == needsShipping
          ? _value.needsShipping
          : needsShipping // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentRequirements: freezed == paymentRequirements
          ? _value.paymentRequirements
          : paymentRequirements // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      hasCalculatedShipping: freezed == hasCalculatedShipping
          ? _value.hasCalculatedShipping
          : hasCalculatedShipping // ignore: cast_nullable_to_non_nullable
              as bool?,
      shippingRates: freezed == shippingRates
          ? _value.shippingRates
          : shippingRates // ignore: cast_nullable_to_non_nullable
              as List<GetCartResponseShippingRate>?,
      itemsCount: freezed == itemsCount
          ? _value.itemsCount
          : itemsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      itemsWeight: freezed == itemsWeight
          ? _value.itemsWeight
          : itemsWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      crossSells: freezed == crossSells
          ? _value.crossSells
          : crossSells // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      paymentMethods: freezed == paymentMethods
          ? _value.paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      extensions: freezed == extensions
          ? _value.extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as Extensions?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetCartResponseTotalsCopyWith<$Res>? get totals {
    if (_value.totals == null) {
      return null;
    }

    return $GetCartResponseTotalsCopyWith<$Res>(_value.totals!, (value) {
      return _then(_value.copyWith(totals: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShippingAddressCopyWith<$Res>? get shippingAddress {
    if (_value.shippingAddress == null) {
      return null;
    }

    return $ShippingAddressCopyWith<$Res>(_value.shippingAddress!, (value) {
      return _then(_value.copyWith(shippingAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BillingAddressCopyWith<$Res>? get billingAddress {
    if (_value.billingAddress == null) {
      return null;
    }

    return $BillingAddressCopyWith<$Res>(_value.billingAddress!, (value) {
      return _then(_value.copyWith(billingAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExtensionsCopyWith<$Res>? get extensions {
    if (_value.extensions == null) {
      return null;
    }

    return $ExtensionsCopyWith<$Res>(_value.extensions!, (value) {
      return _then(_value.copyWith(extensions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetCartResponseImplCopyWith<$Res>
    implements $GetCartResponseCopyWith<$Res> {
  factory _$$GetCartResponseImplCopyWith(_$GetCartResponseImpl value,
          $Res Function(_$GetCartResponseImpl) then) =
      __$$GetCartResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "items") List<GetCartResponseItem>? items,
      @JsonKey(name: "coupons") List<Coupon>? coupons,
      @JsonKey(name: "fees") List<dynamic>? fees,
      @JsonKey(name: "totals") GetCartResponseTotals? totals,
      @JsonKey(name: "shipping_address") ShippingAddress? shippingAddress,
      @JsonKey(name: "billing_address") BillingAddress? billingAddress,
      @JsonKey(name: "needs_payment") bool? needsPayment,
      @JsonKey(name: "needs_shipping") bool? needsShipping,
      @JsonKey(name: "payment_requirements") List<String>? paymentRequirements,
      @JsonKey(name: "has_calculated_shipping") bool? hasCalculatedShipping,
      @JsonKey(name: "shipping_rates")
      List<GetCartResponseShippingRate>? shippingRates,
      @JsonKey(name: "items_count") int? itemsCount,
      @JsonKey(name: "items_weight") int? itemsWeight,
      @JsonKey(name: "cross_sells") List<dynamic>? crossSells,
      @JsonKey(name: "errors") List<dynamic>? errors,
      @JsonKey(name: "payment_methods") List<String>? paymentMethods,
      @JsonKey(name: "extensions") Extensions? extensions});

  @override
  $GetCartResponseTotalsCopyWith<$Res>? get totals;
  @override
  $ShippingAddressCopyWith<$Res>? get shippingAddress;
  @override
  $BillingAddressCopyWith<$Res>? get billingAddress;
  @override
  $ExtensionsCopyWith<$Res>? get extensions;
}

/// @nodoc
class __$$GetCartResponseImplCopyWithImpl<$Res>
    extends _$GetCartResponseCopyWithImpl<$Res, _$GetCartResponseImpl>
    implements _$$GetCartResponseImplCopyWith<$Res> {
  __$$GetCartResponseImplCopyWithImpl(
      _$GetCartResponseImpl _value, $Res Function(_$GetCartResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? coupons = freezed,
    Object? fees = freezed,
    Object? totals = freezed,
    Object? shippingAddress = freezed,
    Object? billingAddress = freezed,
    Object? needsPayment = freezed,
    Object? needsShipping = freezed,
    Object? paymentRequirements = freezed,
    Object? hasCalculatedShipping = freezed,
    Object? shippingRates = freezed,
    Object? itemsCount = freezed,
    Object? itemsWeight = freezed,
    Object? crossSells = freezed,
    Object? errors = freezed,
    Object? paymentMethods = freezed,
    Object? extensions = freezed,
  }) {
    return _then(_$GetCartResponseImpl(
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GetCartResponseItem>?,
      coupons: freezed == coupons
          ? _value._coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<Coupon>?,
      fees: freezed == fees
          ? _value._fees
          : fees // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      totals: freezed == totals
          ? _value.totals
          : totals // ignore: cast_nullable_to_non_nullable
              as GetCartResponseTotals?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as ShippingAddress?,
      billingAddress: freezed == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as BillingAddress?,
      needsPayment: freezed == needsPayment
          ? _value.needsPayment
          : needsPayment // ignore: cast_nullable_to_non_nullable
              as bool?,
      needsShipping: freezed == needsShipping
          ? _value.needsShipping
          : needsShipping // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentRequirements: freezed == paymentRequirements
          ? _value._paymentRequirements
          : paymentRequirements // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      hasCalculatedShipping: freezed == hasCalculatedShipping
          ? _value.hasCalculatedShipping
          : hasCalculatedShipping // ignore: cast_nullable_to_non_nullable
              as bool?,
      shippingRates: freezed == shippingRates
          ? _value._shippingRates
          : shippingRates // ignore: cast_nullable_to_non_nullable
              as List<GetCartResponseShippingRate>?,
      itemsCount: freezed == itemsCount
          ? _value.itemsCount
          : itemsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      itemsWeight: freezed == itemsWeight
          ? _value.itemsWeight
          : itemsWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      crossSells: freezed == crossSells
          ? _value._crossSells
          : crossSells // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      paymentMethods: freezed == paymentMethods
          ? _value._paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      extensions: freezed == extensions
          ? _value.extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as Extensions?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetCartResponseImpl implements _GetCartResponse {
  const _$GetCartResponseImpl(
      {@JsonKey(name: "items") final List<GetCartResponseItem>? items,
      @JsonKey(name: "coupons") final List<Coupon>? coupons,
      @JsonKey(name: "fees") final List<dynamic>? fees,
      @JsonKey(name: "totals") this.totals,
      @JsonKey(name: "shipping_address") this.shippingAddress,
      @JsonKey(name: "billing_address") this.billingAddress,
      @JsonKey(name: "needs_payment") this.needsPayment,
      @JsonKey(name: "needs_shipping") this.needsShipping,
      @JsonKey(name: "payment_requirements")
      final List<String>? paymentRequirements,
      @JsonKey(name: "has_calculated_shipping") this.hasCalculatedShipping,
      @JsonKey(name: "shipping_rates")
      final List<GetCartResponseShippingRate>? shippingRates,
      @JsonKey(name: "items_count") this.itemsCount,
      @JsonKey(name: "items_weight") this.itemsWeight,
      @JsonKey(name: "cross_sells") final List<dynamic>? crossSells,
      @JsonKey(name: "errors") final List<dynamic>? errors,
      @JsonKey(name: "payment_methods") final List<String>? paymentMethods,
      @JsonKey(name: "extensions") this.extensions})
      : _items = items,
        _coupons = coupons,
        _fees = fees,
        _paymentRequirements = paymentRequirements,
        _shippingRates = shippingRates,
        _crossSells = crossSells,
        _errors = errors,
        _paymentMethods = paymentMethods;

  factory _$GetCartResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetCartResponseImplFromJson(json);

  final List<GetCartResponseItem>? _items;
  @override
  @JsonKey(name: "items")
  List<GetCartResponseItem>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Coupon>? _coupons;
  @override
  @JsonKey(name: "coupons")
  List<Coupon>? get coupons {
    final value = _coupons;
    if (value == null) return null;
    if (_coupons is EqualUnmodifiableListView) return _coupons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _fees;
  @override
  @JsonKey(name: "fees")
  List<dynamic>? get fees {
    final value = _fees;
    if (value == null) return null;
    if (_fees is EqualUnmodifiableListView) return _fees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "totals")
  final GetCartResponseTotals? totals;
  @override
  @JsonKey(name: "shipping_address")
  final ShippingAddress? shippingAddress;
  @override
  @JsonKey(name: "billing_address")
  final BillingAddress? billingAddress;
  @override
  @JsonKey(name: "needs_payment")
  final bool? needsPayment;
  @override
  @JsonKey(name: "needs_shipping")
  final bool? needsShipping;
  final List<String>? _paymentRequirements;
  @override
  @JsonKey(name: "payment_requirements")
  List<String>? get paymentRequirements {
    final value = _paymentRequirements;
    if (value == null) return null;
    if (_paymentRequirements is EqualUnmodifiableListView)
      return _paymentRequirements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "has_calculated_shipping")
  final bool? hasCalculatedShipping;
  final List<GetCartResponseShippingRate>? _shippingRates;
  @override
  @JsonKey(name: "shipping_rates")
  List<GetCartResponseShippingRate>? get shippingRates {
    final value = _shippingRates;
    if (value == null) return null;
    if (_shippingRates is EqualUnmodifiableListView) return _shippingRates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "items_count")
  final int? itemsCount;
  @override
  @JsonKey(name: "items_weight")
  final int? itemsWeight;
  final List<dynamic>? _crossSells;
  @override
  @JsonKey(name: "cross_sells")
  List<dynamic>? get crossSells {
    final value = _crossSells;
    if (value == null) return null;
    if (_crossSells is EqualUnmodifiableListView) return _crossSells;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _errors;
  @override
  @JsonKey(name: "errors")
  List<dynamic>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _paymentMethods;
  @override
  @JsonKey(name: "payment_methods")
  List<String>? get paymentMethods {
    final value = _paymentMethods;
    if (value == null) return null;
    if (_paymentMethods is EqualUnmodifiableListView) return _paymentMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "extensions")
  final Extensions? extensions;

  @override
  String toString() {
    return 'GetCartResponse(items: $items, coupons: $coupons, fees: $fees, totals: $totals, shippingAddress: $shippingAddress, billingAddress: $billingAddress, needsPayment: $needsPayment, needsShipping: $needsShipping, paymentRequirements: $paymentRequirements, hasCalculatedShipping: $hasCalculatedShipping, shippingRates: $shippingRates, itemsCount: $itemsCount, itemsWeight: $itemsWeight, crossSells: $crossSells, errors: $errors, paymentMethods: $paymentMethods, extensions: $extensions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCartResponseImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other._coupons, _coupons) &&
            const DeepCollectionEquality().equals(other._fees, _fees) &&
            (identical(other.totals, totals) || other.totals == totals) &&
            (identical(other.shippingAddress, shippingAddress) ||
                other.shippingAddress == shippingAddress) &&
            (identical(other.billingAddress, billingAddress) ||
                other.billingAddress == billingAddress) &&
            (identical(other.needsPayment, needsPayment) ||
                other.needsPayment == needsPayment) &&
            (identical(other.needsShipping, needsShipping) ||
                other.needsShipping == needsShipping) &&
            const DeepCollectionEquality()
                .equals(other._paymentRequirements, _paymentRequirements) &&
            (identical(other.hasCalculatedShipping, hasCalculatedShipping) ||
                other.hasCalculatedShipping == hasCalculatedShipping) &&
            const DeepCollectionEquality()
                .equals(other._shippingRates, _shippingRates) &&
            (identical(other.itemsCount, itemsCount) ||
                other.itemsCount == itemsCount) &&
            (identical(other.itemsWeight, itemsWeight) ||
                other.itemsWeight == itemsWeight) &&
            const DeepCollectionEquality()
                .equals(other._crossSells, _crossSells) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            const DeepCollectionEquality()
                .equals(other._paymentMethods, _paymentMethods) &&
            (identical(other.extensions, extensions) ||
                other.extensions == extensions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_coupons),
      const DeepCollectionEquality().hash(_fees),
      totals,
      shippingAddress,
      billingAddress,
      needsPayment,
      needsShipping,
      const DeepCollectionEquality().hash(_paymentRequirements),
      hasCalculatedShipping,
      const DeepCollectionEquality().hash(_shippingRates),
      itemsCount,
      itemsWeight,
      const DeepCollectionEquality().hash(_crossSells),
      const DeepCollectionEquality().hash(_errors),
      const DeepCollectionEquality().hash(_paymentMethods),
      extensions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCartResponseImplCopyWith<_$GetCartResponseImpl> get copyWith =>
      __$$GetCartResponseImplCopyWithImpl<_$GetCartResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCartResponseImplToJson(
      this,
    );
  }
}

abstract class _GetCartResponse implements GetCartResponse {
  const factory _GetCartResponse(
      {@JsonKey(name: "items") final List<GetCartResponseItem>? items,
      @JsonKey(name: "coupons") final List<Coupon>? coupons,
      @JsonKey(name: "fees") final List<dynamic>? fees,
      @JsonKey(name: "totals") final GetCartResponseTotals? totals,
      @JsonKey(name: "shipping_address") final ShippingAddress? shippingAddress,
      @JsonKey(name: "billing_address") final BillingAddress? billingAddress,
      @JsonKey(name: "needs_payment") final bool? needsPayment,
      @JsonKey(name: "needs_shipping") final bool? needsShipping,
      @JsonKey(name: "payment_requirements")
      final List<String>? paymentRequirements,
      @JsonKey(name: "has_calculated_shipping")
      final bool? hasCalculatedShipping,
      @JsonKey(name: "shipping_rates")
      final List<GetCartResponseShippingRate>? shippingRates,
      @JsonKey(name: "items_count") final int? itemsCount,
      @JsonKey(name: "items_weight") final int? itemsWeight,
      @JsonKey(name: "cross_sells") final List<dynamic>? crossSells,
      @JsonKey(name: "errors") final List<dynamic>? errors,
      @JsonKey(name: "payment_methods") final List<String>? paymentMethods,
      @JsonKey(name: "extensions")
      final Extensions? extensions}) = _$GetCartResponseImpl;

  factory _GetCartResponse.fromJson(Map<String, dynamic> json) =
      _$GetCartResponseImpl.fromJson;

  @override
  @JsonKey(name: "items")
  List<GetCartResponseItem>? get items;
  @override
  @JsonKey(name: "coupons")
  List<Coupon>? get coupons;
  @override
  @JsonKey(name: "fees")
  List<dynamic>? get fees;
  @override
  @JsonKey(name: "totals")
  GetCartResponseTotals? get totals;
  @override
  @JsonKey(name: "shipping_address")
  ShippingAddress? get shippingAddress;
  @override
  @JsonKey(name: "billing_address")
  BillingAddress? get billingAddress;
  @override
  @JsonKey(name: "needs_payment")
  bool? get needsPayment;
  @override
  @JsonKey(name: "needs_shipping")
  bool? get needsShipping;
  @override
  @JsonKey(name: "payment_requirements")
  List<String>? get paymentRequirements;
  @override
  @JsonKey(name: "has_calculated_shipping")
  bool? get hasCalculatedShipping;
  @override
  @JsonKey(name: "shipping_rates")
  List<GetCartResponseShippingRate>? get shippingRates;
  @override
  @JsonKey(name: "items_count")
  int? get itemsCount;
  @override
  @JsonKey(name: "items_weight")
  int? get itemsWeight;
  @override
  @JsonKey(name: "cross_sells")
  List<dynamic>? get crossSells;
  @override
  @JsonKey(name: "errors")
  List<dynamic>? get errors;
  @override
  @JsonKey(name: "payment_methods")
  List<String>? get paymentMethods;
  @override
  @JsonKey(name: "extensions")
  Extensions? get extensions;
  @override
  @JsonKey(ignore: true)
  _$$GetCartResponseImplCopyWith<_$GetCartResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BillingAddress _$BillingAddressFromJson(Map<String, dynamic> json) {
  return _BillingAddress.fromJson(json);
}

/// @nodoc
mixin _$BillingAddress {
  @JsonKey(name: "first_name")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "company")
  String? get company => throw _privateConstructorUsedError;
  @JsonKey(name: "address_1")
  String? get address1 => throw _privateConstructorUsedError;
  @JsonKey(name: "address_2")
  String? get address2 => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: "state")
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: "postcode")
  String? get postcode => throw _privateConstructorUsedError;
  @JsonKey(name: "country")
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillingAddressCopyWith<BillingAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingAddressCopyWith<$Res> {
  factory $BillingAddressCopyWith(
          BillingAddress value, $Res Function(BillingAddress) then) =
      _$BillingAddressCopyWithImpl<$Res, BillingAddress>;
  @useResult
  $Res call(
      {@JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "company") String? company,
      @JsonKey(name: "address_1") String? address1,
      @JsonKey(name: "address_2") String? address2,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "postcode") String? postcode,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone});
}

/// @nodoc
class _$BillingAddressCopyWithImpl<$Res, $Val extends BillingAddress>
    implements $BillingAddressCopyWith<$Res> {
  _$BillingAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? company = freezed,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postcode = freezed,
    Object? country = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillingAddressImplCopyWith<$Res>
    implements $BillingAddressCopyWith<$Res> {
  factory _$$BillingAddressImplCopyWith(_$BillingAddressImpl value,
          $Res Function(_$BillingAddressImpl) then) =
      __$$BillingAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "company") String? company,
      @JsonKey(name: "address_1") String? address1,
      @JsonKey(name: "address_2") String? address2,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "postcode") String? postcode,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone});
}

/// @nodoc
class __$$BillingAddressImplCopyWithImpl<$Res>
    extends _$BillingAddressCopyWithImpl<$Res, _$BillingAddressImpl>
    implements _$$BillingAddressImplCopyWith<$Res> {
  __$$BillingAddressImplCopyWithImpl(
      _$BillingAddressImpl _value, $Res Function(_$BillingAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? company = freezed,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postcode = freezed,
    Object? country = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$BillingAddressImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillingAddressImpl implements _BillingAddress {
  const _$BillingAddressImpl(
      {@JsonKey(name: "first_name") this.firstName,
      @JsonKey(name: "last_name") this.lastName,
      @JsonKey(name: "company") this.company,
      @JsonKey(name: "address_1") this.address1,
      @JsonKey(name: "address_2") this.address2,
      @JsonKey(name: "city") this.city,
      @JsonKey(name: "state") this.state,
      @JsonKey(name: "postcode") this.postcode,
      @JsonKey(name: "country") this.country,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "phone") this.phone});

  factory _$BillingAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillingAddressImplFromJson(json);

  @override
  @JsonKey(name: "first_name")
  final String? firstName;
  @override
  @JsonKey(name: "last_name")
  final String? lastName;
  @override
  @JsonKey(name: "company")
  final String? company;
  @override
  @JsonKey(name: "address_1")
  final String? address1;
  @override
  @JsonKey(name: "address_2")
  final String? address2;
  @override
  @JsonKey(name: "city")
  final String? city;
  @override
  @JsonKey(name: "state")
  final String? state;
  @override
  @JsonKey(name: "postcode")
  final String? postcode;
  @override
  @JsonKey(name: "country")
  final String? country;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "phone")
  final String? phone;

  @override
  String toString() {
    return 'BillingAddress(firstName: $firstName, lastName: $lastName, company: $company, address1: $address1, address2: $address2, city: $city, state: $state, postcode: $postcode, country: $country, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillingAddressImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, company,
      address1, address2, city, state, postcode, country, email, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillingAddressImplCopyWith<_$BillingAddressImpl> get copyWith =>
      __$$BillingAddressImplCopyWithImpl<_$BillingAddressImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillingAddressImplToJson(
      this,
    );
  }
}

abstract class _BillingAddress implements BillingAddress {
  const factory _BillingAddress(
      {@JsonKey(name: "first_name") final String? firstName,
      @JsonKey(name: "last_name") final String? lastName,
      @JsonKey(name: "company") final String? company,
      @JsonKey(name: "address_1") final String? address1,
      @JsonKey(name: "address_2") final String? address2,
      @JsonKey(name: "city") final String? city,
      @JsonKey(name: "state") final String? state,
      @JsonKey(name: "postcode") final String? postcode,
      @JsonKey(name: "country") final String? country,
      @JsonKey(name: "email") final String? email,
      @JsonKey(name: "phone") final String? phone}) = _$BillingAddressImpl;

  factory _BillingAddress.fromJson(Map<String, dynamic> json) =
      _$BillingAddressImpl.fromJson;

  @override
  @JsonKey(name: "first_name")
  String? get firstName;
  @override
  @JsonKey(name: "last_name")
  String? get lastName;
  @override
  @JsonKey(name: "company")
  String? get company;
  @override
  @JsonKey(name: "address_1")
  String? get address1;
  @override
  @JsonKey(name: "address_2")
  String? get address2;
  @override
  @JsonKey(name: "city")
  String? get city;
  @override
  @JsonKey(name: "state")
  String? get state;
  @override
  @JsonKey(name: "postcode")
  String? get postcode;
  @override
  @JsonKey(name: "country")
  String? get country;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$$BillingAddressImplCopyWith<_$BillingAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Coupon _$CouponFromJson(Map<String, dynamic> json) {
  return _Coupon.fromJson(json);
}

/// @nodoc
mixin _$Coupon {
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_type")
  String? get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: "totals")
  CouponTotals? get totals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponCopyWith<Coupon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponCopyWith<$Res> {
  factory $CouponCopyWith(Coupon value, $Res Function(Coupon) then) =
      _$CouponCopyWithImpl<$Res, Coupon>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "discount_type") String? discountType,
      @JsonKey(name: "totals") CouponTotals? totals});

  $CouponTotalsCopyWith<$Res>? get totals;
}

/// @nodoc
class _$CouponCopyWithImpl<$Res, $Val extends Coupon>
    implements $CouponCopyWith<$Res> {
  _$CouponCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? discountType = freezed,
    Object? totals = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      totals: freezed == totals
          ? _value.totals
          : totals // ignore: cast_nullable_to_non_nullable
              as CouponTotals?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CouponTotalsCopyWith<$Res>? get totals {
    if (_value.totals == null) {
      return null;
    }

    return $CouponTotalsCopyWith<$Res>(_value.totals!, (value) {
      return _then(_value.copyWith(totals: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CouponImplCopyWith<$Res> implements $CouponCopyWith<$Res> {
  factory _$$CouponImplCopyWith(
          _$CouponImpl value, $Res Function(_$CouponImpl) then) =
      __$$CouponImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "discount_type") String? discountType,
      @JsonKey(name: "totals") CouponTotals? totals});

  @override
  $CouponTotalsCopyWith<$Res>? get totals;
}

/// @nodoc
class __$$CouponImplCopyWithImpl<$Res>
    extends _$CouponCopyWithImpl<$Res, _$CouponImpl>
    implements _$$CouponImplCopyWith<$Res> {
  __$$CouponImplCopyWithImpl(
      _$CouponImpl _value, $Res Function(_$CouponImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? discountType = freezed,
    Object? totals = freezed,
  }) {
    return _then(_$CouponImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      totals: freezed == totals
          ? _value.totals
          : totals // ignore: cast_nullable_to_non_nullable
              as CouponTotals?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CouponImpl implements _Coupon {
  const _$CouponImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "discount_type") this.discountType,
      @JsonKey(name: "totals") this.totals});

  factory _$CouponImpl.fromJson(Map<String, dynamic> json) =>
      _$$CouponImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final String? code;
  @override
  @JsonKey(name: "discount_type")
  final String? discountType;
  @override
  @JsonKey(name: "totals")
  final CouponTotals? totals;

  @override
  String toString() {
    return 'Coupon(code: $code, discountType: $discountType, totals: $totals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.totals, totals) || other.totals == totals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, discountType, totals);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponImplCopyWith<_$CouponImpl> get copyWith =>
      __$$CouponImplCopyWithImpl<_$CouponImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CouponImplToJson(
      this,
    );
  }
}

abstract class _Coupon implements Coupon {
  const factory _Coupon(
      {@JsonKey(name: "code") final String? code,
      @JsonKey(name: "discount_type") final String? discountType,
      @JsonKey(name: "totals") final CouponTotals? totals}) = _$CouponImpl;

  factory _Coupon.fromJson(Map<String, dynamic> json) = _$CouponImpl.fromJson;

  @override
  @JsonKey(name: "code")
  String? get code;
  @override
  @JsonKey(name: "discount_type")
  String? get discountType;
  @override
  @JsonKey(name: "totals")
  CouponTotals? get totals;
  @override
  @JsonKey(ignore: true)
  _$$CouponImplCopyWith<_$CouponImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CouponTotals _$CouponTotalsFromJson(Map<String, dynamic> json) {
  return _CouponTotals.fromJson(json);
}

/// @nodoc
mixin _$CouponTotals {
  @JsonKey(name: "total_discount")
  String? get totalDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_discount_tax")
  String? get totalDiscountTax => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_code")
  String? get currencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_symbol")
  String? get currencySymbol => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_minor_unit")
  int? get currencyMinorUnit => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_decimal_separator")
  String? get currencyDecimalSeparator => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_thousand_separator")
  String? get currencyThousandSeparator => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_prefix")
  String? get currencyPrefix => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_suffix")
  String? get currencySuffix => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponTotalsCopyWith<CouponTotals> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponTotalsCopyWith<$Res> {
  factory $CouponTotalsCopyWith(
          CouponTotals value, $Res Function(CouponTotals) then) =
      _$CouponTotalsCopyWithImpl<$Res, CouponTotals>;
  @useResult
  $Res call(
      {@JsonKey(name: "total_discount") String? totalDiscount,
      @JsonKey(name: "total_discount_tax") String? totalDiscountTax,
      @JsonKey(name: "currency_code") String? currencyCode,
      @JsonKey(name: "currency_symbol") String? currencySymbol,
      @JsonKey(name: "currency_minor_unit") int? currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      String? currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      String? currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") String? currencyPrefix,
      @JsonKey(name: "currency_suffix") String? currencySuffix});
}

/// @nodoc
class _$CouponTotalsCopyWithImpl<$Res, $Val extends CouponTotals>
    implements $CouponTotalsCopyWith<$Res> {
  _$CouponTotalsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalDiscount = freezed,
    Object? totalDiscountTax = freezed,
    Object? currencyCode = freezed,
    Object? currencySymbol = freezed,
    Object? currencyMinorUnit = freezed,
    Object? currencyDecimalSeparator = freezed,
    Object? currencyThousandSeparator = freezed,
    Object? currencyPrefix = freezed,
    Object? currencySuffix = freezed,
  }) {
    return _then(_value.copyWith(
      totalDiscount: freezed == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      totalDiscountTax: freezed == totalDiscountTax
          ? _value.totalDiscountTax
          : totalDiscountTax // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyMinorUnit: freezed == currencyMinorUnit
          ? _value.currencyMinorUnit
          : currencyMinorUnit // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyDecimalSeparator: freezed == currencyDecimalSeparator
          ? _value.currencyDecimalSeparator
          : currencyDecimalSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyThousandSeparator: freezed == currencyThousandSeparator
          ? _value.currencyThousandSeparator
          : currencyThousandSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyPrefix: freezed == currencyPrefix
          ? _value.currencyPrefix
          : currencyPrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySuffix: freezed == currencySuffix
          ? _value.currencySuffix
          : currencySuffix // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CouponTotalsImplCopyWith<$Res>
    implements $CouponTotalsCopyWith<$Res> {
  factory _$$CouponTotalsImplCopyWith(
          _$CouponTotalsImpl value, $Res Function(_$CouponTotalsImpl) then) =
      __$$CouponTotalsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "total_discount") String? totalDiscount,
      @JsonKey(name: "total_discount_tax") String? totalDiscountTax,
      @JsonKey(name: "currency_code") String? currencyCode,
      @JsonKey(name: "currency_symbol") String? currencySymbol,
      @JsonKey(name: "currency_minor_unit") int? currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      String? currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      String? currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") String? currencyPrefix,
      @JsonKey(name: "currency_suffix") String? currencySuffix});
}

/// @nodoc
class __$$CouponTotalsImplCopyWithImpl<$Res>
    extends _$CouponTotalsCopyWithImpl<$Res, _$CouponTotalsImpl>
    implements _$$CouponTotalsImplCopyWith<$Res> {
  __$$CouponTotalsImplCopyWithImpl(
      _$CouponTotalsImpl _value, $Res Function(_$CouponTotalsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalDiscount = freezed,
    Object? totalDiscountTax = freezed,
    Object? currencyCode = freezed,
    Object? currencySymbol = freezed,
    Object? currencyMinorUnit = freezed,
    Object? currencyDecimalSeparator = freezed,
    Object? currencyThousandSeparator = freezed,
    Object? currencyPrefix = freezed,
    Object? currencySuffix = freezed,
  }) {
    return _then(_$CouponTotalsImpl(
      totalDiscount: freezed == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      totalDiscountTax: freezed == totalDiscountTax
          ? _value.totalDiscountTax
          : totalDiscountTax // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyMinorUnit: freezed == currencyMinorUnit
          ? _value.currencyMinorUnit
          : currencyMinorUnit // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyDecimalSeparator: freezed == currencyDecimalSeparator
          ? _value.currencyDecimalSeparator
          : currencyDecimalSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyThousandSeparator: freezed == currencyThousandSeparator
          ? _value.currencyThousandSeparator
          : currencyThousandSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyPrefix: freezed == currencyPrefix
          ? _value.currencyPrefix
          : currencyPrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySuffix: freezed == currencySuffix
          ? _value.currencySuffix
          : currencySuffix // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CouponTotalsImpl implements _CouponTotals {
  const _$CouponTotalsImpl(
      {@JsonKey(name: "total_discount") this.totalDiscount,
      @JsonKey(name: "total_discount_tax") this.totalDiscountTax,
      @JsonKey(name: "currency_code") this.currencyCode,
      @JsonKey(name: "currency_symbol") this.currencySymbol,
      @JsonKey(name: "currency_minor_unit") this.currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      this.currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      this.currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") this.currencyPrefix,
      @JsonKey(name: "currency_suffix") this.currencySuffix});

  factory _$CouponTotalsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CouponTotalsImplFromJson(json);

  @override
  @JsonKey(name: "total_discount")
  final String? totalDiscount;
  @override
  @JsonKey(name: "total_discount_tax")
  final String? totalDiscountTax;
  @override
  @JsonKey(name: "currency_code")
  final String? currencyCode;
  @override
  @JsonKey(name: "currency_symbol")
  final String? currencySymbol;
  @override
  @JsonKey(name: "currency_minor_unit")
  final int? currencyMinorUnit;
  @override
  @JsonKey(name: "currency_decimal_separator")
  final String? currencyDecimalSeparator;
  @override
  @JsonKey(name: "currency_thousand_separator")
  final String? currencyThousandSeparator;
  @override
  @JsonKey(name: "currency_prefix")
  final String? currencyPrefix;
  @override
  @JsonKey(name: "currency_suffix")
  final String? currencySuffix;

  @override
  String toString() {
    return 'CouponTotals(totalDiscount: $totalDiscount, totalDiscountTax: $totalDiscountTax, currencyCode: $currencyCode, currencySymbol: $currencySymbol, currencyMinorUnit: $currencyMinorUnit, currencyDecimalSeparator: $currencyDecimalSeparator, currencyThousandSeparator: $currencyThousandSeparator, currencyPrefix: $currencyPrefix, currencySuffix: $currencySuffix)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponTotalsImpl &&
            (identical(other.totalDiscount, totalDiscount) ||
                other.totalDiscount == totalDiscount) &&
            (identical(other.totalDiscountTax, totalDiscountTax) ||
                other.totalDiscountTax == totalDiscountTax) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.currencyMinorUnit, currencyMinorUnit) ||
                other.currencyMinorUnit == currencyMinorUnit) &&
            (identical(
                    other.currencyDecimalSeparator, currencyDecimalSeparator) ||
                other.currencyDecimalSeparator == currencyDecimalSeparator) &&
            (identical(other.currencyThousandSeparator,
                    currencyThousandSeparator) ||
                other.currencyThousandSeparator == currencyThousandSeparator) &&
            (identical(other.currencyPrefix, currencyPrefix) ||
                other.currencyPrefix == currencyPrefix) &&
            (identical(other.currencySuffix, currencySuffix) ||
                other.currencySuffix == currencySuffix));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalDiscount,
      totalDiscountTax,
      currencyCode,
      currencySymbol,
      currencyMinorUnit,
      currencyDecimalSeparator,
      currencyThousandSeparator,
      currencyPrefix,
      currencySuffix);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponTotalsImplCopyWith<_$CouponTotalsImpl> get copyWith =>
      __$$CouponTotalsImplCopyWithImpl<_$CouponTotalsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CouponTotalsImplToJson(
      this,
    );
  }
}

abstract class _CouponTotals implements CouponTotals {
  const factory _CouponTotals(
          {@JsonKey(name: "total_discount") final String? totalDiscount,
          @JsonKey(name: "total_discount_tax") final String? totalDiscountTax,
          @JsonKey(name: "currency_code") final String? currencyCode,
          @JsonKey(name: "currency_symbol") final String? currencySymbol,
          @JsonKey(name: "currency_minor_unit") final int? currencyMinorUnit,
          @JsonKey(name: "currency_decimal_separator")
          final String? currencyDecimalSeparator,
          @JsonKey(name: "currency_thousand_separator")
          final String? currencyThousandSeparator,
          @JsonKey(name: "currency_prefix") final String? currencyPrefix,
          @JsonKey(name: "currency_suffix") final String? currencySuffix}) =
      _$CouponTotalsImpl;

  factory _CouponTotals.fromJson(Map<String, dynamic> json) =
      _$CouponTotalsImpl.fromJson;

  @override
  @JsonKey(name: "total_discount")
  String? get totalDiscount;
  @override
  @JsonKey(name: "total_discount_tax")
  String? get totalDiscountTax;
  @override
  @JsonKey(name: "currency_code")
  String? get currencyCode;
  @override
  @JsonKey(name: "currency_symbol")
  String? get currencySymbol;
  @override
  @JsonKey(name: "currency_minor_unit")
  int? get currencyMinorUnit;
  @override
  @JsonKey(name: "currency_decimal_separator")
  String? get currencyDecimalSeparator;
  @override
  @JsonKey(name: "currency_thousand_separator")
  String? get currencyThousandSeparator;
  @override
  @JsonKey(name: "currency_prefix")
  String? get currencyPrefix;
  @override
  @JsonKey(name: "currency_suffix")
  String? get currencySuffix;
  @override
  @JsonKey(ignore: true)
  _$$CouponTotalsImplCopyWith<_$CouponTotalsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Extensions _$ExtensionsFromJson(Map<String, dynamic> json) {
  return _Extensions.fromJson(json);
}

/// @nodoc
mixin _$Extensions {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtensionsCopyWith<$Res> {
  factory $ExtensionsCopyWith(
          Extensions value, $Res Function(Extensions) then) =
      _$ExtensionsCopyWithImpl<$Res, Extensions>;
}

/// @nodoc
class _$ExtensionsCopyWithImpl<$Res, $Val extends Extensions>
    implements $ExtensionsCopyWith<$Res> {
  _$ExtensionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ExtensionsImplCopyWith<$Res> {
  factory _$$ExtensionsImplCopyWith(
          _$ExtensionsImpl value, $Res Function(_$ExtensionsImpl) then) =
      __$$ExtensionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExtensionsImplCopyWithImpl<$Res>
    extends _$ExtensionsCopyWithImpl<$Res, _$ExtensionsImpl>
    implements _$$ExtensionsImplCopyWith<$Res> {
  __$$ExtensionsImplCopyWithImpl(
      _$ExtensionsImpl _value, $Res Function(_$ExtensionsImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ExtensionsImpl implements _Extensions {
  const _$ExtensionsImpl();

  factory _$ExtensionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtensionsImplFromJson(json);

  @override
  String toString() {
    return 'Extensions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExtensionsImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtensionsImplToJson(
      this,
    );
  }
}

abstract class _Extensions implements Extensions {
  const factory _Extensions() = _$ExtensionsImpl;

  factory _Extensions.fromJson(Map<String, dynamic> json) =
      _$ExtensionsImpl.fromJson;
}

GetCartResponseItem _$GetCartResponseItemFromJson(Map<String, dynamic> json) {
  return _GetCartResponseItem.fromJson(json);
}

/// @nodoc
mixin _$GetCartResponseItem {
  @JsonKey(name: "key")
  String? get key => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity_limits")
  QuantityLimits? get quantityLimits => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "short_description")
  String? get shortDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "sku")
  String? get sku => throw _privateConstructorUsedError;
  @JsonKey(name: "low_stock_remaining")
  dynamic get lowStockRemaining => throw _privateConstructorUsedError;
  @JsonKey(name: "backorders_allowed")
  bool? get backordersAllowed => throw _privateConstructorUsedError;
  @JsonKey(name: "show_backorder_badge")
  bool? get showBackorderBadge => throw _privateConstructorUsedError;
  @JsonKey(name: "sold_individually")
  bool? get soldIndividually => throw _privateConstructorUsedError;
  @JsonKey(name: "permalink")
  String? get permalink => throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  List<Image>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: "variation")
  List<dynamic>? get variation => throw _privateConstructorUsedError;
  @JsonKey(name: "item_data")
  List<dynamic>? get itemData => throw _privateConstructorUsedError;
  @JsonKey(name: "prices")
  Prices? get prices => throw _privateConstructorUsedError;
  @JsonKey(name: "totals")
  ItemTotals? get totals => throw _privateConstructorUsedError;
  @JsonKey(name: "catalog_visibility")
  String? get catalogVisibility => throw _privateConstructorUsedError;
  @JsonKey(name: "extensions")
  Extensions? get extensions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCartResponseItemCopyWith<GetCartResponseItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCartResponseItemCopyWith<$Res> {
  factory $GetCartResponseItemCopyWith(
          GetCartResponseItem value, $Res Function(GetCartResponseItem) then) =
      _$GetCartResponseItemCopyWithImpl<$Res, GetCartResponseItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "key") String? key,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "quantity") int? quantity,
      @JsonKey(name: "quantity_limits") QuantityLimits? quantityLimits,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "short_description") String? shortDescription,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "sku") String? sku,
      @JsonKey(name: "low_stock_remaining") dynamic lowStockRemaining,
      @JsonKey(name: "backorders_allowed") bool? backordersAllowed,
      @JsonKey(name: "show_backorder_badge") bool? showBackorderBadge,
      @JsonKey(name: "sold_individually") bool? soldIndividually,
      @JsonKey(name: "permalink") String? permalink,
      @JsonKey(name: "images") List<Image>? images,
      @JsonKey(name: "variation") List<dynamic>? variation,
      @JsonKey(name: "item_data") List<dynamic>? itemData,
      @JsonKey(name: "prices") Prices? prices,
      @JsonKey(name: "totals") ItemTotals? totals,
      @JsonKey(name: "catalog_visibility") String? catalogVisibility,
      @JsonKey(name: "extensions") Extensions? extensions});

  $QuantityLimitsCopyWith<$Res>? get quantityLimits;
  $PricesCopyWith<$Res>? get prices;
  $ItemTotalsCopyWith<$Res>? get totals;
  $ExtensionsCopyWith<$Res>? get extensions;
}

/// @nodoc
class _$GetCartResponseItemCopyWithImpl<$Res, $Val extends GetCartResponseItem>
    implements $GetCartResponseItemCopyWith<$Res> {
  _$GetCartResponseItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? id = freezed,
    Object? quantity = freezed,
    Object? quantityLimits = freezed,
    Object? name = freezed,
    Object? shortDescription = freezed,
    Object? description = freezed,
    Object? sku = freezed,
    Object? lowStockRemaining = freezed,
    Object? backordersAllowed = freezed,
    Object? showBackorderBadge = freezed,
    Object? soldIndividually = freezed,
    Object? permalink = freezed,
    Object? images = freezed,
    Object? variation = freezed,
    Object? itemData = freezed,
    Object? prices = freezed,
    Object? totals = freezed,
    Object? catalogVisibility = freezed,
    Object? extensions = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      quantityLimits: freezed == quantityLimits
          ? _value.quantityLimits
          : quantityLimits // ignore: cast_nullable_to_non_nullable
              as QuantityLimits?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      lowStockRemaining: freezed == lowStockRemaining
          ? _value.lowStockRemaining
          : lowStockRemaining // ignore: cast_nullable_to_non_nullable
              as dynamic,
      backordersAllowed: freezed == backordersAllowed
          ? _value.backordersAllowed
          : backordersAllowed // ignore: cast_nullable_to_non_nullable
              as bool?,
      showBackorderBadge: freezed == showBackorderBadge
          ? _value.showBackorderBadge
          : showBackorderBadge // ignore: cast_nullable_to_non_nullable
              as bool?,
      soldIndividually: freezed == soldIndividually
          ? _value.soldIndividually
          : soldIndividually // ignore: cast_nullable_to_non_nullable
              as bool?,
      permalink: freezed == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      variation: freezed == variation
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      itemData: freezed == itemData
          ? _value.itemData
          : itemData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      prices: freezed == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as Prices?,
      totals: freezed == totals
          ? _value.totals
          : totals // ignore: cast_nullable_to_non_nullable
              as ItemTotals?,
      catalogVisibility: freezed == catalogVisibility
          ? _value.catalogVisibility
          : catalogVisibility // ignore: cast_nullable_to_non_nullable
              as String?,
      extensions: freezed == extensions
          ? _value.extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as Extensions?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityLimitsCopyWith<$Res>? get quantityLimits {
    if (_value.quantityLimits == null) {
      return null;
    }

    return $QuantityLimitsCopyWith<$Res>(_value.quantityLimits!, (value) {
      return _then(_value.copyWith(quantityLimits: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PricesCopyWith<$Res>? get prices {
    if (_value.prices == null) {
      return null;
    }

    return $PricesCopyWith<$Res>(_value.prices!, (value) {
      return _then(_value.copyWith(prices: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemTotalsCopyWith<$Res>? get totals {
    if (_value.totals == null) {
      return null;
    }

    return $ItemTotalsCopyWith<$Res>(_value.totals!, (value) {
      return _then(_value.copyWith(totals: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExtensionsCopyWith<$Res>? get extensions {
    if (_value.extensions == null) {
      return null;
    }

    return $ExtensionsCopyWith<$Res>(_value.extensions!, (value) {
      return _then(_value.copyWith(extensions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetCartResponseItemImplCopyWith<$Res>
    implements $GetCartResponseItemCopyWith<$Res> {
  factory _$$GetCartResponseItemImplCopyWith(_$GetCartResponseItemImpl value,
          $Res Function(_$GetCartResponseItemImpl) then) =
      __$$GetCartResponseItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "key") String? key,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "quantity") int? quantity,
      @JsonKey(name: "quantity_limits") QuantityLimits? quantityLimits,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "short_description") String? shortDescription,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "sku") String? sku,
      @JsonKey(name: "low_stock_remaining") dynamic lowStockRemaining,
      @JsonKey(name: "backorders_allowed") bool? backordersAllowed,
      @JsonKey(name: "show_backorder_badge") bool? showBackorderBadge,
      @JsonKey(name: "sold_individually") bool? soldIndividually,
      @JsonKey(name: "permalink") String? permalink,
      @JsonKey(name: "images") List<Image>? images,
      @JsonKey(name: "variation") List<dynamic>? variation,
      @JsonKey(name: "item_data") List<dynamic>? itemData,
      @JsonKey(name: "prices") Prices? prices,
      @JsonKey(name: "totals") ItemTotals? totals,
      @JsonKey(name: "catalog_visibility") String? catalogVisibility,
      @JsonKey(name: "extensions") Extensions? extensions});

  @override
  $QuantityLimitsCopyWith<$Res>? get quantityLimits;
  @override
  $PricesCopyWith<$Res>? get prices;
  @override
  $ItemTotalsCopyWith<$Res>? get totals;
  @override
  $ExtensionsCopyWith<$Res>? get extensions;
}

/// @nodoc
class __$$GetCartResponseItemImplCopyWithImpl<$Res>
    extends _$GetCartResponseItemCopyWithImpl<$Res, _$GetCartResponseItemImpl>
    implements _$$GetCartResponseItemImplCopyWith<$Res> {
  __$$GetCartResponseItemImplCopyWithImpl(_$GetCartResponseItemImpl _value,
      $Res Function(_$GetCartResponseItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? id = freezed,
    Object? quantity = freezed,
    Object? quantityLimits = freezed,
    Object? name = freezed,
    Object? shortDescription = freezed,
    Object? description = freezed,
    Object? sku = freezed,
    Object? lowStockRemaining = freezed,
    Object? backordersAllowed = freezed,
    Object? showBackorderBadge = freezed,
    Object? soldIndividually = freezed,
    Object? permalink = freezed,
    Object? images = freezed,
    Object? variation = freezed,
    Object? itemData = freezed,
    Object? prices = freezed,
    Object? totals = freezed,
    Object? catalogVisibility = freezed,
    Object? extensions = freezed,
  }) {
    return _then(_$GetCartResponseItemImpl(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      quantityLimits: freezed == quantityLimits
          ? _value.quantityLimits
          : quantityLimits // ignore: cast_nullable_to_non_nullable
              as QuantityLimits?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      lowStockRemaining: freezed == lowStockRemaining
          ? _value.lowStockRemaining
          : lowStockRemaining // ignore: cast_nullable_to_non_nullable
              as dynamic,
      backordersAllowed: freezed == backordersAllowed
          ? _value.backordersAllowed
          : backordersAllowed // ignore: cast_nullable_to_non_nullable
              as bool?,
      showBackorderBadge: freezed == showBackorderBadge
          ? _value.showBackorderBadge
          : showBackorderBadge // ignore: cast_nullable_to_non_nullable
              as bool?,
      soldIndividually: freezed == soldIndividually
          ? _value.soldIndividually
          : soldIndividually // ignore: cast_nullable_to_non_nullable
              as bool?,
      permalink: freezed == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      variation: freezed == variation
          ? _value._variation
          : variation // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      itemData: freezed == itemData
          ? _value._itemData
          : itemData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      prices: freezed == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as Prices?,
      totals: freezed == totals
          ? _value.totals
          : totals // ignore: cast_nullable_to_non_nullable
              as ItemTotals?,
      catalogVisibility: freezed == catalogVisibility
          ? _value.catalogVisibility
          : catalogVisibility // ignore: cast_nullable_to_non_nullable
              as String?,
      extensions: freezed == extensions
          ? _value.extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as Extensions?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetCartResponseItemImpl implements _GetCartResponseItem {
  const _$GetCartResponseItemImpl(
      {@JsonKey(name: "key") this.key,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "quantity") this.quantity,
      @JsonKey(name: "quantity_limits") this.quantityLimits,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "short_description") this.shortDescription,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "sku") this.sku,
      @JsonKey(name: "low_stock_remaining") this.lowStockRemaining,
      @JsonKey(name: "backorders_allowed") this.backordersAllowed,
      @JsonKey(name: "show_backorder_badge") this.showBackorderBadge,
      @JsonKey(name: "sold_individually") this.soldIndividually,
      @JsonKey(name: "permalink") this.permalink,
      @JsonKey(name: "images") final List<Image>? images,
      @JsonKey(name: "variation") final List<dynamic>? variation,
      @JsonKey(name: "item_data") final List<dynamic>? itemData,
      @JsonKey(name: "prices") this.prices,
      @JsonKey(name: "totals") this.totals,
      @JsonKey(name: "catalog_visibility") this.catalogVisibility,
      @JsonKey(name: "extensions") this.extensions})
      : _images = images,
        _variation = variation,
        _itemData = itemData;

  factory _$GetCartResponseItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetCartResponseItemImplFromJson(json);

  @override
  @JsonKey(name: "key")
  final String? key;
  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "quantity")
  final int? quantity;
  @override
  @JsonKey(name: "quantity_limits")
  final QuantityLimits? quantityLimits;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "short_description")
  final String? shortDescription;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "sku")
  final String? sku;
  @override
  @JsonKey(name: "low_stock_remaining")
  final dynamic lowStockRemaining;
  @override
  @JsonKey(name: "backorders_allowed")
  final bool? backordersAllowed;
  @override
  @JsonKey(name: "show_backorder_badge")
  final bool? showBackorderBadge;
  @override
  @JsonKey(name: "sold_individually")
  final bool? soldIndividually;
  @override
  @JsonKey(name: "permalink")
  final String? permalink;
  final List<Image>? _images;
  @override
  @JsonKey(name: "images")
  List<Image>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _variation;
  @override
  @JsonKey(name: "variation")
  List<dynamic>? get variation {
    final value = _variation;
    if (value == null) return null;
    if (_variation is EqualUnmodifiableListView) return _variation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _itemData;
  @override
  @JsonKey(name: "item_data")
  List<dynamic>? get itemData {
    final value = _itemData;
    if (value == null) return null;
    if (_itemData is EqualUnmodifiableListView) return _itemData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "prices")
  final Prices? prices;
  @override
  @JsonKey(name: "totals")
  final ItemTotals? totals;
  @override
  @JsonKey(name: "catalog_visibility")
  final String? catalogVisibility;
  @override
  @JsonKey(name: "extensions")
  final Extensions? extensions;

  @override
  String toString() {
    return 'GetCartResponseItem(key: $key, id: $id, quantity: $quantity, quantityLimits: $quantityLimits, name: $name, shortDescription: $shortDescription, description: $description, sku: $sku, lowStockRemaining: $lowStockRemaining, backordersAllowed: $backordersAllowed, showBackorderBadge: $showBackorderBadge, soldIndividually: $soldIndividually, permalink: $permalink, images: $images, variation: $variation, itemData: $itemData, prices: $prices, totals: $totals, catalogVisibility: $catalogVisibility, extensions: $extensions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCartResponseItemImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.quantityLimits, quantityLimits) ||
                other.quantityLimits == quantityLimits) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            const DeepCollectionEquality()
                .equals(other.lowStockRemaining, lowStockRemaining) &&
            (identical(other.backordersAllowed, backordersAllowed) ||
                other.backordersAllowed == backordersAllowed) &&
            (identical(other.showBackorderBadge, showBackorderBadge) ||
                other.showBackorderBadge == showBackorderBadge) &&
            (identical(other.soldIndividually, soldIndividually) ||
                other.soldIndividually == soldIndividually) &&
            (identical(other.permalink, permalink) ||
                other.permalink == permalink) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._variation, _variation) &&
            const DeepCollectionEquality().equals(other._itemData, _itemData) &&
            (identical(other.prices, prices) || other.prices == prices) &&
            (identical(other.totals, totals) || other.totals == totals) &&
            (identical(other.catalogVisibility, catalogVisibility) ||
                other.catalogVisibility == catalogVisibility) &&
            (identical(other.extensions, extensions) ||
                other.extensions == extensions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        key,
        id,
        quantity,
        quantityLimits,
        name,
        shortDescription,
        description,
        sku,
        const DeepCollectionEquality().hash(lowStockRemaining),
        backordersAllowed,
        showBackorderBadge,
        soldIndividually,
        permalink,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_variation),
        const DeepCollectionEquality().hash(_itemData),
        prices,
        totals,
        catalogVisibility,
        extensions
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCartResponseItemImplCopyWith<_$GetCartResponseItemImpl> get copyWith =>
      __$$GetCartResponseItemImplCopyWithImpl<_$GetCartResponseItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCartResponseItemImplToJson(
      this,
    );
  }
}

abstract class _GetCartResponseItem implements GetCartResponseItem {
  const factory _GetCartResponseItem(
      {@JsonKey(name: "key") final String? key,
      @JsonKey(name: "id") final int? id,
      @JsonKey(name: "quantity") final int? quantity,
      @JsonKey(name: "quantity_limits") final QuantityLimits? quantityLimits,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "short_description") final String? shortDescription,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "sku") final String? sku,
      @JsonKey(name: "low_stock_remaining") final dynamic lowStockRemaining,
      @JsonKey(name: "backorders_allowed") final bool? backordersAllowed,
      @JsonKey(name: "show_backorder_badge") final bool? showBackorderBadge,
      @JsonKey(name: "sold_individually") final bool? soldIndividually,
      @JsonKey(name: "permalink") final String? permalink,
      @JsonKey(name: "images") final List<Image>? images,
      @JsonKey(name: "variation") final List<dynamic>? variation,
      @JsonKey(name: "item_data") final List<dynamic>? itemData,
      @JsonKey(name: "prices") final Prices? prices,
      @JsonKey(name: "totals") final ItemTotals? totals,
      @JsonKey(name: "catalog_visibility") final String? catalogVisibility,
      @JsonKey(name: "extensions")
      final Extensions? extensions}) = _$GetCartResponseItemImpl;

  factory _GetCartResponseItem.fromJson(Map<String, dynamic> json) =
      _$GetCartResponseItemImpl.fromJson;

  @override
  @JsonKey(name: "key")
  String? get key;
  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "quantity")
  int? get quantity;
  @override
  @JsonKey(name: "quantity_limits")
  QuantityLimits? get quantityLimits;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "short_description")
  String? get shortDescription;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "sku")
  String? get sku;
  @override
  @JsonKey(name: "low_stock_remaining")
  dynamic get lowStockRemaining;
  @override
  @JsonKey(name: "backorders_allowed")
  bool? get backordersAllowed;
  @override
  @JsonKey(name: "show_backorder_badge")
  bool? get showBackorderBadge;
  @override
  @JsonKey(name: "sold_individually")
  bool? get soldIndividually;
  @override
  @JsonKey(name: "permalink")
  String? get permalink;
  @override
  @JsonKey(name: "images")
  List<Image>? get images;
  @override
  @JsonKey(name: "variation")
  List<dynamic>? get variation;
  @override
  @JsonKey(name: "item_data")
  List<dynamic>? get itemData;
  @override
  @JsonKey(name: "prices")
  Prices? get prices;
  @override
  @JsonKey(name: "totals")
  ItemTotals? get totals;
  @override
  @JsonKey(name: "catalog_visibility")
  String? get catalogVisibility;
  @override
  @JsonKey(name: "extensions")
  Extensions? get extensions;
  @override
  @JsonKey(ignore: true)
  _$$GetCartResponseItemImplCopyWith<_$GetCartResponseItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "src")
  String? get src => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail")
  String? get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: "srcset")
  String? get srcset => throw _privateConstructorUsedError;
  @JsonKey(name: "sizes")
  String? get sizes => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "alt")
  String? get alt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "src") String? src,
      @JsonKey(name: "thumbnail") String? thumbnail,
      @JsonKey(name: "srcset") String? srcset,
      @JsonKey(name: "sizes") String? sizes,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "alt") String? alt});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? src = freezed,
    Object? thumbnail = freezed,
    Object? srcset = freezed,
    Object? sizes = freezed,
    Object? name = freezed,
    Object? alt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      srcset: freezed == srcset
          ? _value.srcset
          : srcset // ignore: cast_nullable_to_non_nullable
              as String?,
      sizes: freezed == sizes
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      alt: freezed == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageImplCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
          _$ImageImpl value, $Res Function(_$ImageImpl) then) =
      __$$ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "src") String? src,
      @JsonKey(name: "thumbnail") String? thumbnail,
      @JsonKey(name: "srcset") String? srcset,
      @JsonKey(name: "sizes") String? sizes,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "alt") String? alt});
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? src = freezed,
    Object? thumbnail = freezed,
    Object? srcset = freezed,
    Object? sizes = freezed,
    Object? name = freezed,
    Object? alt = freezed,
  }) {
    return _then(_$ImageImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      srcset: freezed == srcset
          ? _value.srcset
          : srcset // ignore: cast_nullable_to_non_nullable
              as String?,
      sizes: freezed == sizes
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      alt: freezed == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageImpl implements _Image {
  const _$ImageImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "src") this.src,
      @JsonKey(name: "thumbnail") this.thumbnail,
      @JsonKey(name: "srcset") this.srcset,
      @JsonKey(name: "sizes") this.sizes,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "alt") this.alt});

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "src")
  final String? src;
  @override
  @JsonKey(name: "thumbnail")
  final String? thumbnail;
  @override
  @JsonKey(name: "srcset")
  final String? srcset;
  @override
  @JsonKey(name: "sizes")
  final String? sizes;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "alt")
  final String? alt;

  @override
  String toString() {
    return 'Image(id: $id, src: $src, thumbnail: $thumbnail, srcset: $srcset, sizes: $sizes, name: $name, alt: $alt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.srcset, srcset) || other.srcset == srcset) &&
            (identical(other.sizes, sizes) || other.sizes == sizes) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.alt, alt) || other.alt == alt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, src, thumbnail, srcset, sizes, name, alt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageImplToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  const factory _Image(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "src") final String? src,
      @JsonKey(name: "thumbnail") final String? thumbnail,
      @JsonKey(name: "srcset") final String? srcset,
      @JsonKey(name: "sizes") final String? sizes,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "alt") final String? alt}) = _$ImageImpl;

  factory _Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "src")
  String? get src;
  @override
  @JsonKey(name: "thumbnail")
  String? get thumbnail;
  @override
  @JsonKey(name: "srcset")
  String? get srcset;
  @override
  @JsonKey(name: "sizes")
  String? get sizes;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "alt")
  String? get alt;
  @override
  @JsonKey(ignore: true)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Prices _$PricesFromJson(Map<String, dynamic> json) {
  return _Prices.fromJson(json);
}

/// @nodoc
mixin _$Prices {
  @JsonKey(name: "price")
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "regular_price")
  String? get regularPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_price")
  String? get salePrice => throw _privateConstructorUsedError;
  @JsonKey(name: "price_range")
  dynamic get priceRange => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_code")
  String? get currencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_symbol")
  String? get currencySymbol => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_minor_unit")
  int? get currencyMinorUnit => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_decimal_separator")
  String? get currencyDecimalSeparator => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_thousand_separator")
  String? get currencyThousandSeparator => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_prefix")
  String? get currencyPrefix => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_suffix")
  String? get currencySuffix => throw _privateConstructorUsedError;
  @JsonKey(name: "raw_prices")
  RawPrices? get rawPrices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PricesCopyWith<Prices> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricesCopyWith<$Res> {
  factory $PricesCopyWith(Prices value, $Res Function(Prices) then) =
      _$PricesCopyWithImpl<$Res, Prices>;
  @useResult
  $Res call(
      {@JsonKey(name: "price") String? price,
      @JsonKey(name: "regular_price") String? regularPrice,
      @JsonKey(name: "sale_price") String? salePrice,
      @JsonKey(name: "price_range") dynamic priceRange,
      @JsonKey(name: "currency_code") String? currencyCode,
      @JsonKey(name: "currency_symbol") String? currencySymbol,
      @JsonKey(name: "currency_minor_unit") int? currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      String? currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      String? currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") String? currencyPrefix,
      @JsonKey(name: "currency_suffix") String? currencySuffix,
      @JsonKey(name: "raw_prices") RawPrices? rawPrices});

  $RawPricesCopyWith<$Res>? get rawPrices;
}

/// @nodoc
class _$PricesCopyWithImpl<$Res, $Val extends Prices>
    implements $PricesCopyWith<$Res> {
  _$PricesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? regularPrice = freezed,
    Object? salePrice = freezed,
    Object? priceRange = freezed,
    Object? currencyCode = freezed,
    Object? currencySymbol = freezed,
    Object? currencyMinorUnit = freezed,
    Object? currencyDecimalSeparator = freezed,
    Object? currencyThousandSeparator = freezed,
    Object? currencyPrefix = freezed,
    Object? currencySuffix = freezed,
    Object? rawPrices = freezed,
  }) {
    return _then(_value.copyWith(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      regularPrice: freezed == regularPrice
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      priceRange: freezed == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyMinorUnit: freezed == currencyMinorUnit
          ? _value.currencyMinorUnit
          : currencyMinorUnit // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyDecimalSeparator: freezed == currencyDecimalSeparator
          ? _value.currencyDecimalSeparator
          : currencyDecimalSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyThousandSeparator: freezed == currencyThousandSeparator
          ? _value.currencyThousandSeparator
          : currencyThousandSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyPrefix: freezed == currencyPrefix
          ? _value.currencyPrefix
          : currencyPrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySuffix: freezed == currencySuffix
          ? _value.currencySuffix
          : currencySuffix // ignore: cast_nullable_to_non_nullable
              as String?,
      rawPrices: freezed == rawPrices
          ? _value.rawPrices
          : rawPrices // ignore: cast_nullable_to_non_nullable
              as RawPrices?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RawPricesCopyWith<$Res>? get rawPrices {
    if (_value.rawPrices == null) {
      return null;
    }

    return $RawPricesCopyWith<$Res>(_value.rawPrices!, (value) {
      return _then(_value.copyWith(rawPrices: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PricesImplCopyWith<$Res> implements $PricesCopyWith<$Res> {
  factory _$$PricesImplCopyWith(
          _$PricesImpl value, $Res Function(_$PricesImpl) then) =
      __$$PricesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "price") String? price,
      @JsonKey(name: "regular_price") String? regularPrice,
      @JsonKey(name: "sale_price") String? salePrice,
      @JsonKey(name: "price_range") dynamic priceRange,
      @JsonKey(name: "currency_code") String? currencyCode,
      @JsonKey(name: "currency_symbol") String? currencySymbol,
      @JsonKey(name: "currency_minor_unit") int? currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      String? currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      String? currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") String? currencyPrefix,
      @JsonKey(name: "currency_suffix") String? currencySuffix,
      @JsonKey(name: "raw_prices") RawPrices? rawPrices});

  @override
  $RawPricesCopyWith<$Res>? get rawPrices;
}

/// @nodoc
class __$$PricesImplCopyWithImpl<$Res>
    extends _$PricesCopyWithImpl<$Res, _$PricesImpl>
    implements _$$PricesImplCopyWith<$Res> {
  __$$PricesImplCopyWithImpl(
      _$PricesImpl _value, $Res Function(_$PricesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? regularPrice = freezed,
    Object? salePrice = freezed,
    Object? priceRange = freezed,
    Object? currencyCode = freezed,
    Object? currencySymbol = freezed,
    Object? currencyMinorUnit = freezed,
    Object? currencyDecimalSeparator = freezed,
    Object? currencyThousandSeparator = freezed,
    Object? currencyPrefix = freezed,
    Object? currencySuffix = freezed,
    Object? rawPrices = freezed,
  }) {
    return _then(_$PricesImpl(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      regularPrice: freezed == regularPrice
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      priceRange: freezed == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyMinorUnit: freezed == currencyMinorUnit
          ? _value.currencyMinorUnit
          : currencyMinorUnit // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyDecimalSeparator: freezed == currencyDecimalSeparator
          ? _value.currencyDecimalSeparator
          : currencyDecimalSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyThousandSeparator: freezed == currencyThousandSeparator
          ? _value.currencyThousandSeparator
          : currencyThousandSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyPrefix: freezed == currencyPrefix
          ? _value.currencyPrefix
          : currencyPrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySuffix: freezed == currencySuffix
          ? _value.currencySuffix
          : currencySuffix // ignore: cast_nullable_to_non_nullable
              as String?,
      rawPrices: freezed == rawPrices
          ? _value.rawPrices
          : rawPrices // ignore: cast_nullable_to_non_nullable
              as RawPrices?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PricesImpl implements _Prices {
  const _$PricesImpl(
      {@JsonKey(name: "price") this.price,
      @JsonKey(name: "regular_price") this.regularPrice,
      @JsonKey(name: "sale_price") this.salePrice,
      @JsonKey(name: "price_range") this.priceRange,
      @JsonKey(name: "currency_code") this.currencyCode,
      @JsonKey(name: "currency_symbol") this.currencySymbol,
      @JsonKey(name: "currency_minor_unit") this.currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      this.currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      this.currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") this.currencyPrefix,
      @JsonKey(name: "currency_suffix") this.currencySuffix,
      @JsonKey(name: "raw_prices") this.rawPrices});

  factory _$PricesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PricesImplFromJson(json);

  @override
  @JsonKey(name: "price")
  final String? price;
  @override
  @JsonKey(name: "regular_price")
  final String? regularPrice;
  @override
  @JsonKey(name: "sale_price")
  final String? salePrice;
  @override
  @JsonKey(name: "price_range")
  final dynamic priceRange;
  @override
  @JsonKey(name: "currency_code")
  final String? currencyCode;
  @override
  @JsonKey(name: "currency_symbol")
  final String? currencySymbol;
  @override
  @JsonKey(name: "currency_minor_unit")
  final int? currencyMinorUnit;
  @override
  @JsonKey(name: "currency_decimal_separator")
  final String? currencyDecimalSeparator;
  @override
  @JsonKey(name: "currency_thousand_separator")
  final String? currencyThousandSeparator;
  @override
  @JsonKey(name: "currency_prefix")
  final String? currencyPrefix;
  @override
  @JsonKey(name: "currency_suffix")
  final String? currencySuffix;
  @override
  @JsonKey(name: "raw_prices")
  final RawPrices? rawPrices;

  @override
  String toString() {
    return 'Prices(price: $price, regularPrice: $regularPrice, salePrice: $salePrice, priceRange: $priceRange, currencyCode: $currencyCode, currencySymbol: $currencySymbol, currencyMinorUnit: $currencyMinorUnit, currencyDecimalSeparator: $currencyDecimalSeparator, currencyThousandSeparator: $currencyThousandSeparator, currencyPrefix: $currencyPrefix, currencySuffix: $currencySuffix, rawPrices: $rawPrices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PricesImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.regularPrice, regularPrice) ||
                other.regularPrice == regularPrice) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            const DeepCollectionEquality()
                .equals(other.priceRange, priceRange) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.currencyMinorUnit, currencyMinorUnit) ||
                other.currencyMinorUnit == currencyMinorUnit) &&
            (identical(
                    other.currencyDecimalSeparator, currencyDecimalSeparator) ||
                other.currencyDecimalSeparator == currencyDecimalSeparator) &&
            (identical(other.currencyThousandSeparator,
                    currencyThousandSeparator) ||
                other.currencyThousandSeparator == currencyThousandSeparator) &&
            (identical(other.currencyPrefix, currencyPrefix) ||
                other.currencyPrefix == currencyPrefix) &&
            (identical(other.currencySuffix, currencySuffix) ||
                other.currencySuffix == currencySuffix) &&
            (identical(other.rawPrices, rawPrices) ||
                other.rawPrices == rawPrices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      price,
      regularPrice,
      salePrice,
      const DeepCollectionEquality().hash(priceRange),
      currencyCode,
      currencySymbol,
      currencyMinorUnit,
      currencyDecimalSeparator,
      currencyThousandSeparator,
      currencyPrefix,
      currencySuffix,
      rawPrices);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PricesImplCopyWith<_$PricesImpl> get copyWith =>
      __$$PricesImplCopyWithImpl<_$PricesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PricesImplToJson(
      this,
    );
  }
}

abstract class _Prices implements Prices {
  const factory _Prices(
      {@JsonKey(name: "price") final String? price,
      @JsonKey(name: "regular_price") final String? regularPrice,
      @JsonKey(name: "sale_price") final String? salePrice,
      @JsonKey(name: "price_range") final dynamic priceRange,
      @JsonKey(name: "currency_code") final String? currencyCode,
      @JsonKey(name: "currency_symbol") final String? currencySymbol,
      @JsonKey(name: "currency_minor_unit") final int? currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      final String? currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      final String? currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") final String? currencyPrefix,
      @JsonKey(name: "currency_suffix") final String? currencySuffix,
      @JsonKey(name: "raw_prices") final RawPrices? rawPrices}) = _$PricesImpl;

  factory _Prices.fromJson(Map<String, dynamic> json) = _$PricesImpl.fromJson;

  @override
  @JsonKey(name: "price")
  String? get price;
  @override
  @JsonKey(name: "regular_price")
  String? get regularPrice;
  @override
  @JsonKey(name: "sale_price")
  String? get salePrice;
  @override
  @JsonKey(name: "price_range")
  dynamic get priceRange;
  @override
  @JsonKey(name: "currency_code")
  String? get currencyCode;
  @override
  @JsonKey(name: "currency_symbol")
  String? get currencySymbol;
  @override
  @JsonKey(name: "currency_minor_unit")
  int? get currencyMinorUnit;
  @override
  @JsonKey(name: "currency_decimal_separator")
  String? get currencyDecimalSeparator;
  @override
  @JsonKey(name: "currency_thousand_separator")
  String? get currencyThousandSeparator;
  @override
  @JsonKey(name: "currency_prefix")
  String? get currencyPrefix;
  @override
  @JsonKey(name: "currency_suffix")
  String? get currencySuffix;
  @override
  @JsonKey(name: "raw_prices")
  RawPrices? get rawPrices;
  @override
  @JsonKey(ignore: true)
  _$$PricesImplCopyWith<_$PricesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RawPrices _$RawPricesFromJson(Map<String, dynamic> json) {
  return _RawPrices.fromJson(json);
}

/// @nodoc
mixin _$RawPrices {
  @JsonKey(name: "precision")
  int? get precision => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "regular_price")
  String? get regularPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_price")
  String? get salePrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RawPricesCopyWith<RawPrices> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RawPricesCopyWith<$Res> {
  factory $RawPricesCopyWith(RawPrices value, $Res Function(RawPrices) then) =
      _$RawPricesCopyWithImpl<$Res, RawPrices>;
  @useResult
  $Res call(
      {@JsonKey(name: "precision") int? precision,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "regular_price") String? regularPrice,
      @JsonKey(name: "sale_price") String? salePrice});
}

/// @nodoc
class _$RawPricesCopyWithImpl<$Res, $Val extends RawPrices>
    implements $RawPricesCopyWith<$Res> {
  _$RawPricesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? precision = freezed,
    Object? price = freezed,
    Object? regularPrice = freezed,
    Object? salePrice = freezed,
  }) {
    return _then(_value.copyWith(
      precision: freezed == precision
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      regularPrice: freezed == regularPrice
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RawPricesImplCopyWith<$Res>
    implements $RawPricesCopyWith<$Res> {
  factory _$$RawPricesImplCopyWith(
          _$RawPricesImpl value, $Res Function(_$RawPricesImpl) then) =
      __$$RawPricesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "precision") int? precision,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "regular_price") String? regularPrice,
      @JsonKey(name: "sale_price") String? salePrice});
}

/// @nodoc
class __$$RawPricesImplCopyWithImpl<$Res>
    extends _$RawPricesCopyWithImpl<$Res, _$RawPricesImpl>
    implements _$$RawPricesImplCopyWith<$Res> {
  __$$RawPricesImplCopyWithImpl(
      _$RawPricesImpl _value, $Res Function(_$RawPricesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? precision = freezed,
    Object? price = freezed,
    Object? regularPrice = freezed,
    Object? salePrice = freezed,
  }) {
    return _then(_$RawPricesImpl(
      precision: freezed == precision
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      regularPrice: freezed == regularPrice
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RawPricesImpl implements _RawPrices {
  const _$RawPricesImpl(
      {@JsonKey(name: "precision") this.precision,
      @JsonKey(name: "price") this.price,
      @JsonKey(name: "regular_price") this.regularPrice,
      @JsonKey(name: "sale_price") this.salePrice});

  factory _$RawPricesImpl.fromJson(Map<String, dynamic> json) =>
      _$$RawPricesImplFromJson(json);

  @override
  @JsonKey(name: "precision")
  final int? precision;
  @override
  @JsonKey(name: "price")
  final String? price;
  @override
  @JsonKey(name: "regular_price")
  final String? regularPrice;
  @override
  @JsonKey(name: "sale_price")
  final String? salePrice;

  @override
  String toString() {
    return 'RawPrices(precision: $precision, price: $price, regularPrice: $regularPrice, salePrice: $salePrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RawPricesImpl &&
            (identical(other.precision, precision) ||
                other.precision == precision) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.regularPrice, regularPrice) ||
                other.regularPrice == regularPrice) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, precision, price, regularPrice, salePrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RawPricesImplCopyWith<_$RawPricesImpl> get copyWith =>
      __$$RawPricesImplCopyWithImpl<_$RawPricesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RawPricesImplToJson(
      this,
    );
  }
}

abstract class _RawPrices implements RawPrices {
  const factory _RawPrices(
      {@JsonKey(name: "precision") final int? precision,
      @JsonKey(name: "price") final String? price,
      @JsonKey(name: "regular_price") final String? regularPrice,
      @JsonKey(name: "sale_price") final String? salePrice}) = _$RawPricesImpl;

  factory _RawPrices.fromJson(Map<String, dynamic> json) =
      _$RawPricesImpl.fromJson;

  @override
  @JsonKey(name: "precision")
  int? get precision;
  @override
  @JsonKey(name: "price")
  String? get price;
  @override
  @JsonKey(name: "regular_price")
  String? get regularPrice;
  @override
  @JsonKey(name: "sale_price")
  String? get salePrice;
  @override
  @JsonKey(ignore: true)
  _$$RawPricesImplCopyWith<_$RawPricesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuantityLimits _$QuantityLimitsFromJson(Map<String, dynamic> json) {
  return _QuantityLimits.fromJson(json);
}

/// @nodoc
mixin _$QuantityLimits {
  @JsonKey(name: "minimum")
  int? get minimum => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum")
  int? get maximum => throw _privateConstructorUsedError;
  @JsonKey(name: "multiple_of")
  int? get multipleOf => throw _privateConstructorUsedError;
  @JsonKey(name: "editable")
  bool? get editable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuantityLimitsCopyWith<QuantityLimits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuantityLimitsCopyWith<$Res> {
  factory $QuantityLimitsCopyWith(
          QuantityLimits value, $Res Function(QuantityLimits) then) =
      _$QuantityLimitsCopyWithImpl<$Res, QuantityLimits>;
  @useResult
  $Res call(
      {@JsonKey(name: "minimum") int? minimum,
      @JsonKey(name: "maximum") int? maximum,
      @JsonKey(name: "multiple_of") int? multipleOf,
      @JsonKey(name: "editable") bool? editable});
}

/// @nodoc
class _$QuantityLimitsCopyWithImpl<$Res, $Val extends QuantityLimits>
    implements $QuantityLimitsCopyWith<$Res> {
  _$QuantityLimitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minimum = freezed,
    Object? maximum = freezed,
    Object? multipleOf = freezed,
    Object? editable = freezed,
  }) {
    return _then(_value.copyWith(
      minimum: freezed == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as int?,
      maximum: freezed == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as int?,
      multipleOf: freezed == multipleOf
          ? _value.multipleOf
          : multipleOf // ignore: cast_nullable_to_non_nullable
              as int?,
      editable: freezed == editable
          ? _value.editable
          : editable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuantityLimitsImplCopyWith<$Res>
    implements $QuantityLimitsCopyWith<$Res> {
  factory _$$QuantityLimitsImplCopyWith(_$QuantityLimitsImpl value,
          $Res Function(_$QuantityLimitsImpl) then) =
      __$$QuantityLimitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "minimum") int? minimum,
      @JsonKey(name: "maximum") int? maximum,
      @JsonKey(name: "multiple_of") int? multipleOf,
      @JsonKey(name: "editable") bool? editable});
}

/// @nodoc
class __$$QuantityLimitsImplCopyWithImpl<$Res>
    extends _$QuantityLimitsCopyWithImpl<$Res, _$QuantityLimitsImpl>
    implements _$$QuantityLimitsImplCopyWith<$Res> {
  __$$QuantityLimitsImplCopyWithImpl(
      _$QuantityLimitsImpl _value, $Res Function(_$QuantityLimitsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minimum = freezed,
    Object? maximum = freezed,
    Object? multipleOf = freezed,
    Object? editable = freezed,
  }) {
    return _then(_$QuantityLimitsImpl(
      minimum: freezed == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as int?,
      maximum: freezed == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as int?,
      multipleOf: freezed == multipleOf
          ? _value.multipleOf
          : multipleOf // ignore: cast_nullable_to_non_nullable
              as int?,
      editable: freezed == editable
          ? _value.editable
          : editable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuantityLimitsImpl implements _QuantityLimits {
  const _$QuantityLimitsImpl(
      {@JsonKey(name: "minimum") this.minimum,
      @JsonKey(name: "maximum") this.maximum,
      @JsonKey(name: "multiple_of") this.multipleOf,
      @JsonKey(name: "editable") this.editable});

  factory _$QuantityLimitsImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuantityLimitsImplFromJson(json);

  @override
  @JsonKey(name: "minimum")
  final int? minimum;
  @override
  @JsonKey(name: "maximum")
  final int? maximum;
  @override
  @JsonKey(name: "multiple_of")
  final int? multipleOf;
  @override
  @JsonKey(name: "editable")
  final bool? editable;

  @override
  String toString() {
    return 'QuantityLimits(minimum: $minimum, maximum: $maximum, multipleOf: $multipleOf, editable: $editable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuantityLimitsImpl &&
            (identical(other.minimum, minimum) || other.minimum == minimum) &&
            (identical(other.maximum, maximum) || other.maximum == maximum) &&
            (identical(other.multipleOf, multipleOf) ||
                other.multipleOf == multipleOf) &&
            (identical(other.editable, editable) ||
                other.editable == editable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, minimum, maximum, multipleOf, editable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuantityLimitsImplCopyWith<_$QuantityLimitsImpl> get copyWith =>
      __$$QuantityLimitsImplCopyWithImpl<_$QuantityLimitsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuantityLimitsImplToJson(
      this,
    );
  }
}

abstract class _QuantityLimits implements QuantityLimits {
  const factory _QuantityLimits(
      {@JsonKey(name: "minimum") final int? minimum,
      @JsonKey(name: "maximum") final int? maximum,
      @JsonKey(name: "multiple_of") final int? multipleOf,
      @JsonKey(name: "editable") final bool? editable}) = _$QuantityLimitsImpl;

  factory _QuantityLimits.fromJson(Map<String, dynamic> json) =
      _$QuantityLimitsImpl.fromJson;

  @override
  @JsonKey(name: "minimum")
  int? get minimum;
  @override
  @JsonKey(name: "maximum")
  int? get maximum;
  @override
  @JsonKey(name: "multiple_of")
  int? get multipleOf;
  @override
  @JsonKey(name: "editable")
  bool? get editable;
  @override
  @JsonKey(ignore: true)
  _$$QuantityLimitsImplCopyWith<_$QuantityLimitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemTotals _$ItemTotalsFromJson(Map<String, dynamic> json) {
  return _ItemTotals.fromJson(json);
}

/// @nodoc
mixin _$ItemTotals {
  @JsonKey(name: "line_subtotal")
  String? get lineSubtotal => throw _privateConstructorUsedError;
  @JsonKey(name: "line_subtotal_tax")
  String? get lineSubtotalTax => throw _privateConstructorUsedError;
  @JsonKey(name: "line_total")
  String? get lineTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "line_total_tax")
  String? get lineTotalTax => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_code")
  String? get currencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_symbol")
  String? get currencySymbol => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_minor_unit")
  int? get currencyMinorUnit => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_decimal_separator")
  String? get currencyDecimalSeparator => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_thousand_separator")
  String? get currencyThousandSeparator => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_prefix")
  String? get currencyPrefix => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_suffix")
  String? get currencySuffix => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemTotalsCopyWith<ItemTotals> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemTotalsCopyWith<$Res> {
  factory $ItemTotalsCopyWith(
          ItemTotals value, $Res Function(ItemTotals) then) =
      _$ItemTotalsCopyWithImpl<$Res, ItemTotals>;
  @useResult
  $Res call(
      {@JsonKey(name: "line_subtotal") String? lineSubtotal,
      @JsonKey(name: "line_subtotal_tax") String? lineSubtotalTax,
      @JsonKey(name: "line_total") String? lineTotal,
      @JsonKey(name: "line_total_tax") String? lineTotalTax,
      @JsonKey(name: "currency_code") String? currencyCode,
      @JsonKey(name: "currency_symbol") String? currencySymbol,
      @JsonKey(name: "currency_minor_unit") int? currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      String? currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      String? currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") String? currencyPrefix,
      @JsonKey(name: "currency_suffix") String? currencySuffix});
}

/// @nodoc
class _$ItemTotalsCopyWithImpl<$Res, $Val extends ItemTotals>
    implements $ItemTotalsCopyWith<$Res> {
  _$ItemTotalsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lineSubtotal = freezed,
    Object? lineSubtotalTax = freezed,
    Object? lineTotal = freezed,
    Object? lineTotalTax = freezed,
    Object? currencyCode = freezed,
    Object? currencySymbol = freezed,
    Object? currencyMinorUnit = freezed,
    Object? currencyDecimalSeparator = freezed,
    Object? currencyThousandSeparator = freezed,
    Object? currencyPrefix = freezed,
    Object? currencySuffix = freezed,
  }) {
    return _then(_value.copyWith(
      lineSubtotal: freezed == lineSubtotal
          ? _value.lineSubtotal
          : lineSubtotal // ignore: cast_nullable_to_non_nullable
              as String?,
      lineSubtotalTax: freezed == lineSubtotalTax
          ? _value.lineSubtotalTax
          : lineSubtotalTax // ignore: cast_nullable_to_non_nullable
              as String?,
      lineTotal: freezed == lineTotal
          ? _value.lineTotal
          : lineTotal // ignore: cast_nullable_to_non_nullable
              as String?,
      lineTotalTax: freezed == lineTotalTax
          ? _value.lineTotalTax
          : lineTotalTax // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyMinorUnit: freezed == currencyMinorUnit
          ? _value.currencyMinorUnit
          : currencyMinorUnit // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyDecimalSeparator: freezed == currencyDecimalSeparator
          ? _value.currencyDecimalSeparator
          : currencyDecimalSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyThousandSeparator: freezed == currencyThousandSeparator
          ? _value.currencyThousandSeparator
          : currencyThousandSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyPrefix: freezed == currencyPrefix
          ? _value.currencyPrefix
          : currencyPrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySuffix: freezed == currencySuffix
          ? _value.currencySuffix
          : currencySuffix // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemTotalsImplCopyWith<$Res>
    implements $ItemTotalsCopyWith<$Res> {
  factory _$$ItemTotalsImplCopyWith(
          _$ItemTotalsImpl value, $Res Function(_$ItemTotalsImpl) then) =
      __$$ItemTotalsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "line_subtotal") String? lineSubtotal,
      @JsonKey(name: "line_subtotal_tax") String? lineSubtotalTax,
      @JsonKey(name: "line_total") String? lineTotal,
      @JsonKey(name: "line_total_tax") String? lineTotalTax,
      @JsonKey(name: "currency_code") String? currencyCode,
      @JsonKey(name: "currency_symbol") String? currencySymbol,
      @JsonKey(name: "currency_minor_unit") int? currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      String? currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      String? currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") String? currencyPrefix,
      @JsonKey(name: "currency_suffix") String? currencySuffix});
}

/// @nodoc
class __$$ItemTotalsImplCopyWithImpl<$Res>
    extends _$ItemTotalsCopyWithImpl<$Res, _$ItemTotalsImpl>
    implements _$$ItemTotalsImplCopyWith<$Res> {
  __$$ItemTotalsImplCopyWithImpl(
      _$ItemTotalsImpl _value, $Res Function(_$ItemTotalsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lineSubtotal = freezed,
    Object? lineSubtotalTax = freezed,
    Object? lineTotal = freezed,
    Object? lineTotalTax = freezed,
    Object? currencyCode = freezed,
    Object? currencySymbol = freezed,
    Object? currencyMinorUnit = freezed,
    Object? currencyDecimalSeparator = freezed,
    Object? currencyThousandSeparator = freezed,
    Object? currencyPrefix = freezed,
    Object? currencySuffix = freezed,
  }) {
    return _then(_$ItemTotalsImpl(
      lineSubtotal: freezed == lineSubtotal
          ? _value.lineSubtotal
          : lineSubtotal // ignore: cast_nullable_to_non_nullable
              as String?,
      lineSubtotalTax: freezed == lineSubtotalTax
          ? _value.lineSubtotalTax
          : lineSubtotalTax // ignore: cast_nullable_to_non_nullable
              as String?,
      lineTotal: freezed == lineTotal
          ? _value.lineTotal
          : lineTotal // ignore: cast_nullable_to_non_nullable
              as String?,
      lineTotalTax: freezed == lineTotalTax
          ? _value.lineTotalTax
          : lineTotalTax // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyMinorUnit: freezed == currencyMinorUnit
          ? _value.currencyMinorUnit
          : currencyMinorUnit // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyDecimalSeparator: freezed == currencyDecimalSeparator
          ? _value.currencyDecimalSeparator
          : currencyDecimalSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyThousandSeparator: freezed == currencyThousandSeparator
          ? _value.currencyThousandSeparator
          : currencyThousandSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyPrefix: freezed == currencyPrefix
          ? _value.currencyPrefix
          : currencyPrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySuffix: freezed == currencySuffix
          ? _value.currencySuffix
          : currencySuffix // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemTotalsImpl implements _ItemTotals {
  const _$ItemTotalsImpl(
      {@JsonKey(name: "line_subtotal") this.lineSubtotal,
      @JsonKey(name: "line_subtotal_tax") this.lineSubtotalTax,
      @JsonKey(name: "line_total") this.lineTotal,
      @JsonKey(name: "line_total_tax") this.lineTotalTax,
      @JsonKey(name: "currency_code") this.currencyCode,
      @JsonKey(name: "currency_symbol") this.currencySymbol,
      @JsonKey(name: "currency_minor_unit") this.currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      this.currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      this.currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") this.currencyPrefix,
      @JsonKey(name: "currency_suffix") this.currencySuffix});

  factory _$ItemTotalsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemTotalsImplFromJson(json);

  @override
  @JsonKey(name: "line_subtotal")
  final String? lineSubtotal;
  @override
  @JsonKey(name: "line_subtotal_tax")
  final String? lineSubtotalTax;
  @override
  @JsonKey(name: "line_total")
  final String? lineTotal;
  @override
  @JsonKey(name: "line_total_tax")
  final String? lineTotalTax;
  @override
  @JsonKey(name: "currency_code")
  final String? currencyCode;
  @override
  @JsonKey(name: "currency_symbol")
  final String? currencySymbol;
  @override
  @JsonKey(name: "currency_minor_unit")
  final int? currencyMinorUnit;
  @override
  @JsonKey(name: "currency_decimal_separator")
  final String? currencyDecimalSeparator;
  @override
  @JsonKey(name: "currency_thousand_separator")
  final String? currencyThousandSeparator;
  @override
  @JsonKey(name: "currency_prefix")
  final String? currencyPrefix;
  @override
  @JsonKey(name: "currency_suffix")
  final String? currencySuffix;

  @override
  String toString() {
    return 'ItemTotals(lineSubtotal: $lineSubtotal, lineSubtotalTax: $lineSubtotalTax, lineTotal: $lineTotal, lineTotalTax: $lineTotalTax, currencyCode: $currencyCode, currencySymbol: $currencySymbol, currencyMinorUnit: $currencyMinorUnit, currencyDecimalSeparator: $currencyDecimalSeparator, currencyThousandSeparator: $currencyThousandSeparator, currencyPrefix: $currencyPrefix, currencySuffix: $currencySuffix)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemTotalsImpl &&
            (identical(other.lineSubtotal, lineSubtotal) ||
                other.lineSubtotal == lineSubtotal) &&
            (identical(other.lineSubtotalTax, lineSubtotalTax) ||
                other.lineSubtotalTax == lineSubtotalTax) &&
            (identical(other.lineTotal, lineTotal) ||
                other.lineTotal == lineTotal) &&
            (identical(other.lineTotalTax, lineTotalTax) ||
                other.lineTotalTax == lineTotalTax) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.currencyMinorUnit, currencyMinorUnit) ||
                other.currencyMinorUnit == currencyMinorUnit) &&
            (identical(
                    other.currencyDecimalSeparator, currencyDecimalSeparator) ||
                other.currencyDecimalSeparator == currencyDecimalSeparator) &&
            (identical(other.currencyThousandSeparator,
                    currencyThousandSeparator) ||
                other.currencyThousandSeparator == currencyThousandSeparator) &&
            (identical(other.currencyPrefix, currencyPrefix) ||
                other.currencyPrefix == currencyPrefix) &&
            (identical(other.currencySuffix, currencySuffix) ||
                other.currencySuffix == currencySuffix));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lineSubtotal,
      lineSubtotalTax,
      lineTotal,
      lineTotalTax,
      currencyCode,
      currencySymbol,
      currencyMinorUnit,
      currencyDecimalSeparator,
      currencyThousandSeparator,
      currencyPrefix,
      currencySuffix);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemTotalsImplCopyWith<_$ItemTotalsImpl> get copyWith =>
      __$$ItemTotalsImplCopyWithImpl<_$ItemTotalsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemTotalsImplToJson(
      this,
    );
  }
}

abstract class _ItemTotals implements ItemTotals {
  const factory _ItemTotals(
          {@JsonKey(name: "line_subtotal") final String? lineSubtotal,
          @JsonKey(name: "line_subtotal_tax") final String? lineSubtotalTax,
          @JsonKey(name: "line_total") final String? lineTotal,
          @JsonKey(name: "line_total_tax") final String? lineTotalTax,
          @JsonKey(name: "currency_code") final String? currencyCode,
          @JsonKey(name: "currency_symbol") final String? currencySymbol,
          @JsonKey(name: "currency_minor_unit") final int? currencyMinorUnit,
          @JsonKey(name: "currency_decimal_separator")
          final String? currencyDecimalSeparator,
          @JsonKey(name: "currency_thousand_separator")
          final String? currencyThousandSeparator,
          @JsonKey(name: "currency_prefix") final String? currencyPrefix,
          @JsonKey(name: "currency_suffix") final String? currencySuffix}) =
      _$ItemTotalsImpl;

  factory _ItemTotals.fromJson(Map<String, dynamic> json) =
      _$ItemTotalsImpl.fromJson;

  @override
  @JsonKey(name: "line_subtotal")
  String? get lineSubtotal;
  @override
  @JsonKey(name: "line_subtotal_tax")
  String? get lineSubtotalTax;
  @override
  @JsonKey(name: "line_total")
  String? get lineTotal;
  @override
  @JsonKey(name: "line_total_tax")
  String? get lineTotalTax;
  @override
  @JsonKey(name: "currency_code")
  String? get currencyCode;
  @override
  @JsonKey(name: "currency_symbol")
  String? get currencySymbol;
  @override
  @JsonKey(name: "currency_minor_unit")
  int? get currencyMinorUnit;
  @override
  @JsonKey(name: "currency_decimal_separator")
  String? get currencyDecimalSeparator;
  @override
  @JsonKey(name: "currency_thousand_separator")
  String? get currencyThousandSeparator;
  @override
  @JsonKey(name: "currency_prefix")
  String? get currencyPrefix;
  @override
  @JsonKey(name: "currency_suffix")
  String? get currencySuffix;
  @override
  @JsonKey(ignore: true)
  _$$ItemTotalsImplCopyWith<_$ItemTotalsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShippingAddress _$ShippingAddressFromJson(Map<String, dynamic> json) {
  return _ShippingAddress.fromJson(json);
}

/// @nodoc
mixin _$ShippingAddress {
  @JsonKey(name: "first_name")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "company")
  String? get company => throw _privateConstructorUsedError;
  @JsonKey(name: "address_1")
  String? get address1 => throw _privateConstructorUsedError;
  @JsonKey(name: "address_2")
  String? get address2 => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: "state")
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: "postcode")
  String? get postcode => throw _privateConstructorUsedError;
  @JsonKey(name: "country")
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShippingAddressCopyWith<ShippingAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingAddressCopyWith<$Res> {
  factory $ShippingAddressCopyWith(
          ShippingAddress value, $Res Function(ShippingAddress) then) =
      _$ShippingAddressCopyWithImpl<$Res, ShippingAddress>;
  @useResult
  $Res call(
      {@JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "company") String? company,
      @JsonKey(name: "address_1") String? address1,
      @JsonKey(name: "address_2") String? address2,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "postcode") String? postcode,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "phone") String? phone});
}

/// @nodoc
class _$ShippingAddressCopyWithImpl<$Res, $Val extends ShippingAddress>
    implements $ShippingAddressCopyWith<$Res> {
  _$ShippingAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? company = freezed,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postcode = freezed,
    Object? country = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShippingAddressImplCopyWith<$Res>
    implements $ShippingAddressCopyWith<$Res> {
  factory _$$ShippingAddressImplCopyWith(_$ShippingAddressImpl value,
          $Res Function(_$ShippingAddressImpl) then) =
      __$$ShippingAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "company") String? company,
      @JsonKey(name: "address_1") String? address1,
      @JsonKey(name: "address_2") String? address2,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "postcode") String? postcode,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "phone") String? phone});
}

/// @nodoc
class __$$ShippingAddressImplCopyWithImpl<$Res>
    extends _$ShippingAddressCopyWithImpl<$Res, _$ShippingAddressImpl>
    implements _$$ShippingAddressImplCopyWith<$Res> {
  __$$ShippingAddressImplCopyWithImpl(
      _$ShippingAddressImpl _value, $Res Function(_$ShippingAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? company = freezed,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postcode = freezed,
    Object? country = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$ShippingAddressImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShippingAddressImpl implements _ShippingAddress {
  const _$ShippingAddressImpl(
      {@JsonKey(name: "first_name") this.firstName,
      @JsonKey(name: "last_name") this.lastName,
      @JsonKey(name: "company") this.company,
      @JsonKey(name: "address_1") this.address1,
      @JsonKey(name: "address_2") this.address2,
      @JsonKey(name: "city") this.city,
      @JsonKey(name: "state") this.state,
      @JsonKey(name: "postcode") this.postcode,
      @JsonKey(name: "country") this.country,
      @JsonKey(name: "phone") this.phone});

  factory _$ShippingAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShippingAddressImplFromJson(json);

  @override
  @JsonKey(name: "first_name")
  final String? firstName;
  @override
  @JsonKey(name: "last_name")
  final String? lastName;
  @override
  @JsonKey(name: "company")
  final String? company;
  @override
  @JsonKey(name: "address_1")
  final String? address1;
  @override
  @JsonKey(name: "address_2")
  final String? address2;
  @override
  @JsonKey(name: "city")
  final String? city;
  @override
  @JsonKey(name: "state")
  final String? state;
  @override
  @JsonKey(name: "postcode")
  final String? postcode;
  @override
  @JsonKey(name: "country")
  final String? country;
  @override
  @JsonKey(name: "phone")
  final String? phone;

  @override
  String toString() {
    return 'ShippingAddress(firstName: $firstName, lastName: $lastName, company: $company, address1: $address1, address2: $address2, city: $city, state: $state, postcode: $postcode, country: $country, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShippingAddressImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, company,
      address1, address2, city, state, postcode, country, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingAddressImplCopyWith<_$ShippingAddressImpl> get copyWith =>
      __$$ShippingAddressImplCopyWithImpl<_$ShippingAddressImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShippingAddressImplToJson(
      this,
    );
  }
}

abstract class _ShippingAddress implements ShippingAddress {
  const factory _ShippingAddress(
      {@JsonKey(name: "first_name") final String? firstName,
      @JsonKey(name: "last_name") final String? lastName,
      @JsonKey(name: "company") final String? company,
      @JsonKey(name: "address_1") final String? address1,
      @JsonKey(name: "address_2") final String? address2,
      @JsonKey(name: "city") final String? city,
      @JsonKey(name: "state") final String? state,
      @JsonKey(name: "postcode") final String? postcode,
      @JsonKey(name: "country") final String? country,
      @JsonKey(name: "phone") final String? phone}) = _$ShippingAddressImpl;

  factory _ShippingAddress.fromJson(Map<String, dynamic> json) =
      _$ShippingAddressImpl.fromJson;

  @override
  @JsonKey(name: "first_name")
  String? get firstName;
  @override
  @JsonKey(name: "last_name")
  String? get lastName;
  @override
  @JsonKey(name: "company")
  String? get company;
  @override
  @JsonKey(name: "address_1")
  String? get address1;
  @override
  @JsonKey(name: "address_2")
  String? get address2;
  @override
  @JsonKey(name: "city")
  String? get city;
  @override
  @JsonKey(name: "state")
  String? get state;
  @override
  @JsonKey(name: "postcode")
  String? get postcode;
  @override
  @JsonKey(name: "country")
  String? get country;
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$$ShippingAddressImplCopyWith<_$ShippingAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetCartResponseShippingRate _$GetCartResponseShippingRateFromJson(
    Map<String, dynamic> json) {
  return _GetCartResponseShippingRate.fromJson(json);
}

/// @nodoc
mixin _$GetCartResponseShippingRate {
  @JsonKey(name: "package_id")
  int? get packageId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "destination")
  Destination? get destination => throw _privateConstructorUsedError;
  @JsonKey(name: "items")
  List<ShippingRateItem>? get items => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_rates")
  List<ShippingRateShippingRate>? get shippingRates =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCartResponseShippingRateCopyWith<GetCartResponseShippingRate>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCartResponseShippingRateCopyWith<$Res> {
  factory $GetCartResponseShippingRateCopyWith(
          GetCartResponseShippingRate value,
          $Res Function(GetCartResponseShippingRate) then) =
      _$GetCartResponseShippingRateCopyWithImpl<$Res,
          GetCartResponseShippingRate>;
  @useResult
  $Res call(
      {@JsonKey(name: "package_id") int? packageId,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "destination") Destination? destination,
      @JsonKey(name: "items") List<ShippingRateItem>? items,
      @JsonKey(name: "shipping_rates")
      List<ShippingRateShippingRate>? shippingRates});

  $DestinationCopyWith<$Res>? get destination;
}

/// @nodoc
class _$GetCartResponseShippingRateCopyWithImpl<$Res,
        $Val extends GetCartResponseShippingRate>
    implements $GetCartResponseShippingRateCopyWith<$Res> {
  _$GetCartResponseShippingRateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageId = freezed,
    Object? name = freezed,
    Object? destination = freezed,
    Object? items = freezed,
    Object? shippingRates = freezed,
  }) {
    return _then(_value.copyWith(
      packageId: freezed == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      destination: freezed == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Destination?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ShippingRateItem>?,
      shippingRates: freezed == shippingRates
          ? _value.shippingRates
          : shippingRates // ignore: cast_nullable_to_non_nullable
              as List<ShippingRateShippingRate>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DestinationCopyWith<$Res>? get destination {
    if (_value.destination == null) {
      return null;
    }

    return $DestinationCopyWith<$Res>(_value.destination!, (value) {
      return _then(_value.copyWith(destination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetCartResponseShippingRateImplCopyWith<$Res>
    implements $GetCartResponseShippingRateCopyWith<$Res> {
  factory _$$GetCartResponseShippingRateImplCopyWith(
          _$GetCartResponseShippingRateImpl value,
          $Res Function(_$GetCartResponseShippingRateImpl) then) =
      __$$GetCartResponseShippingRateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "package_id") int? packageId,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "destination") Destination? destination,
      @JsonKey(name: "items") List<ShippingRateItem>? items,
      @JsonKey(name: "shipping_rates")
      List<ShippingRateShippingRate>? shippingRates});

  @override
  $DestinationCopyWith<$Res>? get destination;
}

/// @nodoc
class __$$GetCartResponseShippingRateImplCopyWithImpl<$Res>
    extends _$GetCartResponseShippingRateCopyWithImpl<$Res,
        _$GetCartResponseShippingRateImpl>
    implements _$$GetCartResponseShippingRateImplCopyWith<$Res> {
  __$$GetCartResponseShippingRateImplCopyWithImpl(
      _$GetCartResponseShippingRateImpl _value,
      $Res Function(_$GetCartResponseShippingRateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageId = freezed,
    Object? name = freezed,
    Object? destination = freezed,
    Object? items = freezed,
    Object? shippingRates = freezed,
  }) {
    return _then(_$GetCartResponseShippingRateImpl(
      packageId: freezed == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      destination: freezed == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Destination?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ShippingRateItem>?,
      shippingRates: freezed == shippingRates
          ? _value._shippingRates
          : shippingRates // ignore: cast_nullable_to_non_nullable
              as List<ShippingRateShippingRate>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetCartResponseShippingRateImpl
    implements _GetCartResponseShippingRate {
  const _$GetCartResponseShippingRateImpl(
      {@JsonKey(name: "package_id") this.packageId,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "destination") this.destination,
      @JsonKey(name: "items") final List<ShippingRateItem>? items,
      @JsonKey(name: "shipping_rates")
      final List<ShippingRateShippingRate>? shippingRates})
      : _items = items,
        _shippingRates = shippingRates;

  factory _$GetCartResponseShippingRateImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetCartResponseShippingRateImplFromJson(json);

  @override
  @JsonKey(name: "package_id")
  final int? packageId;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "destination")
  final Destination? destination;
  final List<ShippingRateItem>? _items;
  @override
  @JsonKey(name: "items")
  List<ShippingRateItem>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ShippingRateShippingRate>? _shippingRates;
  @override
  @JsonKey(name: "shipping_rates")
  List<ShippingRateShippingRate>? get shippingRates {
    final value = _shippingRates;
    if (value == null) return null;
    if (_shippingRates is EqualUnmodifiableListView) return _shippingRates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetCartResponseShippingRate(packageId: $packageId, name: $name, destination: $destination, items: $items, shippingRates: $shippingRates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCartResponseShippingRateImpl &&
            (identical(other.packageId, packageId) ||
                other.packageId == packageId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other._shippingRates, _shippingRates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      packageId,
      name,
      destination,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_shippingRates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCartResponseShippingRateImplCopyWith<_$GetCartResponseShippingRateImpl>
      get copyWith => __$$GetCartResponseShippingRateImplCopyWithImpl<
          _$GetCartResponseShippingRateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCartResponseShippingRateImplToJson(
      this,
    );
  }
}

abstract class _GetCartResponseShippingRate
    implements GetCartResponseShippingRate {
  const factory _GetCartResponseShippingRate(
          {@JsonKey(name: "package_id") final int? packageId,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "destination") final Destination? destination,
          @JsonKey(name: "items") final List<ShippingRateItem>? items,
          @JsonKey(name: "shipping_rates")
          final List<ShippingRateShippingRate>? shippingRates}) =
      _$GetCartResponseShippingRateImpl;

  factory _GetCartResponseShippingRate.fromJson(Map<String, dynamic> json) =
      _$GetCartResponseShippingRateImpl.fromJson;

  @override
  @JsonKey(name: "package_id")
  int? get packageId;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "destination")
  Destination? get destination;
  @override
  @JsonKey(name: "items")
  List<ShippingRateItem>? get items;
  @override
  @JsonKey(name: "shipping_rates")
  List<ShippingRateShippingRate>? get shippingRates;
  @override
  @JsonKey(ignore: true)
  _$$GetCartResponseShippingRateImplCopyWith<_$GetCartResponseShippingRateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Destination _$DestinationFromJson(Map<String, dynamic> json) {
  return _Destination.fromJson(json);
}

/// @nodoc
mixin _$Destination {
  @JsonKey(name: "address_1")
  String? get address1 => throw _privateConstructorUsedError;
  @JsonKey(name: "address_2")
  String? get address2 => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: "state")
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: "postcode")
  String? get postcode => throw _privateConstructorUsedError;
  @JsonKey(name: "country")
  String? get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DestinationCopyWith<Destination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinationCopyWith<$Res> {
  factory $DestinationCopyWith(
          Destination value, $Res Function(Destination) then) =
      _$DestinationCopyWithImpl<$Res, Destination>;
  @useResult
  $Res call(
      {@JsonKey(name: "address_1") String? address1,
      @JsonKey(name: "address_2") String? address2,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "postcode") String? postcode,
      @JsonKey(name: "country") String? country});
}

/// @nodoc
class _$DestinationCopyWithImpl<$Res, $Val extends Destination>
    implements $DestinationCopyWith<$Res> {
  _$DestinationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postcode = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DestinationImplCopyWith<$Res>
    implements $DestinationCopyWith<$Res> {
  factory _$$DestinationImplCopyWith(
          _$DestinationImpl value, $Res Function(_$DestinationImpl) then) =
      __$$DestinationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "address_1") String? address1,
      @JsonKey(name: "address_2") String? address2,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "postcode") String? postcode,
      @JsonKey(name: "country") String? country});
}

/// @nodoc
class __$$DestinationImplCopyWithImpl<$Res>
    extends _$DestinationCopyWithImpl<$Res, _$DestinationImpl>
    implements _$$DestinationImplCopyWith<$Res> {
  __$$DestinationImplCopyWithImpl(
      _$DestinationImpl _value, $Res Function(_$DestinationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postcode = freezed,
    Object? country = freezed,
  }) {
    return _then(_$DestinationImpl(
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DestinationImpl implements _Destination {
  const _$DestinationImpl(
      {@JsonKey(name: "address_1") this.address1,
      @JsonKey(name: "address_2") this.address2,
      @JsonKey(name: "city") this.city,
      @JsonKey(name: "state") this.state,
      @JsonKey(name: "postcode") this.postcode,
      @JsonKey(name: "country") this.country});

  factory _$DestinationImpl.fromJson(Map<String, dynamic> json) =>
      _$$DestinationImplFromJson(json);

  @override
  @JsonKey(name: "address_1")
  final String? address1;
  @override
  @JsonKey(name: "address_2")
  final String? address2;
  @override
  @JsonKey(name: "city")
  final String? city;
  @override
  @JsonKey(name: "state")
  final String? state;
  @override
  @JsonKey(name: "postcode")
  final String? postcode;
  @override
  @JsonKey(name: "country")
  final String? country;

  @override
  String toString() {
    return 'Destination(address1: $address1, address2: $address2, city: $city, state: $state, postcode: $postcode, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DestinationImpl &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, address1, address2, city, state, postcode, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DestinationImplCopyWith<_$DestinationImpl> get copyWith =>
      __$$DestinationImplCopyWithImpl<_$DestinationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DestinationImplToJson(
      this,
    );
  }
}

abstract class _Destination implements Destination {
  const factory _Destination(
      {@JsonKey(name: "address_1") final String? address1,
      @JsonKey(name: "address_2") final String? address2,
      @JsonKey(name: "city") final String? city,
      @JsonKey(name: "state") final String? state,
      @JsonKey(name: "postcode") final String? postcode,
      @JsonKey(name: "country") final String? country}) = _$DestinationImpl;

  factory _Destination.fromJson(Map<String, dynamic> json) =
      _$DestinationImpl.fromJson;

  @override
  @JsonKey(name: "address_1")
  String? get address1;
  @override
  @JsonKey(name: "address_2")
  String? get address2;
  @override
  @JsonKey(name: "city")
  String? get city;
  @override
  @JsonKey(name: "state")
  String? get state;
  @override
  @JsonKey(name: "postcode")
  String? get postcode;
  @override
  @JsonKey(name: "country")
  String? get country;
  @override
  @JsonKey(ignore: true)
  _$$DestinationImplCopyWith<_$DestinationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShippingRateItem _$ShippingRateItemFromJson(Map<String, dynamic> json) {
  return _ShippingRateItem.fromJson(json);
}

/// @nodoc
mixin _$ShippingRateItem {
  @JsonKey(name: "key")
  String? get key => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShippingRateItemCopyWith<ShippingRateItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingRateItemCopyWith<$Res> {
  factory $ShippingRateItemCopyWith(
          ShippingRateItem value, $Res Function(ShippingRateItem) then) =
      _$ShippingRateItemCopyWithImpl<$Res, ShippingRateItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "key") String? key,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "quantity") int? quantity});
}

/// @nodoc
class _$ShippingRateItemCopyWithImpl<$Res, $Val extends ShippingRateItem>
    implements $ShippingRateItemCopyWith<$Res> {
  _$ShippingRateItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? name = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShippingRateItemImplCopyWith<$Res>
    implements $ShippingRateItemCopyWith<$Res> {
  factory _$$ShippingRateItemImplCopyWith(_$ShippingRateItemImpl value,
          $Res Function(_$ShippingRateItemImpl) then) =
      __$$ShippingRateItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "key") String? key,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "quantity") int? quantity});
}

/// @nodoc
class __$$ShippingRateItemImplCopyWithImpl<$Res>
    extends _$ShippingRateItemCopyWithImpl<$Res, _$ShippingRateItemImpl>
    implements _$$ShippingRateItemImplCopyWith<$Res> {
  __$$ShippingRateItemImplCopyWithImpl(_$ShippingRateItemImpl _value,
      $Res Function(_$ShippingRateItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? name = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$ShippingRateItemImpl(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShippingRateItemImpl implements _ShippingRateItem {
  const _$ShippingRateItemImpl(
      {@JsonKey(name: "key") this.key,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "quantity") this.quantity});

  factory _$ShippingRateItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShippingRateItemImplFromJson(json);

  @override
  @JsonKey(name: "key")
  final String? key;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "quantity")
  final int? quantity;

  @override
  String toString() {
    return 'ShippingRateItem(key: $key, name: $name, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShippingRateItemImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, name, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingRateItemImplCopyWith<_$ShippingRateItemImpl> get copyWith =>
      __$$ShippingRateItemImplCopyWithImpl<_$ShippingRateItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShippingRateItemImplToJson(
      this,
    );
  }
}

abstract class _ShippingRateItem implements ShippingRateItem {
  const factory _ShippingRateItem(
      {@JsonKey(name: "key") final String? key,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "quantity") final int? quantity}) = _$ShippingRateItemImpl;

  factory _ShippingRateItem.fromJson(Map<String, dynamic> json) =
      _$ShippingRateItemImpl.fromJson;

  @override
  @JsonKey(name: "key")
  String? get key;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "quantity")
  int? get quantity;
  @override
  @JsonKey(ignore: true)
  _$$ShippingRateItemImplCopyWith<_$ShippingRateItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShippingRateShippingRate _$ShippingRateShippingRateFromJson(
    Map<String, dynamic> json) {
  return _ShippingRateShippingRate.fromJson(json);
}

/// @nodoc
mixin _$ShippingRateShippingRate {
  @JsonKey(name: "rate_id")
  String? get rateId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_time")
  String? get deliveryTime => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "taxes")
  String? get taxes => throw _privateConstructorUsedError;
  @JsonKey(name: "instance_id")
  int? get instanceId => throw _privateConstructorUsedError;
  @JsonKey(name: "method_id")
  String? get methodId => throw _privateConstructorUsedError;
  @JsonKey(name: "meta_data")
  List<MetaDatum>? get metaData => throw _privateConstructorUsedError;
  @JsonKey(name: "selected")
  bool? get selected => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_code")
  String? get currencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_symbol")
  String? get currencySymbol => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_minor_unit")
  int? get currencyMinorUnit => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_decimal_separator")
  String? get currencyDecimalSeparator => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_thousand_separator")
  String? get currencyThousandSeparator => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_prefix")
  String? get currencyPrefix => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_suffix")
  String? get currencySuffix => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShippingRateShippingRateCopyWith<ShippingRateShippingRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingRateShippingRateCopyWith<$Res> {
  factory $ShippingRateShippingRateCopyWith(ShippingRateShippingRate value,
          $Res Function(ShippingRateShippingRate) then) =
      _$ShippingRateShippingRateCopyWithImpl<$Res, ShippingRateShippingRate>;
  @useResult
  $Res call(
      {@JsonKey(name: "rate_id") String? rateId,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "delivery_time") String? deliveryTime,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "taxes") String? taxes,
      @JsonKey(name: "instance_id") int? instanceId,
      @JsonKey(name: "method_id") String? methodId,
      @JsonKey(name: "meta_data") List<MetaDatum>? metaData,
      @JsonKey(name: "selected") bool? selected,
      @JsonKey(name: "currency_code") String? currencyCode,
      @JsonKey(name: "currency_symbol") String? currencySymbol,
      @JsonKey(name: "currency_minor_unit") int? currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      String? currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      String? currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") String? currencyPrefix,
      @JsonKey(name: "currency_suffix") String? currencySuffix});
}

/// @nodoc
class _$ShippingRateShippingRateCopyWithImpl<$Res,
        $Val extends ShippingRateShippingRate>
    implements $ShippingRateShippingRateCopyWith<$Res> {
  _$ShippingRateShippingRateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rateId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? deliveryTime = freezed,
    Object? price = freezed,
    Object? taxes = freezed,
    Object? instanceId = freezed,
    Object? methodId = freezed,
    Object? metaData = freezed,
    Object? selected = freezed,
    Object? currencyCode = freezed,
    Object? currencySymbol = freezed,
    Object? currencyMinorUnit = freezed,
    Object? currencyDecimalSeparator = freezed,
    Object? currencyThousandSeparator = freezed,
    Object? currencyPrefix = freezed,
    Object? currencySuffix = freezed,
  }) {
    return _then(_value.copyWith(
      rateId: freezed == rateId
          ? _value.rateId
          : rateId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryTime: freezed == deliveryTime
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      taxes: freezed == taxes
          ? _value.taxes
          : taxes // ignore: cast_nullable_to_non_nullable
              as String?,
      instanceId: freezed == instanceId
          ? _value.instanceId
          : instanceId // ignore: cast_nullable_to_non_nullable
              as int?,
      methodId: freezed == methodId
          ? _value.methodId
          : methodId // ignore: cast_nullable_to_non_nullable
              as String?,
      metaData: freezed == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as List<MetaDatum>?,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyMinorUnit: freezed == currencyMinorUnit
          ? _value.currencyMinorUnit
          : currencyMinorUnit // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyDecimalSeparator: freezed == currencyDecimalSeparator
          ? _value.currencyDecimalSeparator
          : currencyDecimalSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyThousandSeparator: freezed == currencyThousandSeparator
          ? _value.currencyThousandSeparator
          : currencyThousandSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyPrefix: freezed == currencyPrefix
          ? _value.currencyPrefix
          : currencyPrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySuffix: freezed == currencySuffix
          ? _value.currencySuffix
          : currencySuffix // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShippingRateShippingRateImplCopyWith<$Res>
    implements $ShippingRateShippingRateCopyWith<$Res> {
  factory _$$ShippingRateShippingRateImplCopyWith(
          _$ShippingRateShippingRateImpl value,
          $Res Function(_$ShippingRateShippingRateImpl) then) =
      __$$ShippingRateShippingRateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rate_id") String? rateId,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "delivery_time") String? deliveryTime,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "taxes") String? taxes,
      @JsonKey(name: "instance_id") int? instanceId,
      @JsonKey(name: "method_id") String? methodId,
      @JsonKey(name: "meta_data") List<MetaDatum>? metaData,
      @JsonKey(name: "selected") bool? selected,
      @JsonKey(name: "currency_code") String? currencyCode,
      @JsonKey(name: "currency_symbol") String? currencySymbol,
      @JsonKey(name: "currency_minor_unit") int? currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      String? currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      String? currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") String? currencyPrefix,
      @JsonKey(name: "currency_suffix") String? currencySuffix});
}

/// @nodoc
class __$$ShippingRateShippingRateImplCopyWithImpl<$Res>
    extends _$ShippingRateShippingRateCopyWithImpl<$Res,
        _$ShippingRateShippingRateImpl>
    implements _$$ShippingRateShippingRateImplCopyWith<$Res> {
  __$$ShippingRateShippingRateImplCopyWithImpl(
      _$ShippingRateShippingRateImpl _value,
      $Res Function(_$ShippingRateShippingRateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rateId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? deliveryTime = freezed,
    Object? price = freezed,
    Object? taxes = freezed,
    Object? instanceId = freezed,
    Object? methodId = freezed,
    Object? metaData = freezed,
    Object? selected = freezed,
    Object? currencyCode = freezed,
    Object? currencySymbol = freezed,
    Object? currencyMinorUnit = freezed,
    Object? currencyDecimalSeparator = freezed,
    Object? currencyThousandSeparator = freezed,
    Object? currencyPrefix = freezed,
    Object? currencySuffix = freezed,
  }) {
    return _then(_$ShippingRateShippingRateImpl(
      rateId: freezed == rateId
          ? _value.rateId
          : rateId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryTime: freezed == deliveryTime
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      taxes: freezed == taxes
          ? _value.taxes
          : taxes // ignore: cast_nullable_to_non_nullable
              as String?,
      instanceId: freezed == instanceId
          ? _value.instanceId
          : instanceId // ignore: cast_nullable_to_non_nullable
              as int?,
      methodId: freezed == methodId
          ? _value.methodId
          : methodId // ignore: cast_nullable_to_non_nullable
              as String?,
      metaData: freezed == metaData
          ? _value._metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as List<MetaDatum>?,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyMinorUnit: freezed == currencyMinorUnit
          ? _value.currencyMinorUnit
          : currencyMinorUnit // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyDecimalSeparator: freezed == currencyDecimalSeparator
          ? _value.currencyDecimalSeparator
          : currencyDecimalSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyThousandSeparator: freezed == currencyThousandSeparator
          ? _value.currencyThousandSeparator
          : currencyThousandSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyPrefix: freezed == currencyPrefix
          ? _value.currencyPrefix
          : currencyPrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySuffix: freezed == currencySuffix
          ? _value.currencySuffix
          : currencySuffix // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShippingRateShippingRateImpl implements _ShippingRateShippingRate {
  const _$ShippingRateShippingRateImpl(
      {@JsonKey(name: "rate_id") this.rateId,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "delivery_time") this.deliveryTime,
      @JsonKey(name: "price") this.price,
      @JsonKey(name: "taxes") this.taxes,
      @JsonKey(name: "instance_id") this.instanceId,
      @JsonKey(name: "method_id") this.methodId,
      @JsonKey(name: "meta_data") final List<MetaDatum>? metaData,
      @JsonKey(name: "selected") this.selected,
      @JsonKey(name: "currency_code") this.currencyCode,
      @JsonKey(name: "currency_symbol") this.currencySymbol,
      @JsonKey(name: "currency_minor_unit") this.currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      this.currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      this.currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") this.currencyPrefix,
      @JsonKey(name: "currency_suffix") this.currencySuffix})
      : _metaData = metaData;

  factory _$ShippingRateShippingRateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShippingRateShippingRateImplFromJson(json);

  @override
  @JsonKey(name: "rate_id")
  final String? rateId;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "delivery_time")
  final String? deliveryTime;
  @override
  @JsonKey(name: "price")
  final String? price;
  @override
  @JsonKey(name: "taxes")
  final String? taxes;
  @override
  @JsonKey(name: "instance_id")
  final int? instanceId;
  @override
  @JsonKey(name: "method_id")
  final String? methodId;
  final List<MetaDatum>? _metaData;
  @override
  @JsonKey(name: "meta_data")
  List<MetaDatum>? get metaData {
    final value = _metaData;
    if (value == null) return null;
    if (_metaData is EqualUnmodifiableListView) return _metaData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "selected")
  final bool? selected;
  @override
  @JsonKey(name: "currency_code")
  final String? currencyCode;
  @override
  @JsonKey(name: "currency_symbol")
  final String? currencySymbol;
  @override
  @JsonKey(name: "currency_minor_unit")
  final int? currencyMinorUnit;
  @override
  @JsonKey(name: "currency_decimal_separator")
  final String? currencyDecimalSeparator;
  @override
  @JsonKey(name: "currency_thousand_separator")
  final String? currencyThousandSeparator;
  @override
  @JsonKey(name: "currency_prefix")
  final String? currencyPrefix;
  @override
  @JsonKey(name: "currency_suffix")
  final String? currencySuffix;

  @override
  String toString() {
    return 'ShippingRateShippingRate(rateId: $rateId, name: $name, description: $description, deliveryTime: $deliveryTime, price: $price, taxes: $taxes, instanceId: $instanceId, methodId: $methodId, metaData: $metaData, selected: $selected, currencyCode: $currencyCode, currencySymbol: $currencySymbol, currencyMinorUnit: $currencyMinorUnit, currencyDecimalSeparator: $currencyDecimalSeparator, currencyThousandSeparator: $currencyThousandSeparator, currencyPrefix: $currencyPrefix, currencySuffix: $currencySuffix)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShippingRateShippingRateImpl &&
            (identical(other.rateId, rateId) || other.rateId == rateId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.deliveryTime, deliveryTime) ||
                other.deliveryTime == deliveryTime) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.taxes, taxes) || other.taxes == taxes) &&
            (identical(other.instanceId, instanceId) ||
                other.instanceId == instanceId) &&
            (identical(other.methodId, methodId) ||
                other.methodId == methodId) &&
            const DeepCollectionEquality().equals(other._metaData, _metaData) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.currencyMinorUnit, currencyMinorUnit) ||
                other.currencyMinorUnit == currencyMinorUnit) &&
            (identical(
                    other.currencyDecimalSeparator, currencyDecimalSeparator) ||
                other.currencyDecimalSeparator == currencyDecimalSeparator) &&
            (identical(other.currencyThousandSeparator,
                    currencyThousandSeparator) ||
                other.currencyThousandSeparator == currencyThousandSeparator) &&
            (identical(other.currencyPrefix, currencyPrefix) ||
                other.currencyPrefix == currencyPrefix) &&
            (identical(other.currencySuffix, currencySuffix) ||
                other.currencySuffix == currencySuffix));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      rateId,
      name,
      description,
      deliveryTime,
      price,
      taxes,
      instanceId,
      methodId,
      const DeepCollectionEquality().hash(_metaData),
      selected,
      currencyCode,
      currencySymbol,
      currencyMinorUnit,
      currencyDecimalSeparator,
      currencyThousandSeparator,
      currencyPrefix,
      currencySuffix);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingRateShippingRateImplCopyWith<_$ShippingRateShippingRateImpl>
      get copyWith => __$$ShippingRateShippingRateImplCopyWithImpl<
          _$ShippingRateShippingRateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShippingRateShippingRateImplToJson(
      this,
    );
  }
}

abstract class _ShippingRateShippingRate implements ShippingRateShippingRate {
  const factory _ShippingRateShippingRate(
          {@JsonKey(name: "rate_id") final String? rateId,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "delivery_time") final String? deliveryTime,
          @JsonKey(name: "price") final String? price,
          @JsonKey(name: "taxes") final String? taxes,
          @JsonKey(name: "instance_id") final int? instanceId,
          @JsonKey(name: "method_id") final String? methodId,
          @JsonKey(name: "meta_data") final List<MetaDatum>? metaData,
          @JsonKey(name: "selected") final bool? selected,
          @JsonKey(name: "currency_code") final String? currencyCode,
          @JsonKey(name: "currency_symbol") final String? currencySymbol,
          @JsonKey(name: "currency_minor_unit") final int? currencyMinorUnit,
          @JsonKey(name: "currency_decimal_separator")
          final String? currencyDecimalSeparator,
          @JsonKey(name: "currency_thousand_separator")
          final String? currencyThousandSeparator,
          @JsonKey(name: "currency_prefix") final String? currencyPrefix,
          @JsonKey(name: "currency_suffix") final String? currencySuffix}) =
      _$ShippingRateShippingRateImpl;

  factory _ShippingRateShippingRate.fromJson(Map<String, dynamic> json) =
      _$ShippingRateShippingRateImpl.fromJson;

  @override
  @JsonKey(name: "rate_id")
  String? get rateId;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "delivery_time")
  String? get deliveryTime;
  @override
  @JsonKey(name: "price")
  String? get price;
  @override
  @JsonKey(name: "taxes")
  String? get taxes;
  @override
  @JsonKey(name: "instance_id")
  int? get instanceId;
  @override
  @JsonKey(name: "method_id")
  String? get methodId;
  @override
  @JsonKey(name: "meta_data")
  List<MetaDatum>? get metaData;
  @override
  @JsonKey(name: "selected")
  bool? get selected;
  @override
  @JsonKey(name: "currency_code")
  String? get currencyCode;
  @override
  @JsonKey(name: "currency_symbol")
  String? get currencySymbol;
  @override
  @JsonKey(name: "currency_minor_unit")
  int? get currencyMinorUnit;
  @override
  @JsonKey(name: "currency_decimal_separator")
  String? get currencyDecimalSeparator;
  @override
  @JsonKey(name: "currency_thousand_separator")
  String? get currencyThousandSeparator;
  @override
  @JsonKey(name: "currency_prefix")
  String? get currencyPrefix;
  @override
  @JsonKey(name: "currency_suffix")
  String? get currencySuffix;
  @override
  @JsonKey(ignore: true)
  _$$ShippingRateShippingRateImplCopyWith<_$ShippingRateShippingRateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MetaDatum _$MetaDatumFromJson(Map<String, dynamic> json) {
  return _MetaDatum.fromJson(json);
}

/// @nodoc
mixin _$MetaDatum {
  @JsonKey(name: "key")
  String? get key => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaDatumCopyWith<MetaDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDatumCopyWith<$Res> {
  factory $MetaDatumCopyWith(MetaDatum value, $Res Function(MetaDatum) then) =
      _$MetaDatumCopyWithImpl<$Res, MetaDatum>;
  @useResult
  $Res call(
      {@JsonKey(name: "key") String? key,
      @JsonKey(name: "value") String? value});
}

/// @nodoc
class _$MetaDatumCopyWithImpl<$Res, $Val extends MetaDatum>
    implements $MetaDatumCopyWith<$Res> {
  _$MetaDatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaDatumImplCopyWith<$Res>
    implements $MetaDatumCopyWith<$Res> {
  factory _$$MetaDatumImplCopyWith(
          _$MetaDatumImpl value, $Res Function(_$MetaDatumImpl) then) =
      __$$MetaDatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "key") String? key,
      @JsonKey(name: "value") String? value});
}

/// @nodoc
class __$$MetaDatumImplCopyWithImpl<$Res>
    extends _$MetaDatumCopyWithImpl<$Res, _$MetaDatumImpl>
    implements _$$MetaDatumImplCopyWith<$Res> {
  __$$MetaDatumImplCopyWithImpl(
      _$MetaDatumImpl _value, $Res Function(_$MetaDatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_$MetaDatumImpl(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaDatumImpl implements _MetaDatum {
  const _$MetaDatumImpl(
      {@JsonKey(name: "key") this.key, @JsonKey(name: "value") this.value});

  factory _$MetaDatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaDatumImplFromJson(json);

  @override
  @JsonKey(name: "key")
  final String? key;
  @override
  @JsonKey(name: "value")
  final String? value;

  @override
  String toString() {
    return 'MetaDatum(key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaDatumImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaDatumImplCopyWith<_$MetaDatumImpl> get copyWith =>
      __$$MetaDatumImplCopyWithImpl<_$MetaDatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaDatumImplToJson(
      this,
    );
  }
}

abstract class _MetaDatum implements MetaDatum {
  const factory _MetaDatum(
      {@JsonKey(name: "key") final String? key,
      @JsonKey(name: "value") final String? value}) = _$MetaDatumImpl;

  factory _MetaDatum.fromJson(Map<String, dynamic> json) =
      _$MetaDatumImpl.fromJson;

  @override
  @JsonKey(name: "key")
  String? get key;
  @override
  @JsonKey(name: "value")
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$MetaDatumImplCopyWith<_$MetaDatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetCartResponseTotals _$GetCartResponseTotalsFromJson(
    Map<String, dynamic> json) {
  return _GetCartResponseTotals.fromJson(json);
}

/// @nodoc
mixin _$GetCartResponseTotals {
  @JsonKey(name: "total_items")
  String? get totalItems => throw _privateConstructorUsedError;
  @JsonKey(name: "total_items_tax")
  String? get totalItemsTax => throw _privateConstructorUsedError;
  @JsonKey(name: "total_fees")
  String? get totalFees => throw _privateConstructorUsedError;
  @JsonKey(name: "total_fees_tax")
  String? get totalFeesTax => throw _privateConstructorUsedError;
  @JsonKey(name: "total_discount")
  String? get totalDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_discount_tax")
  String? get totalDiscountTax => throw _privateConstructorUsedError;
  @JsonKey(name: "total_shipping")
  String? get totalShipping => throw _privateConstructorUsedError;
  @JsonKey(name: "total_shipping_tax")
  String? get totalShippingTax => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  String? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "total_tax")
  String? get totalTax => throw _privateConstructorUsedError;
  @JsonKey(name: "tax_lines")
  List<TaxLine>? get taxLines => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_code")
  String? get currencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_symbol")
  String? get currencySymbol => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_minor_unit")
  int? get currencyMinorUnit => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_decimal_separator")
  String? get currencyDecimalSeparator => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_thousand_separator")
  String? get currencyThousandSeparator => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_prefix")
  String? get currencyPrefix => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_suffix")
  String? get currencySuffix => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCartResponseTotalsCopyWith<GetCartResponseTotals> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCartResponseTotalsCopyWith<$Res> {
  factory $GetCartResponseTotalsCopyWith(GetCartResponseTotals value,
          $Res Function(GetCartResponseTotals) then) =
      _$GetCartResponseTotalsCopyWithImpl<$Res, GetCartResponseTotals>;
  @useResult
  $Res call(
      {@JsonKey(name: "total_items") String? totalItems,
      @JsonKey(name: "total_items_tax") String? totalItemsTax,
      @JsonKey(name: "total_fees") String? totalFees,
      @JsonKey(name: "total_fees_tax") String? totalFeesTax,
      @JsonKey(name: "total_discount") String? totalDiscount,
      @JsonKey(name: "total_discount_tax") String? totalDiscountTax,
      @JsonKey(name: "total_shipping") String? totalShipping,
      @JsonKey(name: "total_shipping_tax") String? totalShippingTax,
      @JsonKey(name: "total_price") String? totalPrice,
      @JsonKey(name: "total_tax") String? totalTax,
      @JsonKey(name: "tax_lines") List<TaxLine>? taxLines,
      @JsonKey(name: "currency_code") String? currencyCode,
      @JsonKey(name: "currency_symbol") String? currencySymbol,
      @JsonKey(name: "currency_minor_unit") int? currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      String? currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      String? currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") String? currencyPrefix,
      @JsonKey(name: "currency_suffix") String? currencySuffix});
}

/// @nodoc
class _$GetCartResponseTotalsCopyWithImpl<$Res,
        $Val extends GetCartResponseTotals>
    implements $GetCartResponseTotalsCopyWith<$Res> {
  _$GetCartResponseTotalsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = freezed,
    Object? totalItemsTax = freezed,
    Object? totalFees = freezed,
    Object? totalFeesTax = freezed,
    Object? totalDiscount = freezed,
    Object? totalDiscountTax = freezed,
    Object? totalShipping = freezed,
    Object? totalShippingTax = freezed,
    Object? totalPrice = freezed,
    Object? totalTax = freezed,
    Object? taxLines = freezed,
    Object? currencyCode = freezed,
    Object? currencySymbol = freezed,
    Object? currencyMinorUnit = freezed,
    Object? currencyDecimalSeparator = freezed,
    Object? currencyThousandSeparator = freezed,
    Object? currencyPrefix = freezed,
    Object? currencySuffix = freezed,
  }) {
    return _then(_value.copyWith(
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as String?,
      totalItemsTax: freezed == totalItemsTax
          ? _value.totalItemsTax
          : totalItemsTax // ignore: cast_nullable_to_non_nullable
              as String?,
      totalFees: freezed == totalFees
          ? _value.totalFees
          : totalFees // ignore: cast_nullable_to_non_nullable
              as String?,
      totalFeesTax: freezed == totalFeesTax
          ? _value.totalFeesTax
          : totalFeesTax // ignore: cast_nullable_to_non_nullable
              as String?,
      totalDiscount: freezed == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      totalDiscountTax: freezed == totalDiscountTax
          ? _value.totalDiscountTax
          : totalDiscountTax // ignore: cast_nullable_to_non_nullable
              as String?,
      totalShipping: freezed == totalShipping
          ? _value.totalShipping
          : totalShipping // ignore: cast_nullable_to_non_nullable
              as String?,
      totalShippingTax: freezed == totalShippingTax
          ? _value.totalShippingTax
          : totalShippingTax // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTax: freezed == totalTax
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as String?,
      taxLines: freezed == taxLines
          ? _value.taxLines
          : taxLines // ignore: cast_nullable_to_non_nullable
              as List<TaxLine>?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyMinorUnit: freezed == currencyMinorUnit
          ? _value.currencyMinorUnit
          : currencyMinorUnit // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyDecimalSeparator: freezed == currencyDecimalSeparator
          ? _value.currencyDecimalSeparator
          : currencyDecimalSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyThousandSeparator: freezed == currencyThousandSeparator
          ? _value.currencyThousandSeparator
          : currencyThousandSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyPrefix: freezed == currencyPrefix
          ? _value.currencyPrefix
          : currencyPrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySuffix: freezed == currencySuffix
          ? _value.currencySuffix
          : currencySuffix // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCartResponseTotalsImplCopyWith<$Res>
    implements $GetCartResponseTotalsCopyWith<$Res> {
  factory _$$GetCartResponseTotalsImplCopyWith(
          _$GetCartResponseTotalsImpl value,
          $Res Function(_$GetCartResponseTotalsImpl) then) =
      __$$GetCartResponseTotalsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "total_items") String? totalItems,
      @JsonKey(name: "total_items_tax") String? totalItemsTax,
      @JsonKey(name: "total_fees") String? totalFees,
      @JsonKey(name: "total_fees_tax") String? totalFeesTax,
      @JsonKey(name: "total_discount") String? totalDiscount,
      @JsonKey(name: "total_discount_tax") String? totalDiscountTax,
      @JsonKey(name: "total_shipping") String? totalShipping,
      @JsonKey(name: "total_shipping_tax") String? totalShippingTax,
      @JsonKey(name: "total_price") String? totalPrice,
      @JsonKey(name: "total_tax") String? totalTax,
      @JsonKey(name: "tax_lines") List<TaxLine>? taxLines,
      @JsonKey(name: "currency_code") String? currencyCode,
      @JsonKey(name: "currency_symbol") String? currencySymbol,
      @JsonKey(name: "currency_minor_unit") int? currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      String? currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      String? currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") String? currencyPrefix,
      @JsonKey(name: "currency_suffix") String? currencySuffix});
}

/// @nodoc
class __$$GetCartResponseTotalsImplCopyWithImpl<$Res>
    extends _$GetCartResponseTotalsCopyWithImpl<$Res,
        _$GetCartResponseTotalsImpl>
    implements _$$GetCartResponseTotalsImplCopyWith<$Res> {
  __$$GetCartResponseTotalsImplCopyWithImpl(_$GetCartResponseTotalsImpl _value,
      $Res Function(_$GetCartResponseTotalsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = freezed,
    Object? totalItemsTax = freezed,
    Object? totalFees = freezed,
    Object? totalFeesTax = freezed,
    Object? totalDiscount = freezed,
    Object? totalDiscountTax = freezed,
    Object? totalShipping = freezed,
    Object? totalShippingTax = freezed,
    Object? totalPrice = freezed,
    Object? totalTax = freezed,
    Object? taxLines = freezed,
    Object? currencyCode = freezed,
    Object? currencySymbol = freezed,
    Object? currencyMinorUnit = freezed,
    Object? currencyDecimalSeparator = freezed,
    Object? currencyThousandSeparator = freezed,
    Object? currencyPrefix = freezed,
    Object? currencySuffix = freezed,
  }) {
    return _then(_$GetCartResponseTotalsImpl(
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as String?,
      totalItemsTax: freezed == totalItemsTax
          ? _value.totalItemsTax
          : totalItemsTax // ignore: cast_nullable_to_non_nullable
              as String?,
      totalFees: freezed == totalFees
          ? _value.totalFees
          : totalFees // ignore: cast_nullable_to_non_nullable
              as String?,
      totalFeesTax: freezed == totalFeesTax
          ? _value.totalFeesTax
          : totalFeesTax // ignore: cast_nullable_to_non_nullable
              as String?,
      totalDiscount: freezed == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      totalDiscountTax: freezed == totalDiscountTax
          ? _value.totalDiscountTax
          : totalDiscountTax // ignore: cast_nullable_to_non_nullable
              as String?,
      totalShipping: freezed == totalShipping
          ? _value.totalShipping
          : totalShipping // ignore: cast_nullable_to_non_nullable
              as String?,
      totalShippingTax: freezed == totalShippingTax
          ? _value.totalShippingTax
          : totalShippingTax // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTax: freezed == totalTax
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as String?,
      taxLines: freezed == taxLines
          ? _value._taxLines
          : taxLines // ignore: cast_nullable_to_non_nullable
              as List<TaxLine>?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyMinorUnit: freezed == currencyMinorUnit
          ? _value.currencyMinorUnit
          : currencyMinorUnit // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyDecimalSeparator: freezed == currencyDecimalSeparator
          ? _value.currencyDecimalSeparator
          : currencyDecimalSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyThousandSeparator: freezed == currencyThousandSeparator
          ? _value.currencyThousandSeparator
          : currencyThousandSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyPrefix: freezed == currencyPrefix
          ? _value.currencyPrefix
          : currencyPrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySuffix: freezed == currencySuffix
          ? _value.currencySuffix
          : currencySuffix // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetCartResponseTotalsImpl implements _GetCartResponseTotals {
  const _$GetCartResponseTotalsImpl(
      {@JsonKey(name: "total_items") this.totalItems,
      @JsonKey(name: "total_items_tax") this.totalItemsTax,
      @JsonKey(name: "total_fees") this.totalFees,
      @JsonKey(name: "total_fees_tax") this.totalFeesTax,
      @JsonKey(name: "total_discount") this.totalDiscount,
      @JsonKey(name: "total_discount_tax") this.totalDiscountTax,
      @JsonKey(name: "total_shipping") this.totalShipping,
      @JsonKey(name: "total_shipping_tax") this.totalShippingTax,
      @JsonKey(name: "total_price") this.totalPrice,
      @JsonKey(name: "total_tax") this.totalTax,
      @JsonKey(name: "tax_lines") final List<TaxLine>? taxLines,
      @JsonKey(name: "currency_code") this.currencyCode,
      @JsonKey(name: "currency_symbol") this.currencySymbol,
      @JsonKey(name: "currency_minor_unit") this.currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      this.currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      this.currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") this.currencyPrefix,
      @JsonKey(name: "currency_suffix") this.currencySuffix})
      : _taxLines = taxLines;

  factory _$GetCartResponseTotalsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetCartResponseTotalsImplFromJson(json);

  @override
  @JsonKey(name: "total_items")
  final String? totalItems;
  @override
  @JsonKey(name: "total_items_tax")
  final String? totalItemsTax;
  @override
  @JsonKey(name: "total_fees")
  final String? totalFees;
  @override
  @JsonKey(name: "total_fees_tax")
  final String? totalFeesTax;
  @override
  @JsonKey(name: "total_discount")
  final String? totalDiscount;
  @override
  @JsonKey(name: "total_discount_tax")
  final String? totalDiscountTax;
  @override
  @JsonKey(name: "total_shipping")
  final String? totalShipping;
  @override
  @JsonKey(name: "total_shipping_tax")
  final String? totalShippingTax;
  @override
  @JsonKey(name: "total_price")
  final String? totalPrice;
  @override
  @JsonKey(name: "total_tax")
  final String? totalTax;
  final List<TaxLine>? _taxLines;
  @override
  @JsonKey(name: "tax_lines")
  List<TaxLine>? get taxLines {
    final value = _taxLines;
    if (value == null) return null;
    if (_taxLines is EqualUnmodifiableListView) return _taxLines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "currency_code")
  final String? currencyCode;
  @override
  @JsonKey(name: "currency_symbol")
  final String? currencySymbol;
  @override
  @JsonKey(name: "currency_minor_unit")
  final int? currencyMinorUnit;
  @override
  @JsonKey(name: "currency_decimal_separator")
  final String? currencyDecimalSeparator;
  @override
  @JsonKey(name: "currency_thousand_separator")
  final String? currencyThousandSeparator;
  @override
  @JsonKey(name: "currency_prefix")
  final String? currencyPrefix;
  @override
  @JsonKey(name: "currency_suffix")
  final String? currencySuffix;

  @override
  String toString() {
    return 'GetCartResponseTotals(totalItems: $totalItems, totalItemsTax: $totalItemsTax, totalFees: $totalFees, totalFeesTax: $totalFeesTax, totalDiscount: $totalDiscount, totalDiscountTax: $totalDiscountTax, totalShipping: $totalShipping, totalShippingTax: $totalShippingTax, totalPrice: $totalPrice, totalTax: $totalTax, taxLines: $taxLines, currencyCode: $currencyCode, currencySymbol: $currencySymbol, currencyMinorUnit: $currencyMinorUnit, currencyDecimalSeparator: $currencyDecimalSeparator, currencyThousandSeparator: $currencyThousandSeparator, currencyPrefix: $currencyPrefix, currencySuffix: $currencySuffix)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCartResponseTotalsImpl &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.totalItemsTax, totalItemsTax) ||
                other.totalItemsTax == totalItemsTax) &&
            (identical(other.totalFees, totalFees) ||
                other.totalFees == totalFees) &&
            (identical(other.totalFeesTax, totalFeesTax) ||
                other.totalFeesTax == totalFeesTax) &&
            (identical(other.totalDiscount, totalDiscount) ||
                other.totalDiscount == totalDiscount) &&
            (identical(other.totalDiscountTax, totalDiscountTax) ||
                other.totalDiscountTax == totalDiscountTax) &&
            (identical(other.totalShipping, totalShipping) ||
                other.totalShipping == totalShipping) &&
            (identical(other.totalShippingTax, totalShippingTax) ||
                other.totalShippingTax == totalShippingTax) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.totalTax, totalTax) ||
                other.totalTax == totalTax) &&
            const DeepCollectionEquality().equals(other._taxLines, _taxLines) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.currencyMinorUnit, currencyMinorUnit) ||
                other.currencyMinorUnit == currencyMinorUnit) &&
            (identical(
                    other.currencyDecimalSeparator, currencyDecimalSeparator) ||
                other.currencyDecimalSeparator == currencyDecimalSeparator) &&
            (identical(other.currencyThousandSeparator,
                    currencyThousandSeparator) ||
                other.currencyThousandSeparator == currencyThousandSeparator) &&
            (identical(other.currencyPrefix, currencyPrefix) ||
                other.currencyPrefix == currencyPrefix) &&
            (identical(other.currencySuffix, currencySuffix) ||
                other.currencySuffix == currencySuffix));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalItems,
      totalItemsTax,
      totalFees,
      totalFeesTax,
      totalDiscount,
      totalDiscountTax,
      totalShipping,
      totalShippingTax,
      totalPrice,
      totalTax,
      const DeepCollectionEquality().hash(_taxLines),
      currencyCode,
      currencySymbol,
      currencyMinorUnit,
      currencyDecimalSeparator,
      currencyThousandSeparator,
      currencyPrefix,
      currencySuffix);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCartResponseTotalsImplCopyWith<_$GetCartResponseTotalsImpl>
      get copyWith => __$$GetCartResponseTotalsImplCopyWithImpl<
          _$GetCartResponseTotalsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCartResponseTotalsImplToJson(
      this,
    );
  }
}

abstract class _GetCartResponseTotals implements GetCartResponseTotals {
  const factory _GetCartResponseTotals(
          {@JsonKey(name: "total_items") final String? totalItems,
          @JsonKey(name: "total_items_tax") final String? totalItemsTax,
          @JsonKey(name: "total_fees") final String? totalFees,
          @JsonKey(name: "total_fees_tax") final String? totalFeesTax,
          @JsonKey(name: "total_discount") final String? totalDiscount,
          @JsonKey(name: "total_discount_tax") final String? totalDiscountTax,
          @JsonKey(name: "total_shipping") final String? totalShipping,
          @JsonKey(name: "total_shipping_tax") final String? totalShippingTax,
          @JsonKey(name: "total_price") final String? totalPrice,
          @JsonKey(name: "total_tax") final String? totalTax,
          @JsonKey(name: "tax_lines") final List<TaxLine>? taxLines,
          @JsonKey(name: "currency_code") final String? currencyCode,
          @JsonKey(name: "currency_symbol") final String? currencySymbol,
          @JsonKey(name: "currency_minor_unit") final int? currencyMinorUnit,
          @JsonKey(name: "currency_decimal_separator")
          final String? currencyDecimalSeparator,
          @JsonKey(name: "currency_thousand_separator")
          final String? currencyThousandSeparator,
          @JsonKey(name: "currency_prefix") final String? currencyPrefix,
          @JsonKey(name: "currency_suffix") final String? currencySuffix}) =
      _$GetCartResponseTotalsImpl;

  factory _GetCartResponseTotals.fromJson(Map<String, dynamic> json) =
      _$GetCartResponseTotalsImpl.fromJson;

  @override
  @JsonKey(name: "total_items")
  String? get totalItems;
  @override
  @JsonKey(name: "total_items_tax")
  String? get totalItemsTax;
  @override
  @JsonKey(name: "total_fees")
  String? get totalFees;
  @override
  @JsonKey(name: "total_fees_tax")
  String? get totalFeesTax;
  @override
  @JsonKey(name: "total_discount")
  String? get totalDiscount;
  @override
  @JsonKey(name: "total_discount_tax")
  String? get totalDiscountTax;
  @override
  @JsonKey(name: "total_shipping")
  String? get totalShipping;
  @override
  @JsonKey(name: "total_shipping_tax")
  String? get totalShippingTax;
  @override
  @JsonKey(name: "total_price")
  String? get totalPrice;
  @override
  @JsonKey(name: "total_tax")
  String? get totalTax;
  @override
  @JsonKey(name: "tax_lines")
  List<TaxLine>? get taxLines;
  @override
  @JsonKey(name: "currency_code")
  String? get currencyCode;
  @override
  @JsonKey(name: "currency_symbol")
  String? get currencySymbol;
  @override
  @JsonKey(name: "currency_minor_unit")
  int? get currencyMinorUnit;
  @override
  @JsonKey(name: "currency_decimal_separator")
  String? get currencyDecimalSeparator;
  @override
  @JsonKey(name: "currency_thousand_separator")
  String? get currencyThousandSeparator;
  @override
  @JsonKey(name: "currency_prefix")
  String? get currencyPrefix;
  @override
  @JsonKey(name: "currency_suffix")
  String? get currencySuffix;
  @override
  @JsonKey(ignore: true)
  _$$GetCartResponseTotalsImplCopyWith<_$GetCartResponseTotalsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TaxLine _$TaxLineFromJson(Map<String, dynamic> json) {
  return _TaxLine.fromJson(json);
}

/// @nodoc
mixin _$TaxLine {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "rate")
  String? get rate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaxLineCopyWith<TaxLine> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxLineCopyWith<$Res> {
  factory $TaxLineCopyWith(TaxLine value, $Res Function(TaxLine) then) =
      _$TaxLineCopyWithImpl<$Res, TaxLine>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "rate") String? rate});
}

/// @nodoc
class _$TaxLineCopyWithImpl<$Res, $Val extends TaxLine>
    implements $TaxLineCopyWith<$Res> {
  _$TaxLineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? rate = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaxLineImplCopyWith<$Res> implements $TaxLineCopyWith<$Res> {
  factory _$$TaxLineImplCopyWith(
          _$TaxLineImpl value, $Res Function(_$TaxLineImpl) then) =
      __$$TaxLineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "rate") String? rate});
}

/// @nodoc
class __$$TaxLineImplCopyWithImpl<$Res>
    extends _$TaxLineCopyWithImpl<$Res, _$TaxLineImpl>
    implements _$$TaxLineImplCopyWith<$Res> {
  __$$TaxLineImplCopyWithImpl(
      _$TaxLineImpl _value, $Res Function(_$TaxLineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? rate = freezed,
  }) {
    return _then(_$TaxLineImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaxLineImpl implements _TaxLine {
  const _$TaxLineImpl(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "price") this.price,
      @JsonKey(name: "rate") this.rate});

  factory _$TaxLineImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaxLineImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "price")
  final String? price;
  @override
  @JsonKey(name: "rate")
  final String? rate;

  @override
  String toString() {
    return 'TaxLine(name: $name, price: $price, rate: $rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaxLineImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, price, rate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaxLineImplCopyWith<_$TaxLineImpl> get copyWith =>
      __$$TaxLineImplCopyWithImpl<_$TaxLineImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaxLineImplToJson(
      this,
    );
  }
}

abstract class _TaxLine implements TaxLine {
  const factory _TaxLine(
      {@JsonKey(name: "name") final String? name,
      @JsonKey(name: "price") final String? price,
      @JsonKey(name: "rate") final String? rate}) = _$TaxLineImpl;

  factory _TaxLine.fromJson(Map<String, dynamic> json) = _$TaxLineImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "price")
  String? get price;
  @override
  @JsonKey(name: "rate")
  String? get rate;
  @override
  @JsonKey(ignore: true)
  _$$TaxLineImplCopyWith<_$TaxLineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
