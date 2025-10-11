// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_order_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListOrderResponseModel _$ListOrderResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ListOrderResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ListOrderResponseModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "items")
  List<Item>? get items => throw _privateConstructorUsedError;
  @JsonKey(name: "coupons")
  List<dynamic>? get coupons => throw _privateConstructorUsedError;
  @JsonKey(name: "fees")
  List<dynamic>? get fees => throw _privateConstructorUsedError;
  @JsonKey(name: "totals")
  ListOrderResponseModelTotals? get totals =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_address")
  IngAddress? get shippingAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "billing_address")
  IngAddress? get billingAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "needs_payment")
  bool? get needsPayment => throw _privateConstructorUsedError;
  @JsonKey(name: "needs_shipping")
  bool? get needsShipping => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_requirements")
  List<String>? get paymentRequirements => throw _privateConstructorUsedError;
  @JsonKey(name: "errors")
  List<dynamic>? get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListOrderResponseModelCopyWith<ListOrderResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListOrderResponseModelCopyWith<$Res> {
  factory $ListOrderResponseModelCopyWith(ListOrderResponseModel value,
          $Res Function(ListOrderResponseModel) then) =
      _$ListOrderResponseModelCopyWithImpl<$Res, ListOrderResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "items") List<Item>? items,
      @JsonKey(name: "coupons") List<dynamic>? coupons,
      @JsonKey(name: "fees") List<dynamic>? fees,
      @JsonKey(name: "totals") ListOrderResponseModelTotals? totals,
      @JsonKey(name: "shipping_address") IngAddress? shippingAddress,
      @JsonKey(name: "billing_address") IngAddress? billingAddress,
      @JsonKey(name: "needs_payment") bool? needsPayment,
      @JsonKey(name: "needs_shipping") bool? needsShipping,
      @JsonKey(name: "payment_requirements") List<String>? paymentRequirements,
      @JsonKey(name: "errors") List<dynamic>? errors});

  $ListOrderResponseModelTotalsCopyWith<$Res>? get totals;
  $IngAddressCopyWith<$Res>? get shippingAddress;
  $IngAddressCopyWith<$Res>? get billingAddress;
}

