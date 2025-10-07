// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'process_payment_and_order_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProcessPaymentAndOrderResponseModel
    _$ProcessPaymentAndOrderResponseModelFromJson(Map<String, dynamic> json) {
  return _ProcessPaymentAndOrderResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ProcessPaymentAndOrderResponseModel {
  @JsonKey(name: "order_id")
  int? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "order_key")
  String? get orderKey => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_note")
  String? get customerNote => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_id")
  int? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "billing_address")
  IngAddress? get billingAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_address")
  IngAddress? get shippingAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method")
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_result")
  PaymentResult? get paymentResult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProcessPaymentAndOrderResponseModelCopyWith<
          ProcessPaymentAndOrderResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcessPaymentAndOrderResponseModelCopyWith<$Res> {
  factory $ProcessPaymentAndOrderResponseModelCopyWith(
          ProcessPaymentAndOrderResponseModel value,
          $Res Function(ProcessPaymentAndOrderResponseModel) then) =
      _$ProcessPaymentAndOrderResponseModelCopyWithImpl<$Res,
          ProcessPaymentAndOrderResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "order_id") int? orderId,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "order_key") String? orderKey,
      @JsonKey(name: "customer_note") String? customerNote,
      @JsonKey(name: "customer_id") int? customerId,
      @JsonKey(name: "billing_address") IngAddress? billingAddress,
      @JsonKey(name: "shipping_address") IngAddress? shippingAddress,
      @JsonKey(name: "payment_method") String? paymentMethod,
      @JsonKey(name: "payment_result") PaymentResult? paymentResult});

  $IngAddressCopyWith<$Res>? get billingAddress;
  $IngAddressCopyWith<$Res>? get shippingAddress;
  $PaymentResultCopyWith<$Res>? get paymentResult;
}