/// @nodoc
class _$ListOrderResponseModelCopyWithImpl<$Res,
        $Val extends ListOrderResponseModel>
    implements $ListOrderResponseModelCopyWith<$Res> {
  _$ListOrderResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? items = freezed,
    Object? coupons = freezed,
    Object? fees = freezed,
    Object? totals = freezed,
    Object? shippingAddress = freezed,
    Object? billingAddress = freezed,
    Object? needsPayment = freezed,
    Object? needsShipping = freezed,
    Object? paymentRequirements = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      coupons: freezed == coupons
          ? _value.coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      fees: freezed == fees
          ? _value.fees
          : fees // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      totals: freezed == totals
          ? _value.totals
          : totals // ignore: cast_nullable_to_non_nullable
              as ListOrderResponseModelTotals?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as IngAddress?,
      billingAddress: freezed == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as IngAddress?,
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
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ListOrderResponseModelTotalsCopyWith<$Res>? get totals {
    if (_value.totals == null) {
      return null;
    }

    return $ListOrderResponseModelTotalsCopyWith<$Res>(_value.totals!, (value) {
      return _then(_value.copyWith(totals: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IngAddressCopyWith<$Res>? get shippingAddress {
    if (_value.shippingAddress == null) {
      return null;
    }

    return $IngAddressCopyWith<$Res>(_value.shippingAddress!, (value) {
      return _then(_value.copyWith(shippingAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IngAddressCopyWith<$Res>? get billingAddress {
    if (_value.billingAddress == null) {
      return null;
    }

    return $IngAddressCopyWith<$Res>(_value.billingAddress!, (value) {
      return _then(_value.copyWith(billingAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ListOrderResponseModelImplCopyWith<$Res>
    implements $ListOrderResponseModelCopyWith<$Res> {
  factory _$$ListOrderResponseModelImplCopyWith(
          _$ListOrderResponseModelImpl value,
          $Res Function(_$ListOrderResponseModelImpl) then) =
      __$$ListOrderResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "items") List<Item>? items,
      @JsonKey(name: "coupons") List<dynamic>? coupons,
      @JsonKey(name: "fees") List<dynamic>? fees,
      @JsonKey(name: "totals") ListOrderResponseModelTotals? totals,
      @JsonKey(name: "shipping_address") IngAddress? shippingAddress,
      @JsonKey(name: "billing_address") IngAddress? billingAddress,
      @JsonKey(name: "needs_payment") bool? needsPayment,
      @JsonKey(name: "needs_shipping") bool? needsShipping,
      @JsonKey(name: "payment_requirements") List<String>? paymentRequirements,
      @JsonKey(name: "errors") List<dynamic>? errors});

  @override
  $ListOrderResponseModelTotalsCopyWith<$Res>? get totals;
  @override
  $IngAddressCopyWith<$Res>? get shippingAddress;
  @override
  $IngAddressCopyWith<$Res>? get billingAddress;
}

/// @nodoc
class __$$ListOrderResponseModelImplCopyWithImpl<$Res>
    extends _$ListOrderResponseModelCopyWithImpl<$Res,
        _$ListOrderResponseModelImpl>
    implements _$$ListOrderResponseModelImplCopyWith<$Res> {
  __$$ListOrderResponseModelImplCopyWithImpl(
      _$ListOrderResponseModelImpl _value,
      $Res Function(_$ListOrderResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? items = freezed,
    Object? coupons = freezed,
    Object? fees = freezed,
    Object? totals = freezed,
    Object? shippingAddress = freezed,
    Object? billingAddress = freezed,
    Object? needsPayment = freezed,
    Object? needsShipping = freezed,
    Object? paymentRequirements = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$ListOrderResponseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      coupons: freezed == coupons
          ? _value._coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      fees: freezed == fees
          ? _value._fees
          : fees // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      totals: freezed == totals
          ? _value.totals
          : totals // ignore: cast_nullable_to_non_nullable
              as ListOrderResponseModelTotals?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as IngAddress?,
      billingAddress: freezed == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as IngAddress?,
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
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListOrderResponseModelImpl implements _ListOrderResponseModel {
  const _$ListOrderResponseModelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "items") final List<Item>? items,
      @JsonKey(name: "coupons") final List<dynamic>? coupons,
      @JsonKey(name: "fees") final List<dynamic>? fees,
      @JsonKey(name: "totals") this.totals,
      @JsonKey(name: "shipping_address") this.shippingAddress,
      @JsonKey(name: "billing_address") this.billingAddress,
      @JsonKey(name: "needs_payment") this.needsPayment,
      @JsonKey(name: "needs_shipping") this.needsShipping,
      @JsonKey(name: "payment_requirements")
      final List<String>? paymentRequirements,
      @JsonKey(name: "errors") final List<dynamic>? errors})
      : _items = items,
        _coupons = coupons,
        _fees = fees,
        _paymentRequirements = paymentRequirements,
        _errors = errors;

  factory _$ListOrderResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListOrderResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "status")
  final String? status;
  final List<Item>? _items;
  @override
  @JsonKey(name: "items")
  List<Item>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _coupons;
  @override
  @JsonKey(name: "coupons")
  List<dynamic>? get coupons {
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
  final ListOrderResponseModelTotals? totals;
  @override
  @JsonKey(name: "shipping_address")
  final IngAddress? shippingAddress;
  @override
  @JsonKey(name: "billing_address")
  final IngAddress? billingAddress;
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

  @override
  String toString() {
    return 'ListOrderResponseModel(id: $id, status: $status, items: $items, coupons: $coupons, fees: $fees, totals: $totals, shippingAddress: $shippingAddress, billingAddress: $billingAddress, needsPayment: $needsPayment, needsShipping: $needsShipping, paymentRequirements: $paymentRequirements, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListOrderResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
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
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      status,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_coupons),
      const DeepCollectionEquality().hash(_fees),
      totals,
      shippingAddress,
      billingAddress,
      needsPayment,
      needsShipping,
      const DeepCollectionEquality().hash(_paymentRequirements),
      const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListOrderResponseModelImplCopyWith<_$ListOrderResponseModelImpl>
      get copyWith => __$$ListOrderResponseModelImplCopyWithImpl<
          _$ListOrderResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListOrderResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ListOrderResponseModel implements ListOrderResponseModel {
  const factory _ListOrderResponseModel(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "status") final String? status,
          @JsonKey(name: "items") final List<Item>? items,
          @JsonKey(name: "coupons") final List<dynamic>? coupons,
          @JsonKey(name: "fees") final List<dynamic>? fees,
          @JsonKey(name: "totals") final ListOrderResponseModelTotals? totals,
          @JsonKey(name: "shipping_address") final IngAddress? shippingAddress,
          @JsonKey(name: "billing_address") final IngAddress? billingAddress,
          @JsonKey(name: "needs_payment") final bool? needsPayment,
          @JsonKey(name: "needs_shipping") final bool? needsShipping,
          @JsonKey(name: "payment_requirements")
          final List<String>? paymentRequirements,
          @JsonKey(name: "errors") final List<dynamic>? errors}) =
      _$ListOrderResponseModelImpl;

  factory _ListOrderResponseModel.fromJson(Map<String, dynamic> json) =
      _$ListOrderResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "items")
  List<Item>? get items;
  @override
  @JsonKey(name: "coupons")
  List<dynamic>? get coupons;
  @override
  @JsonKey(name: "fees")
  List<dynamic>? get fees;
  @override
  @JsonKey(name: "totals")
  ListOrderResponseModelTotals? get totals;
  @override
  @JsonKey(name: "shipping_address")
  IngAddress? get shippingAddress;
  @override
  @JsonKey(name: "billing_address")
  IngAddress? get billingAddress;
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
  @JsonKey(name: "errors")
  List<dynamic>? get errors;
  @override
  @JsonKey(ignore: true)
  _$$ListOrderResponseModelImplCopyWith<_$ListOrderResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

IngAddress _$IngAddressFromJson(Map<String, dynamic> json) {
  return _IngAddress.fromJson(json);
}

/// @nodoc
mixin _$IngAddress {
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
  $IngAddressCopyWith<IngAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngAddressCopyWith<$Res> {
  factory $IngAddressCopyWith(
          IngAddress value, $Res Function(IngAddress) then) =
      _$IngAddressCopyWithImpl<$Res, IngAddress>;
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
class _$IngAddressCopyWithImpl<$Res, $Val extends IngAddress>
    implements $IngAddressCopyWith<$Res> {
  _$IngAddressCopyWithImpl(this._value, this._then);

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
abstract class _$$IngAddressImplCopyWith<$Res>
    implements $IngAddressCopyWith<$Res> {
  factory _$$IngAddressImplCopyWith(
          _$IngAddressImpl value, $Res Function(_$IngAddressImpl) then) =
      __$$IngAddressImplCopyWithImpl<$Res>;
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
class __$$IngAddressImplCopyWithImpl<$Res>
    extends _$IngAddressCopyWithImpl<$Res, _$IngAddressImpl>
    implements _$$IngAddressImplCopyWith<$Res> {
  __$$IngAddressImplCopyWithImpl(
      _$IngAddressImpl _value, $Res Function(_$IngAddressImpl) _then)
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
    return _then(_$IngAddressImpl(
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
class _$IngAddressImpl implements _IngAddress {
  const _$IngAddressImpl(
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

  factory _$IngAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngAddressImplFromJson(json);

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
    return 'IngAddress(firstName: $firstName, lastName: $lastName, company: $company, address1: $address1, address2: $address2, city: $city, state: $state, postcode: $postcode, country: $country, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngAddressImpl &&
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
  _$$IngAddressImplCopyWith<_$IngAddressImpl> get copyWith =>
      __$$IngAddressImplCopyWithImpl<_$IngAddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngAddressImplToJson(
      this,
    );
  }
}

abstract class _IngAddress implements IngAddress {
  const factory _IngAddress(
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
      @JsonKey(name: "phone") final String? phone}) = _$IngAddressImpl;

  factory _IngAddress.fromJson(Map<String, dynamic> json) =
      _$IngAddressImpl.fromJson;

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
  _$$IngAddressImplCopyWith<_$IngAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
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
      @JsonKey(name: "catalog_visibility") String? catalogVisibility});

  $QuantityLimitsCopyWith<$Res>? get quantityLimits;
  $PricesCopyWith<$Res>? get prices;
  $ItemTotalsCopyWith<$Res>? get totals;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
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
      @JsonKey(name: "catalog_visibility") String? catalogVisibility});

  @override
  $QuantityLimitsCopyWith<$Res>? get quantityLimits;
  @override
  $PricesCopyWith<$Res>? get prices;
  @override
  $ItemTotalsCopyWith<$Res>? get totals;
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
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
  }) {
    return _then(_$ItemImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl implements _Item {
  const _$ItemImpl(
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
      @JsonKey(name: "catalog_visibility") this.catalogVisibility})
      : _images = images,
        _variation = variation,
        _itemData = itemData;

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

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
  String toString() {
    return 'Item(key: $key, id: $id, quantity: $quantity, quantityLimits: $quantityLimits, name: $name, shortDescription: $shortDescription, description: $description, sku: $sku, lowStockRemaining: $lowStockRemaining, backordersAllowed: $backordersAllowed, showBackorderBadge: $showBackorderBadge, soldIndividually: $soldIndividually, permalink: $permalink, images: $images, variation: $variation, itemData: $itemData, prices: $prices, totals: $totals, catalogVisibility: $catalogVisibility)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
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
                other.catalogVisibility == catalogVisibility));
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
        catalogVisibility
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
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
      @JsonKey(name: "catalog_visibility")
      final String? catalogVisibility}) = _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

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
  @JsonKey(ignore: true)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
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

ListOrderResponseModelTotals _$ListOrderResponseModelTotalsFromJson(
    Map<String, dynamic> json) {
  return _ListOrderResponseModelTotals.fromJson(json);
}

/// @nodoc
mixin _$ListOrderResponseModelTotals {
  @JsonKey(name: "subtotal")
  String? get subtotal => throw _privateConstructorUsedError;
  @JsonKey(name: "total_discount")
  String? get totalDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_shipping")
  String? get totalShipping => throw _privateConstructorUsedError;
  @JsonKey(name: "total_fees")
  String? get totalFees => throw _privateConstructorUsedError;
  @JsonKey(name: "total_tax")
  String? get totalTax => throw _privateConstructorUsedError;
  @JsonKey(name: "total_refund")
  String? get totalRefund => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  String? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "total_items")
  String? get totalItems => throw _privateConstructorUsedError;
  @JsonKey(name: "total_items_tax")
  String? get totalItemsTax => throw _privateConstructorUsedError;
  @JsonKey(name: "total_fees_tax")
  String? get totalFeesTax => throw _privateConstructorUsedError;
  @JsonKey(name: "total_discount_tax")
  String? get totalDiscountTax => throw _privateConstructorUsedError;
  @JsonKey(name: "total_shipping_tax")
  String? get totalShippingTax => throw _privateConstructorUsedError;
  @JsonKey(name: "tax_lines")
  List<dynamic>? get taxLines => throw _privateConstructorUsedError;
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
  $ListOrderResponseModelTotalsCopyWith<ListOrderResponseModelTotals>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListOrderResponseModelTotalsCopyWith<$Res> {
  factory $ListOrderResponseModelTotalsCopyWith(
          ListOrderResponseModelTotals value,
          $Res Function(ListOrderResponseModelTotals) then) =
      _$ListOrderResponseModelTotalsCopyWithImpl<$Res,
          ListOrderResponseModelTotals>;
  @useResult
  $Res call(
      {@JsonKey(name: "subtotal") String? subtotal,
      @JsonKey(name: "total_discount") String? totalDiscount,
      @JsonKey(name: "total_shipping") String? totalShipping,
      @JsonKey(name: "total_fees") String? totalFees,
      @JsonKey(name: "total_tax") String? totalTax,
      @JsonKey(name: "total_refund") String? totalRefund,
      @JsonKey(name: "total_price") String? totalPrice,
      @JsonKey(name: "total_items") String? totalItems,
      @JsonKey(name: "total_items_tax") String? totalItemsTax,
      @JsonKey(name: "total_fees_tax") String? totalFeesTax,
      @JsonKey(name: "total_discount_tax") String? totalDiscountTax,
      @JsonKey(name: "total_shipping_tax") String? totalShippingTax,
      @JsonKey(name: "tax_lines") List<dynamic>? taxLines,
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
class _$ListOrderResponseModelTotalsCopyWithImpl<$Res,
        $Val extends ListOrderResponseModelTotals>
    implements $ListOrderResponseModelTotalsCopyWith<$Res> {
  _$ListOrderResponseModelTotalsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtotal = freezed,
    Object? totalDiscount = freezed,
    Object? totalShipping = freezed,
    Object? totalFees = freezed,
    Object? totalTax = freezed,
    Object? totalRefund = freezed,
    Object? totalPrice = freezed,
    Object? totalItems = freezed,
    Object? totalItemsTax = freezed,
    Object? totalFeesTax = freezed,
    Object? totalDiscountTax = freezed,
    Object? totalShippingTax = freezed,
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
      subtotal: freezed == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as String?,
      totalDiscount: freezed == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      totalShipping: freezed == totalShipping
          ? _value.totalShipping
          : totalShipping // ignore: cast_nullable_to_non_nullable
              as String?,
      totalFees: freezed == totalFees
          ? _value.totalFees
          : totalFees // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTax: freezed == totalTax
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as String?,
      totalRefund: freezed == totalRefund
          ? _value.totalRefund
          : totalRefund // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as String?,
      totalItemsTax: freezed == totalItemsTax
          ? _value.totalItemsTax
          : totalItemsTax // ignore: cast_nullable_to_non_nullable
              as String?,
      totalFeesTax: freezed == totalFeesTax
          ? _value.totalFeesTax
          : totalFeesTax // ignore: cast_nullable_to_non_nullable
              as String?,
      totalDiscountTax: freezed == totalDiscountTax
          ? _value.totalDiscountTax
          : totalDiscountTax // ignore: cast_nullable_to_non_nullable
              as String?,
      totalShippingTax: freezed == totalShippingTax
          ? _value.totalShippingTax
          : totalShippingTax // ignore: cast_nullable_to_non_nullable
              as String?,
      taxLines: freezed == taxLines
          ? _value.taxLines
          : taxLines // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
abstract class _$$ListOrderResponseModelTotalsImplCopyWith<$Res>
    implements $ListOrderResponseModelTotalsCopyWith<$Res> {
  factory _$$ListOrderResponseModelTotalsImplCopyWith(
          _$ListOrderResponseModelTotalsImpl value,
          $Res Function(_$ListOrderResponseModelTotalsImpl) then) =
      __$$ListOrderResponseModelTotalsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "subtotal") String? subtotal,
      @JsonKey(name: "total_discount") String? totalDiscount,
      @JsonKey(name: "total_shipping") String? totalShipping,
      @JsonKey(name: "total_fees") String? totalFees,
      @JsonKey(name: "total_tax") String? totalTax,
      @JsonKey(name: "total_refund") String? totalRefund,
      @JsonKey(name: "total_price") String? totalPrice,
      @JsonKey(name: "total_items") String? totalItems,
      @JsonKey(name: "total_items_tax") String? totalItemsTax,
      @JsonKey(name: "total_fees_tax") String? totalFeesTax,
      @JsonKey(name: "total_discount_tax") String? totalDiscountTax,
      @JsonKey(name: "total_shipping_tax") String? totalShippingTax,
      @JsonKey(name: "tax_lines") List<dynamic>? taxLines,
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
class __$$ListOrderResponseModelTotalsImplCopyWithImpl<$Res>
    extends _$ListOrderResponseModelTotalsCopyWithImpl<$Res,
        _$ListOrderResponseModelTotalsImpl>
    implements _$$ListOrderResponseModelTotalsImplCopyWith<$Res> {
  __$$ListOrderResponseModelTotalsImplCopyWithImpl(
      _$ListOrderResponseModelTotalsImpl _value,
      $Res Function(_$ListOrderResponseModelTotalsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtotal = freezed,
    Object? totalDiscount = freezed,
    Object? totalShipping = freezed,
    Object? totalFees = freezed,
    Object? totalTax = freezed,
    Object? totalRefund = freezed,
    Object? totalPrice = freezed,
    Object? totalItems = freezed,
    Object? totalItemsTax = freezed,
    Object? totalFeesTax = freezed,
    Object? totalDiscountTax = freezed,
    Object? totalShippingTax = freezed,
    Object? taxLines = freezed,
    Object? currencyCode = freezed,
    Object? currencySymbol = freezed,
    Object? currencyMinorUnit = freezed,
    Object? currencyDecimalSeparator = freezed,
    Object? currencyThousandSeparator = freezed,
    Object? currencyPrefix = freezed,
    Object? currencySuffix = freezed,
  }) {
    return _then(_$ListOrderResponseModelTotalsImpl(
      subtotal: freezed == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as String?,
      totalDiscount: freezed == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      totalShipping: freezed == totalShipping
          ? _value.totalShipping
          : totalShipping // ignore: cast_nullable_to_non_nullable
              as String?,
      totalFees: freezed == totalFees
          ? _value.totalFees
          : totalFees // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTax: freezed == totalTax
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as String?,
      totalRefund: freezed == totalRefund
          ? _value.totalRefund
          : totalRefund // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as String?,
      totalItemsTax: freezed == totalItemsTax
          ? _value.totalItemsTax
          : totalItemsTax // ignore: cast_nullable_to_non_nullable
              as String?,
      totalFeesTax: freezed == totalFeesTax
          ? _value.totalFeesTax
          : totalFeesTax // ignore: cast_nullable_to_non_nullable
              as String?,
      totalDiscountTax: freezed == totalDiscountTax
          ? _value.totalDiscountTax
          : totalDiscountTax // ignore: cast_nullable_to_non_nullable
              as String?,
      totalShippingTax: freezed == totalShippingTax
          ? _value.totalShippingTax
          : totalShippingTax // ignore: cast_nullable_to_non_nullable
              as String?,
      taxLines: freezed == taxLines
          ? _value._taxLines
          : taxLines // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
class _$ListOrderResponseModelTotalsImpl
    implements _ListOrderResponseModelTotals {
  const _$ListOrderResponseModelTotalsImpl(
      {@JsonKey(name: "subtotal") this.subtotal,
      @JsonKey(name: "total_discount") this.totalDiscount,
      @JsonKey(name: "total_shipping") this.totalShipping,
      @JsonKey(name: "total_fees") this.totalFees,
      @JsonKey(name: "total_tax") this.totalTax,
      @JsonKey(name: "total_refund") this.totalRefund,
      @JsonKey(name: "total_price") this.totalPrice,
      @JsonKey(name: "total_items") this.totalItems,
      @JsonKey(name: "total_items_tax") this.totalItemsTax,
      @JsonKey(name: "total_fees_tax") this.totalFeesTax,
      @JsonKey(name: "total_discount_tax") this.totalDiscountTax,
      @JsonKey(name: "total_shipping_tax") this.totalShippingTax,
      @JsonKey(name: "tax_lines") final List<dynamic>? taxLines,
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

  factory _$ListOrderResponseModelTotalsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ListOrderResponseModelTotalsImplFromJson(json);

  @override
  @JsonKey(name: "subtotal")
  final String? subtotal;
  @override
  @JsonKey(name: "total_discount")
  final String? totalDiscount;
  @override
  @JsonKey(name: "total_shipping")
  final String? totalShipping;
  @override
  @JsonKey(name: "total_fees")
  final String? totalFees;
  @override
  @JsonKey(name: "total_tax")
  final String? totalTax;
  @override
  @JsonKey(name: "total_refund")
  final String? totalRefund;
  @override
  @JsonKey(name: "total_price")
  final String? totalPrice;
  @override
  @JsonKey(name: "total_items")
  final String? totalItems;
  @override
  @JsonKey(name: "total_items_tax")
  final String? totalItemsTax;
  @override
  @JsonKey(name: "total_fees_tax")
  final String? totalFeesTax;
  @override
  @JsonKey(name: "total_discount_tax")
  final String? totalDiscountTax;
  @override
  @JsonKey(name: "total_shipping_tax")
  final String? totalShippingTax;
  final List<dynamic>? _taxLines;
  @override
  @JsonKey(name: "tax_lines")
  List<dynamic>? get taxLines {
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
    return 'ListOrderResponseModelTotals(subtotal: $subtotal, totalDiscount: $totalDiscount, totalShipping: $totalShipping, totalFees: $totalFees, totalTax: $totalTax, totalRefund: $totalRefund, totalPrice: $totalPrice, totalItems: $totalItems, totalItemsTax: $totalItemsTax, totalFeesTax: $totalFeesTax, totalDiscountTax: $totalDiscountTax, totalShippingTax: $totalShippingTax, taxLines: $taxLines, currencyCode: $currencyCode, currencySymbol: $currencySymbol, currencyMinorUnit: $currencyMinorUnit, currencyDecimalSeparator: $currencyDecimalSeparator, currencyThousandSeparator: $currencyThousandSeparator, currencyPrefix: $currencyPrefix, currencySuffix: $currencySuffix)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListOrderResponseModelTotalsImpl &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.totalDiscount, totalDiscount) ||
                other.totalDiscount == totalDiscount) &&
            (identical(other.totalShipping, totalShipping) ||
                other.totalShipping == totalShipping) &&
            (identical(other.totalFees, totalFees) ||
                other.totalFees == totalFees) &&
            (identical(other.totalTax, totalTax) ||
                other.totalTax == totalTax) &&
            (identical(other.totalRefund, totalRefund) ||
                other.totalRefund == totalRefund) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.totalItemsTax, totalItemsTax) ||
                other.totalItemsTax == totalItemsTax) &&
            (identical(other.totalFeesTax, totalFeesTax) ||
                other.totalFeesTax == totalFeesTax) &&
            (identical(other.totalDiscountTax, totalDiscountTax) ||
                other.totalDiscountTax == totalDiscountTax) &&
            (identical(other.totalShippingTax, totalShippingTax) ||
                other.totalShippingTax == totalShippingTax) &&
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
  int get hashCode => Object.hashAll([
        runtimeType,
        subtotal,
        totalDiscount,
        totalShipping,
        totalFees,
        totalTax,
        totalRefund,
        totalPrice,
        totalItems,
        totalItemsTax,
        totalFeesTax,
        totalDiscountTax,
        totalShippingTax,
        const DeepCollectionEquality().hash(_taxLines),
        currencyCode,
        currencySymbol,
        currencyMinorUnit,
        currencyDecimalSeparator,
        currencyThousandSeparator,
        currencyPrefix,
        currencySuffix
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListOrderResponseModelTotalsImplCopyWith<
          _$ListOrderResponseModelTotalsImpl>
      get copyWith => __$$ListOrderResponseModelTotalsImplCopyWithImpl<
          _$ListOrderResponseModelTotalsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListOrderResponseModelTotalsImplToJson(
      this,
    );
  }
}

abstract class _ListOrderResponseModelTotals
    implements ListOrderResponseModelTotals {
  const factory _ListOrderResponseModelTotals(
          {@JsonKey(name: "subtotal") final String? subtotal,
          @JsonKey(name: "total_discount") final String? totalDiscount,
          @JsonKey(name: "total_shipping") final String? totalShipping,
          @JsonKey(name: "total_fees") final String? totalFees,
          @JsonKey(name: "total_tax") final String? totalTax,
          @JsonKey(name: "total_refund") final String? totalRefund,
          @JsonKey(name: "total_price") final String? totalPrice,
          @JsonKey(name: "total_items") final String? totalItems,
          @JsonKey(name: "total_items_tax") final String? totalItemsTax,
          @JsonKey(name: "total_fees_tax") final String? totalFeesTax,
          @JsonKey(name: "total_discount_tax") final String? totalDiscountTax,
          @JsonKey(name: "total_shipping_tax") final String? totalShippingTax,
          @JsonKey(name: "tax_lines") final List<dynamic>? taxLines,
          @JsonKey(name: "currency_code") final String? currencyCode,
          @JsonKey(name: "currency_symbol") final String? currencySymbol,
          @JsonKey(name: "currency_minor_unit") final int? currencyMinorUnit,
          @JsonKey(name: "currency_decimal_separator")
          final String? currencyDecimalSeparator,
          @JsonKey(name: "currency_thousand_separator")
          final String? currencyThousandSeparator,
          @JsonKey(name: "currency_prefix") final String? currencyPrefix,
          @JsonKey(name: "currency_suffix") final String? currencySuffix}) =
      _$ListOrderResponseModelTotalsImpl;

  factory _ListOrderResponseModelTotals.fromJson(Map<String, dynamic> json) =
      _$ListOrderResponseModelTotalsImpl.fromJson;

  @override
  @JsonKey(name: "subtotal")
  String? get subtotal;
  @override
  @JsonKey(name: "total_discount")
  String? get totalDiscount;
  @override
  @JsonKey(name: "total_shipping")
  String? get totalShipping;
  @override
  @JsonKey(name: "total_fees")
  String? get totalFees;
  @override
  @JsonKey(name: "total_tax")
  String? get totalTax;
  @override
  @JsonKey(name: "total_refund")
  String? get totalRefund;
  @override
  @JsonKey(name: "total_price")
  String? get totalPrice;
  @override
  @JsonKey(name: "total_items")
  String? get totalItems;
  @override
  @JsonKey(name: "total_items_tax")
  String? get totalItemsTax;
  @override
  @JsonKey(name: "total_fees_tax")
  String? get totalFeesTax;
  @override
  @JsonKey(name: "total_discount_tax")
  String? get totalDiscountTax;
  @override
  @JsonKey(name: "total_shipping_tax")
  String? get totalShippingTax;
  @override
  @JsonKey(name: "tax_lines")
  List<dynamic>? get taxLines;
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
  _$$ListOrderResponseModelTotalsImplCopyWith<
          _$ListOrderResponseModelTotalsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