/// @nodoc
class _$ProcessPaymentAndOrderResponseModelCopyWithImpl<$Res,
        $Val extends ProcessPaymentAndOrderResponseModel>
    implements $ProcessPaymentAndOrderResponseModelCopyWith<$Res> {
  _$ProcessPaymentAndOrderResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? status = freezed,
    Object? orderKey = freezed,
    Object? customerNote = freezed,
    Object? customerId = freezed,
    Object? billingAddress = freezed,
    Object? shippingAddress = freezed,
    Object? paymentMethod = freezed,
    Object? paymentResult = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      orderKey: freezed == orderKey
          ? _value.orderKey
          : orderKey // ignore: cast_nullable_to_non_nullable
              as String?,
      customerNote: freezed == customerNote
          ? _value.customerNote
          : customerNote // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int?,
      billingAddress: freezed == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as IngAddress?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as IngAddress?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentResult: freezed == paymentResult
          ? _value.paymentResult
          : paymentResult // ignore: cast_nullable_to_non_nullable
              as PaymentResult?,
    ) as $Val);
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
  $PaymentResultCopyWith<$Res>? get paymentResult {
    if (_value.paymentResult == null) {
      return null;
    }

    return $PaymentResultCopyWith<$Res>(_value.paymentResult!, (value) {
      return _then(_value.copyWith(paymentResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProcessPaymentAndOrderResponseModelImplCopyWith<$Res>
    implements $ProcessPaymentAndOrderResponseModelCopyWith<$Res> {
  factory _$$ProcessPaymentAndOrderResponseModelImplCopyWith(
          _$ProcessPaymentAndOrderResponseModelImpl value,
          $Res Function(_$ProcessPaymentAndOrderResponseModelImpl) then) =
      __$$ProcessPaymentAndOrderResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "order_id") int? orderId,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "order_key") String? orderKey,
      @JsonKey(name: "customer_note") String? customerNote,
      @JsonKey(name: "customer_id") int? customerId,
      @JsonKey(name: "billing_address") IngAddress? billingAddress,
      @JsonKey(name: "shipping_address") IngAddress? shippingAddress,
      @JsonKey(name: "payment_method") String? paymentMethod,
      @JsonKey(name: "payment_result") PaymentResult? paymentResult});

  @override
  $IngAddressCopyWith<$Res>? get billingAddress;
  @override
  $IngAddressCopyWith<$Res>? get shippingAddress;
  @override
  $PaymentResultCopyWith<$Res>? get paymentResult;
}

/// @nodoc
class __$$ProcessPaymentAndOrderResponseModelImplCopyWithImpl<$Res>
    extends _$ProcessPaymentAndOrderResponseModelCopyWithImpl<$Res,
        _$ProcessPaymentAndOrderResponseModelImpl>
    implements _$$ProcessPaymentAndOrderResponseModelImplCopyWith<$Res> {
  __$$ProcessPaymentAndOrderResponseModelImplCopyWithImpl(
      _$ProcessPaymentAndOrderResponseModelImpl _value,
      $Res Function(_$ProcessPaymentAndOrderResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? status = freezed,
    Object? orderKey = freezed,
    Object? customerNote = freezed,
    Object? customerId = freezed,
    Object? billingAddress = freezed,
    Object? shippingAddress = freezed,
    Object? paymentMethod = freezed,
    Object? paymentResult = freezed,
  }) {
    return _then(_$ProcessPaymentAndOrderResponseModelImpl(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      orderKey: freezed == orderKey
          ? _value.orderKey
          : orderKey // ignore: cast_nullable_to_non_nullable
              as String?,
      customerNote: freezed == customerNote
          ? _value.customerNote
          : customerNote // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int?,
      billingAddress: freezed == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as IngAddress?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as IngAddress?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentResult: freezed == paymentResult
          ? _value.paymentResult
          : paymentResult // ignore: cast_nullable_to_non_nullable
              as PaymentResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProcessPaymentAndOrderResponseModelImpl
    implements _ProcessPaymentAndOrderResponseModel {
  const _$ProcessPaymentAndOrderResponseModelImpl(
      {@JsonKey(name: "order_id") this.orderId,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "order_key") this.orderKey,
      @JsonKey(name: "customer_note") this.customerNote,
      @JsonKey(name: "customer_id") this.customerId,
      @JsonKey(name: "billing_address") this.billingAddress,
      @JsonKey(name: "shipping_address") this.shippingAddress,
      @JsonKey(name: "payment_method") this.paymentMethod,
      @JsonKey(name: "payment_result") this.paymentResult});

  factory _$ProcessPaymentAndOrderResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProcessPaymentAndOrderResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "order_id")
  final int? orderId;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "order_key")
  final String? orderKey;
  @override
  @JsonKey(name: "customer_note")
  final String? customerNote;
  @override
  @JsonKey(name: "customer_id")
  final int? customerId;
  @override
  @JsonKey(name: "billing_address")
  final IngAddress? billingAddress;
  @override
  @JsonKey(name: "shipping_address")
  final IngAddress? shippingAddress;
  @override
  @JsonKey(name: "payment_method")
  final String? paymentMethod;
  @override
  @JsonKey(name: "payment_result")
  final PaymentResult? paymentResult;

  @override
  String toString() {
    return 'ProcessPaymentAndOrderResponseModel(orderId: $orderId, status: $status, orderKey: $orderKey, customerNote: $customerNote, customerId: $customerId, billingAddress: $billingAddress, shippingAddress: $shippingAddress, paymentMethod: $paymentMethod, paymentResult: $paymentResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessPaymentAndOrderResponseModelImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.orderKey, orderKey) ||
                other.orderKey == orderKey) &&
            (identical(other.customerNote, customerNote) ||
                other.customerNote == customerNote) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.billingAddress, billingAddress) ||
                other.billingAddress == billingAddress) &&
            (identical(other.shippingAddress, shippingAddress) ||
                other.shippingAddress == shippingAddress) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.paymentResult, paymentResult) ||
                other.paymentResult == paymentResult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      status,
      orderKey,
      customerNote,
      customerId,
      billingAddress,
      shippingAddress,
      paymentMethod,
      paymentResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessPaymentAndOrderResponseModelImplCopyWith<
          _$ProcessPaymentAndOrderResponseModelImpl>
      get copyWith => __$$ProcessPaymentAndOrderResponseModelImplCopyWithImpl<
          _$ProcessPaymentAndOrderResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProcessPaymentAndOrderResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ProcessPaymentAndOrderResponseModel
    implements ProcessPaymentAndOrderResponseModel {
  const factory _ProcessPaymentAndOrderResponseModel(
          {@JsonKey(name: "order_id") final int? orderId,
          @JsonKey(name: "status") final String? status,
          @JsonKey(name: "order_key") final String? orderKey,
          @JsonKey(name: "customer_note") final String? customerNote,
          @JsonKey(name: "customer_id") final int? customerId,
          @JsonKey(name: "billing_address") final IngAddress? billingAddress,
          @JsonKey(name: "shipping_address") final IngAddress? shippingAddress,
          @JsonKey(name: "payment_method") final String? paymentMethod,
          @JsonKey(name: "payment_result")
          final PaymentResult? paymentResult}) =
      _$ProcessPaymentAndOrderResponseModelImpl;

  factory _ProcessPaymentAndOrderResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$ProcessPaymentAndOrderResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "order_id")
  int? get orderId;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "order_key")
  String? get orderKey;
  @override
  @JsonKey(name: "customer_note")
  String? get customerNote;
  @override
  @JsonKey(name: "customer_id")
  int? get customerId;
  @override
  @JsonKey(name: "billing_address")
  IngAddress? get billingAddress;
  @override
  @JsonKey(name: "shipping_address")
  IngAddress? get shippingAddress;
  @override
  @JsonKey(name: "payment_method")
  String? get paymentMethod;
  @override
  @JsonKey(name: "payment_result")
  PaymentResult? get paymentResult;
  @override
  @JsonKey(ignore: true)
  _$$ProcessPaymentAndOrderResponseModelImplCopyWith<
          _$ProcessPaymentAndOrderResponseModelImpl>
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

PaymentResult _$PaymentResultFromJson(Map<String, dynamic> json) {
  return _PaymentResult.fromJson(json);
}

/// @nodoc
mixin _$PaymentResult {
  @JsonKey(name: "payment_status")
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_details")
  List<dynamic>? get paymentDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "redirect_url")
  String? get redirectUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentResultCopyWith<PaymentResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentResultCopyWith<$Res> {
  factory $PaymentResultCopyWith(
          PaymentResult value, $Res Function(PaymentResult) then) =
      _$PaymentResultCopyWithImpl<$Res, PaymentResult>;
  @useResult
  $Res call(
      {@JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "payment_details") List<dynamic>? paymentDetails,
      @JsonKey(name: "redirect_url") String? redirectUrl});
}

/// @nodoc
class _$PaymentResultCopyWithImpl<$Res, $Val extends PaymentResult>
    implements $PaymentResultCopyWith<$Res> {
  _$PaymentResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentStatus = freezed,
    Object? paymentDetails = freezed,
    Object? redirectUrl = freezed,
  }) {
    return _then(_value.copyWith(
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDetails: freezed == paymentDetails
          ? _value.paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      redirectUrl: freezed == redirectUrl
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentResultImplCopyWith<$Res>
    implements $PaymentResultCopyWith<$Res> {
  factory _$$PaymentResultImplCopyWith(
          _$PaymentResultImpl value, $Res Function(_$PaymentResultImpl) then) =
      __$$PaymentResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "payment_status") String? paymentStatus,
      @JsonKey(name: "payment_details") List<dynamic>? paymentDetails,
      @JsonKey(name: "redirect_url") String? redirectUrl});
}

/// @nodoc
class __$$PaymentResultImplCopyWithImpl<$Res>
    extends _$PaymentResultCopyWithImpl<$Res, _$PaymentResultImpl>
    implements _$$PaymentResultImplCopyWith<$Res> {
  __$$PaymentResultImplCopyWithImpl(
      _$PaymentResultImpl _value, $Res Function(_$PaymentResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentStatus = freezed,
    Object? paymentDetails = freezed,
    Object? redirectUrl = freezed,
  }) {
    return _then(_$PaymentResultImpl(
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDetails: freezed == paymentDetails
          ? _value._paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      redirectUrl: freezed == redirectUrl
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentResultImpl implements _PaymentResult {
  const _$PaymentResultImpl(
      {@JsonKey(name: "payment_status") this.paymentStatus,
      @JsonKey(name: "payment_details") final List<dynamic>? paymentDetails,
      @JsonKey(name: "redirect_url") this.redirectUrl})
      : _paymentDetails = paymentDetails;

  factory _$PaymentResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentResultImplFromJson(json);

  @override
  @JsonKey(name: "payment_status")
  final String? paymentStatus;
  final List<dynamic>? _paymentDetails;
  @override
  @JsonKey(name: "payment_details")
  List<dynamic>? get paymentDetails {
    final value = _paymentDetails;
    if (value == null) return null;
    if (_paymentDetails is EqualUnmodifiableListView) return _paymentDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "redirect_url")
  final String? redirectUrl;

  @override
  String toString() {
    return 'PaymentResult(paymentStatus: $paymentStatus, paymentDetails: $paymentDetails, redirectUrl: $redirectUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentResultImpl &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            const DeepCollectionEquality()
                .equals(other._paymentDetails, _paymentDetails) &&
            (identical(other.redirectUrl, redirectUrl) ||
                other.redirectUrl == redirectUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, paymentStatus,
      const DeepCollectionEquality().hash(_paymentDetails), redirectUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentResultImplCopyWith<_$PaymentResultImpl> get copyWith =>
      __$$PaymentResultImplCopyWithImpl<_$PaymentResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentResultImplToJson(
      this,
    );
  }
}

abstract class _PaymentResult implements PaymentResult {
  const factory _PaymentResult(
          {@JsonKey(name: "payment_status") final String? paymentStatus,
          @JsonKey(name: "payment_details") final List<dynamic>? paymentDetails,
          @JsonKey(name: "redirect_url") final String? redirectUrl}) =
      _$PaymentResultImpl;

  factory _PaymentResult.fromJson(Map<String, dynamic> json) =
      _$PaymentResultImpl.fromJson;

  @override
  @JsonKey(name: "payment_status")
  String? get paymentStatus;
  @override
  @JsonKey(name: "payment_details")
  List<dynamic>? get paymentDetails;
  @override
  @JsonKey(name: "redirect_url")
  String? get redirectUrl;
  @override
  @JsonKey(ignore: true)
  _$$PaymentResultImplCopyWith<_$PaymentResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
