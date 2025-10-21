// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_checkout_data_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateCheckoutDataResponseModel _$UpdateCheckoutDataResponseModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateCheckoutDataResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateCheckoutDataResponseModel {
  @JsonKey(name: "order_id")
  int? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "order_key")
  String? get orderKey => throw _privateConstructorUsedError;
  @JsonKey(name: "order_number")
  String? get orderNumber => throw _privateConstructorUsedError;
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
  dynamic get paymentResult => throw _privateConstructorUsedError;
  @JsonKey(name: "additional_fields")
  AdditionalFields? get additionalFields => throw _privateConstructorUsedError;
  @JsonKey(name: "__experimentalCart")
  ExperimentalCart? get experimentalCart => throw _privateConstructorUsedError;
  @JsonKey(name: "extensions")
  AdditionalFields? get extensions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCheckoutDataResponseModelCopyWith<UpdateCheckoutDataResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCheckoutDataResponseModelCopyWith<$Res> {
  factory $UpdateCheckoutDataResponseModelCopyWith(
          UpdateCheckoutDataResponseModel value,
          $Res Function(UpdateCheckoutDataResponseModel) then) =
      _$UpdateCheckoutDataResponseModelCopyWithImpl<$Res,
          UpdateCheckoutDataResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "order_id") int? orderId,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "order_key") String? orderKey,
      @JsonKey(name: "order_number") String? orderNumber,
      @JsonKey(name: "customer_note") String? customerNote,
      @JsonKey(name: "customer_id") int? customerId,
      @JsonKey(name: "billing_address") IngAddress? billingAddress,
      @JsonKey(name: "shipping_address") IngAddress? shippingAddress,
      @JsonKey(name: "payment_method") String? paymentMethod,
      @JsonKey(name: "payment_result") dynamic paymentResult,
      @JsonKey(name: "additional_fields") AdditionalFields? additionalFields,
      @JsonKey(name: "__experimentalCart") ExperimentalCart? experimentalCart,
      @JsonKey(name: "extensions") AdditionalFields? extensions});

  $IngAddressCopyWith<$Res>? get billingAddress;
  $IngAddressCopyWith<$Res>? get shippingAddress;
  $AdditionalFieldsCopyWith<$Res>? get additionalFields;
  $ExperimentalCartCopyWith<$Res>? get experimentalCart;
  $AdditionalFieldsCopyWith<$Res>? get extensions;
}

/// @nodoc
class _$UpdateCheckoutDataResponseModelCopyWithImpl<$Res,
        $Val extends UpdateCheckoutDataResponseModel>
    implements $UpdateCheckoutDataResponseModelCopyWith<$Res> {
  _$UpdateCheckoutDataResponseModelCopyWithImpl(this._value, this._then);

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
    Object? orderNumber = freezed,
    Object? customerNote = freezed,
    Object? customerId = freezed,
    Object? billingAddress = freezed,
    Object? shippingAddress = freezed,
    Object? paymentMethod = freezed,
    Object? paymentResult = freezed,
    Object? additionalFields = freezed,
    Object? experimentalCart = freezed,
    Object? extensions = freezed,
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
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
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
              as dynamic,
      additionalFields: freezed == additionalFields
          ? _value.additionalFields
          : additionalFields // ignore: cast_nullable_to_non_nullable
              as AdditionalFields?,
      experimentalCart: freezed == experimentalCart
          ? _value.experimentalCart
          : experimentalCart // ignore: cast_nullable_to_non_nullable
              as ExperimentalCart?,
      extensions: freezed == extensions
          ? _value.extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as AdditionalFields?,
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
  $AdditionalFieldsCopyWith<$Res>? get additionalFields {
    if (_value.additionalFields == null) {
      return null;
    }

    return $AdditionalFieldsCopyWith<$Res>(_value.additionalFields!, (value) {
      return _then(_value.copyWith(additionalFields: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExperimentalCartCopyWith<$Res>? get experimentalCart {
    if (_value.experimentalCart == null) {
      return null;
    }

    return $ExperimentalCartCopyWith<$Res>(_value.experimentalCart!, (value) {
      return _then(_value.copyWith(experimentalCart: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AdditionalFieldsCopyWith<$Res>? get extensions {
    if (_value.extensions == null) {
      return null;
    }

    return $AdditionalFieldsCopyWith<$Res>(_value.extensions!, (value) {
      return _then(_value.copyWith(extensions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateCheckoutDataResponseModelImplCopyWith<$Res>
    implements $UpdateCheckoutDataResponseModelCopyWith<$Res> {
  factory _$$UpdateCheckoutDataResponseModelImplCopyWith(
          _$UpdateCheckoutDataResponseModelImpl value,
          $Res Function(_$UpdateCheckoutDataResponseModelImpl) then) =
      __$$UpdateCheckoutDataResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "order_id") int? orderId,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "order_key") String? orderKey,
      @JsonKey(name: "order_number") String? orderNumber,
      @JsonKey(name: "customer_note") String? customerNote,
      @JsonKey(name: "customer_id") int? customerId,
      @JsonKey(name: "billing_address") IngAddress? billingAddress,
      @JsonKey(name: "shipping_address") IngAddress? shippingAddress,
      @JsonKey(name: "payment_method") String? paymentMethod,
      @JsonKey(name: "payment_result") dynamic paymentResult,
      @JsonKey(name: "additional_fields") AdditionalFields? additionalFields,
      @JsonKey(name: "__experimentalCart") ExperimentalCart? experimentalCart,
      @JsonKey(name: "extensions") AdditionalFields? extensions});

  @override
  $IngAddressCopyWith<$Res>? get billingAddress;
  @override
  $IngAddressCopyWith<$Res>? get shippingAddress;
  @override
  $AdditionalFieldsCopyWith<$Res>? get additionalFields;
  @override
  $ExperimentalCartCopyWith<$Res>? get experimentalCart;
  @override
  $AdditionalFieldsCopyWith<$Res>? get extensions;
}

/// @nodoc
class __$$UpdateCheckoutDataResponseModelImplCopyWithImpl<$Res>
    extends _$UpdateCheckoutDataResponseModelCopyWithImpl<$Res,
        _$UpdateCheckoutDataResponseModelImpl>
    implements _$$UpdateCheckoutDataResponseModelImplCopyWith<$Res> {
  __$$UpdateCheckoutDataResponseModelImplCopyWithImpl(
      _$UpdateCheckoutDataResponseModelImpl _value,
      $Res Function(_$UpdateCheckoutDataResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? status = freezed,
    Object? orderKey = freezed,
    Object? orderNumber = freezed,
    Object? customerNote = freezed,
    Object? customerId = freezed,
    Object? billingAddress = freezed,
    Object? shippingAddress = freezed,
    Object? paymentMethod = freezed,
    Object? paymentResult = freezed,
    Object? additionalFields = freezed,
    Object? experimentalCart = freezed,
    Object? extensions = freezed,
  }) {
    return _then(_$UpdateCheckoutDataResponseModelImpl(
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
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
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
              as dynamic,
      additionalFields: freezed == additionalFields
          ? _value.additionalFields
          : additionalFields // ignore: cast_nullable_to_non_nullable
              as AdditionalFields?,
      experimentalCart: freezed == experimentalCart
          ? _value.experimentalCart
          : experimentalCart // ignore: cast_nullable_to_non_nullable
              as ExperimentalCart?,
      extensions: freezed == extensions
          ? _value.extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as AdditionalFields?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateCheckoutDataResponseModelImpl
    implements _UpdateCheckoutDataResponseModel {
  const _$UpdateCheckoutDataResponseModelImpl(
      {@JsonKey(name: "order_id") this.orderId,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "order_key") this.orderKey,
      @JsonKey(name: "order_number") this.orderNumber,
      @JsonKey(name: "customer_note") this.customerNote,
      @JsonKey(name: "customer_id") this.customerId,
      @JsonKey(name: "billing_address") this.billingAddress,
      @JsonKey(name: "shipping_address") this.shippingAddress,
      @JsonKey(name: "payment_method") this.paymentMethod,
      @JsonKey(name: "payment_result") this.paymentResult,
      @JsonKey(name: "additional_fields") this.additionalFields,
      @JsonKey(name: "__experimentalCart") this.experimentalCart,
      @JsonKey(name: "extensions") this.extensions});

  factory _$UpdateCheckoutDataResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateCheckoutDataResponseModelImplFromJson(json);

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
  @JsonKey(name: "order_number")
  final String? orderNumber;
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
  final dynamic paymentResult;
  @override
  @JsonKey(name: "additional_fields")
  final AdditionalFields? additionalFields;
  @override
  @JsonKey(name: "__experimentalCart")
  final ExperimentalCart? experimentalCart;
  @override
  @JsonKey(name: "extensions")
  final AdditionalFields? extensions;

  @override
  String toString() {
    return 'UpdateCheckoutDataResponseModel(orderId: $orderId, status: $status, orderKey: $orderKey, orderNumber: $orderNumber, customerNote: $customerNote, customerId: $customerId, billingAddress: $billingAddress, shippingAddress: $shippingAddress, paymentMethod: $paymentMethod, paymentResult: $paymentResult, additionalFields: $additionalFields, experimentalCart: $experimentalCart, extensions: $extensions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCheckoutDataResponseModelImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.orderKey, orderKey) ||
                other.orderKey == orderKey) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
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
            const DeepCollectionEquality()
                .equals(other.paymentResult, paymentResult) &&
            (identical(other.additionalFields, additionalFields) ||
                other.additionalFields == additionalFields) &&
            (identical(other.experimentalCart, experimentalCart) ||
                other.experimentalCart == experimentalCart) &&
            (identical(other.extensions, extensions) ||
                other.extensions == extensions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      status,
      orderKey,
      orderNumber,
      customerNote,
      customerId,
      billingAddress,
      shippingAddress,
      paymentMethod,
      const DeepCollectionEquality().hash(paymentResult),
      additionalFields,
      experimentalCart,
      extensions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCheckoutDataResponseModelImplCopyWith<
          _$UpdateCheckoutDataResponseModelImpl>
      get copyWith => __$$UpdateCheckoutDataResponseModelImplCopyWithImpl<
          _$UpdateCheckoutDataResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateCheckoutDataResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateCheckoutDataResponseModel
    implements UpdateCheckoutDataResponseModel {
  const factory _UpdateCheckoutDataResponseModel(
          {@JsonKey(name: "order_id") final int? orderId,
          @JsonKey(name: "status") final String? status,
          @JsonKey(name: "order_key") final String? orderKey,
          @JsonKey(name: "order_number") final String? orderNumber,
          @JsonKey(name: "customer_note") final String? customerNote,
          @JsonKey(name: "customer_id") final int? customerId,
          @JsonKey(name: "billing_address") final IngAddress? billingAddress,
          @JsonKey(name: "shipping_address") final IngAddress? shippingAddress,
          @JsonKey(name: "payment_method") final String? paymentMethod,
          @JsonKey(name: "payment_result") final dynamic paymentResult,
          @JsonKey(name: "additional_fields")
          final AdditionalFields? additionalFields,
          @JsonKey(name: "__experimentalCart")
          final ExperimentalCart? experimentalCart,
          @JsonKey(name: "extensions") final AdditionalFields? extensions}) =
      _$UpdateCheckoutDataResponseModelImpl;

  factory _UpdateCheckoutDataResponseModel.fromJson(Map<String, dynamic> json) =
      _$UpdateCheckoutDataResponseModelImpl.fromJson;

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
  @JsonKey(name: "order_number")
  String? get orderNumber;
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
  dynamic get paymentResult;
  @override
  @JsonKey(name: "additional_fields")
  AdditionalFields? get additionalFields;
  @override
  @JsonKey(name: "__experimentalCart")
  ExperimentalCart? get experimentalCart;
  @override
  @JsonKey(name: "extensions")
  AdditionalFields? get extensions;
  @override
  @JsonKey(ignore: true)
  _$$UpdateCheckoutDataResponseModelImplCopyWith<
          _$UpdateCheckoutDataResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AdditionalFields _$AdditionalFieldsFromJson(Map<String, dynamic> json) {
  return _AdditionalFields.fromJson(json);
}

/// @nodoc
mixin _$AdditionalFields {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalFieldsCopyWith<$Res> {
  factory $AdditionalFieldsCopyWith(
          AdditionalFields value, $Res Function(AdditionalFields) then) =
      _$AdditionalFieldsCopyWithImpl<$Res, AdditionalFields>;
}

/// @nodoc
class _$AdditionalFieldsCopyWithImpl<$Res, $Val extends AdditionalFields>
    implements $AdditionalFieldsCopyWith<$Res> {
  _$AdditionalFieldsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AdditionalFieldsImplCopyWith<$Res> {
  factory _$$AdditionalFieldsImplCopyWith(_$AdditionalFieldsImpl value,
          $Res Function(_$AdditionalFieldsImpl) then) =
      __$$AdditionalFieldsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AdditionalFieldsImplCopyWithImpl<$Res>
    extends _$AdditionalFieldsCopyWithImpl<$Res, _$AdditionalFieldsImpl>
    implements _$$AdditionalFieldsImplCopyWith<$Res> {
  __$$AdditionalFieldsImplCopyWithImpl(_$AdditionalFieldsImpl _value,
      $Res Function(_$AdditionalFieldsImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AdditionalFieldsImpl implements _AdditionalFields {
  const _$AdditionalFieldsImpl();

  factory _$AdditionalFieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdditionalFieldsImplFromJson(json);

  @override
  String toString() {
    return 'AdditionalFields()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AdditionalFieldsImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$AdditionalFieldsImplToJson(
      this,
    );
  }
}

abstract class _AdditionalFields implements AdditionalFields {
  const factory _AdditionalFields() = _$AdditionalFieldsImpl;

  factory _AdditionalFields.fromJson(Map<String, dynamic> json) =
      _$AdditionalFieldsImpl.fromJson;
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

ExperimentalCart _$ExperimentalCartFromJson(Map<String, dynamic> json) {
  return _ExperimentalCart.fromJson(json);
}

/// @nodoc
mixin _$ExperimentalCart {
  @JsonKey(name: "items")
  List<ExperimentalCartItem>? get items => throw _privateConstructorUsedError;
  @JsonKey(name: "coupons")
  List<dynamic>? get coupons => throw _privateConstructorUsedError;
  @JsonKey(name: "fees")
  List<dynamic>? get fees => throw _privateConstructorUsedError;
  @JsonKey(name: "totals")
  ExperimentalCartTotals? get totals => throw _privateConstructorUsedError;
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
  @JsonKey(name: "has_calculated_shipping")
  bool? get hasCalculatedShipping => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_rates")
  List<ExperimentalCartShippingRate>? get shippingRates =>
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
  AdditionalFields? get extensions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExperimentalCartCopyWith<ExperimentalCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperimentalCartCopyWith<$Res> {
  factory $ExperimentalCartCopyWith(
          ExperimentalCart value, $Res Function(ExperimentalCart) then) =
      _$ExperimentalCartCopyWithImpl<$Res, ExperimentalCart>;
  @useResult
  $Res call(
      {@JsonKey(name: "items") List<ExperimentalCartItem>? items,
      @JsonKey(name: "coupons") List<dynamic>? coupons,
      @JsonKey(name: "fees") List<dynamic>? fees,
      @JsonKey(name: "totals") ExperimentalCartTotals? totals,
      @JsonKey(name: "shipping_address") IngAddress? shippingAddress,
      @JsonKey(name: "billing_address") IngAddress? billingAddress,
      @JsonKey(name: "needs_payment") bool? needsPayment,
      @JsonKey(name: "needs_shipping") bool? needsShipping,
      @JsonKey(name: "payment_requirements") List<String>? paymentRequirements,
      @JsonKey(name: "has_calculated_shipping") bool? hasCalculatedShipping,
      @JsonKey(name: "shipping_rates")
      List<ExperimentalCartShippingRate>? shippingRates,
      @JsonKey(name: "items_count") int? itemsCount,
      @JsonKey(name: "items_weight") int? itemsWeight,
      @JsonKey(name: "cross_sells") List<dynamic>? crossSells,
      @JsonKey(name: "errors") List<dynamic>? errors,
      @JsonKey(name: "payment_methods") List<String>? paymentMethods,
      @JsonKey(name: "extensions") AdditionalFields? extensions});

  $ExperimentalCartTotalsCopyWith<$Res>? get totals;
  $IngAddressCopyWith<$Res>? get shippingAddress;
  $IngAddressCopyWith<$Res>? get billingAddress;
  $AdditionalFieldsCopyWith<$Res>? get extensions;
}

/// @nodoc
class _$ExperimentalCartCopyWithImpl<$Res, $Val extends ExperimentalCart>
    implements $ExperimentalCartCopyWith<$Res> {
  _$ExperimentalCartCopyWithImpl(this._value, this._then);

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
              as List<ExperimentalCartItem>?,
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
              as ExperimentalCartTotals?,
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
      hasCalculatedShipping: freezed == hasCalculatedShipping
          ? _value.hasCalculatedShipping
          : hasCalculatedShipping // ignore: cast_nullable_to_non_nullable
              as bool?,
      shippingRates: freezed == shippingRates
          ? _value.shippingRates
          : shippingRates // ignore: cast_nullable_to_non_nullable
              as List<ExperimentalCartShippingRate>?,
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
              as AdditionalFields?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExperimentalCartTotalsCopyWith<$Res>? get totals {
    if (_value.totals == null) {
      return null;
    }

    return $ExperimentalCartTotalsCopyWith<$Res>(_value.totals!, (value) {
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

  @override
  @pragma('vm:prefer-inline')
  $AdditionalFieldsCopyWith<$Res>? get extensions {
    if (_value.extensions == null) {
      return null;
    }

    return $AdditionalFieldsCopyWith<$Res>(_value.extensions!, (value) {
      return _then(_value.copyWith(extensions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExperimentalCartImplCopyWith<$Res>
    implements $ExperimentalCartCopyWith<$Res> {
  factory _$$ExperimentalCartImplCopyWith(_$ExperimentalCartImpl value,
          $Res Function(_$ExperimentalCartImpl) then) =
      __$$ExperimentalCartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "items") List<ExperimentalCartItem>? items,
      @JsonKey(name: "coupons") List<dynamic>? coupons,
      @JsonKey(name: "fees") List<dynamic>? fees,
      @JsonKey(name: "totals") ExperimentalCartTotals? totals,
      @JsonKey(name: "shipping_address") IngAddress? shippingAddress,
      @JsonKey(name: "billing_address") IngAddress? billingAddress,
      @JsonKey(name: "needs_payment") bool? needsPayment,
      @JsonKey(name: "needs_shipping") bool? needsShipping,
      @JsonKey(name: "payment_requirements") List<String>? paymentRequirements,
      @JsonKey(name: "has_calculated_shipping") bool? hasCalculatedShipping,
      @JsonKey(name: "shipping_rates")
      List<ExperimentalCartShippingRate>? shippingRates,
      @JsonKey(name: "items_count") int? itemsCount,
      @JsonKey(name: "items_weight") int? itemsWeight,
      @JsonKey(name: "cross_sells") List<dynamic>? crossSells,
      @JsonKey(name: "errors") List<dynamic>? errors,
      @JsonKey(name: "payment_methods") List<String>? paymentMethods,
      @JsonKey(name: "extensions") AdditionalFields? extensions});

  @override
  $ExperimentalCartTotalsCopyWith<$Res>? get totals;
  @override
  $IngAddressCopyWith<$Res>? get shippingAddress;
  @override
  $IngAddressCopyWith<$Res>? get billingAddress;
  @override
  $AdditionalFieldsCopyWith<$Res>? get extensions;
}

/// @nodoc
class __$$ExperimentalCartImplCopyWithImpl<$Res>
    extends _$ExperimentalCartCopyWithImpl<$Res, _$ExperimentalCartImpl>
    implements _$$ExperimentalCartImplCopyWith<$Res> {
  __$$ExperimentalCartImplCopyWithImpl(_$ExperimentalCartImpl _value,
      $Res Function(_$ExperimentalCartImpl) _then)
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
    return _then(_$ExperimentalCartImpl(
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ExperimentalCartItem>?,
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
              as ExperimentalCartTotals?,
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
      hasCalculatedShipping: freezed == hasCalculatedShipping
          ? _value.hasCalculatedShipping
          : hasCalculatedShipping // ignore: cast_nullable_to_non_nullable
              as bool?,
      shippingRates: freezed == shippingRates
          ? _value._shippingRates
          : shippingRates // ignore: cast_nullable_to_non_nullable
              as List<ExperimentalCartShippingRate>?,
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
              as AdditionalFields?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExperimentalCartImpl implements _ExperimentalCart {
  const _$ExperimentalCartImpl(
      {@JsonKey(name: "items") final List<ExperimentalCartItem>? items,
      @JsonKey(name: "coupons") final List<dynamic>? coupons,
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
      final List<ExperimentalCartShippingRate>? shippingRates,
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

  factory _$ExperimentalCartImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExperimentalCartImplFromJson(json);

  final List<ExperimentalCartItem>? _items;
  @override
  @JsonKey(name: "items")
  List<ExperimentalCartItem>? get items {
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
  final ExperimentalCartTotals? totals;
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

  @override
  @JsonKey(name: "has_calculated_shipping")
  final bool? hasCalculatedShipping;
  final List<ExperimentalCartShippingRate>? _shippingRates;
  @override
  @JsonKey(name: "shipping_rates")
  List<ExperimentalCartShippingRate>? get shippingRates {
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
  final AdditionalFields? extensions;

  @override
  String toString() {
    return 'ExperimentalCart(items: $items, coupons: $coupons, fees: $fees, totals: $totals, shippingAddress: $shippingAddress, billingAddress: $billingAddress, needsPayment: $needsPayment, needsShipping: $needsShipping, paymentRequirements: $paymentRequirements, hasCalculatedShipping: $hasCalculatedShipping, shippingRates: $shippingRates, itemsCount: $itemsCount, itemsWeight: $itemsWeight, crossSells: $crossSells, errors: $errors, paymentMethods: $paymentMethods, extensions: $extensions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExperimentalCartImpl &&
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
  _$$ExperimentalCartImplCopyWith<_$ExperimentalCartImpl> get copyWith =>
      __$$ExperimentalCartImplCopyWithImpl<_$ExperimentalCartImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExperimentalCartImplToJson(
      this,
    );
  }
}

abstract class _ExperimentalCart implements ExperimentalCart {
  const factory _ExperimentalCart(
          {@JsonKey(name: "items") final List<ExperimentalCartItem>? items,
          @JsonKey(name: "coupons") final List<dynamic>? coupons,
          @JsonKey(name: "fees") final List<dynamic>? fees,
          @JsonKey(name: "totals") final ExperimentalCartTotals? totals,
          @JsonKey(name: "shipping_address") final IngAddress? shippingAddress,
          @JsonKey(name: "billing_address") final IngAddress? billingAddress,
          @JsonKey(name: "needs_payment") final bool? needsPayment,
          @JsonKey(name: "needs_shipping") final bool? needsShipping,
          @JsonKey(name: "payment_requirements")
          final List<String>? paymentRequirements,
          @JsonKey(name: "has_calculated_shipping")
          final bool? hasCalculatedShipping,
          @JsonKey(name: "shipping_rates")
          final List<ExperimentalCartShippingRate>? shippingRates,
          @JsonKey(name: "items_count") final int? itemsCount,
          @JsonKey(name: "items_weight") final int? itemsWeight,
          @JsonKey(name: "cross_sells") final List<dynamic>? crossSells,
          @JsonKey(name: "errors") final List<dynamic>? errors,
          @JsonKey(name: "payment_methods") final List<String>? paymentMethods,
          @JsonKey(name: "extensions") final AdditionalFields? extensions}) =
      _$ExperimentalCartImpl;

  factory _ExperimentalCart.fromJson(Map<String, dynamic> json) =
      _$ExperimentalCartImpl.fromJson;

  @override
  @JsonKey(name: "items")
  List<ExperimentalCartItem>? get items;
  @override
  @JsonKey(name: "coupons")
  List<dynamic>? get coupons;
  @override
  @JsonKey(name: "fees")
  List<dynamic>? get fees;
  @override
  @JsonKey(name: "totals")
  ExperimentalCartTotals? get totals;
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
  @JsonKey(name: "has_calculated_shipping")
  bool? get hasCalculatedShipping;
  @override
  @JsonKey(name: "shipping_rates")
  List<ExperimentalCartShippingRate>? get shippingRates;
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
  AdditionalFields? get extensions;
  @override
  @JsonKey(ignore: true)
  _$$ExperimentalCartImplCopyWith<_$ExperimentalCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExperimentalCartItem _$ExperimentalCartItemFromJson(Map<String, dynamic> json) {
  return _ExperimentalCartItem.fromJson(json);
}

/// @nodoc
mixin _$ExperimentalCartItem {
  @JsonKey(name: "key")
  String? get key => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
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
  AdditionalFields? get extensions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExperimentalCartItemCopyWith<ExperimentalCartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperimentalCartItemCopyWith<$Res> {
  factory $ExperimentalCartItemCopyWith(ExperimentalCartItem value,
          $Res Function(ExperimentalCartItem) then) =
      _$ExperimentalCartItemCopyWithImpl<$Res, ExperimentalCartItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "key") String? key,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "type") String? type,
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
      @JsonKey(name: "extensions") AdditionalFields? extensions});

  $QuantityLimitsCopyWith<$Res>? get quantityLimits;
  $PricesCopyWith<$Res>? get prices;
  $ItemTotalsCopyWith<$Res>? get totals;
  $AdditionalFieldsCopyWith<$Res>? get extensions;
}

/// @nodoc
class _$ExperimentalCartItemCopyWithImpl<$Res,
        $Val extends ExperimentalCartItem>
    implements $ExperimentalCartItemCopyWith<$Res> {
  _$ExperimentalCartItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? id = freezed,
    Object? type = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as AdditionalFields?,
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
  $AdditionalFieldsCopyWith<$Res>? get extensions {
    if (_value.extensions == null) {
      return null;
    }

    return $AdditionalFieldsCopyWith<$Res>(_value.extensions!, (value) {
      return _then(_value.copyWith(extensions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExperimentalCartItemImplCopyWith<$Res>
    implements $ExperimentalCartItemCopyWith<$Res> {
  factory _$$ExperimentalCartItemImplCopyWith(_$ExperimentalCartItemImpl value,
          $Res Function(_$ExperimentalCartItemImpl) then) =
      __$$ExperimentalCartItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "key") String? key,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "type") String? type,
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
      @JsonKey(name: "extensions") AdditionalFields? extensions});

  @override
  $QuantityLimitsCopyWith<$Res>? get quantityLimits;
  @override
  $PricesCopyWith<$Res>? get prices;
  @override
  $ItemTotalsCopyWith<$Res>? get totals;
  @override
  $AdditionalFieldsCopyWith<$Res>? get extensions;
}

/// @nodoc
class __$$ExperimentalCartItemImplCopyWithImpl<$Res>
    extends _$ExperimentalCartItemCopyWithImpl<$Res, _$ExperimentalCartItemImpl>
    implements _$$ExperimentalCartItemImplCopyWith<$Res> {
  __$$ExperimentalCartItemImplCopyWithImpl(_$ExperimentalCartItemImpl _value,
      $Res Function(_$ExperimentalCartItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? id = freezed,
    Object? type = freezed,
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
    return _then(_$ExperimentalCartItemImpl(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as AdditionalFields?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExperimentalCartItemImpl implements _ExperimentalCartItem {
  const _$ExperimentalCartItemImpl(
      {@JsonKey(name: "key") this.key,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "type") this.type,
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

  factory _$ExperimentalCartItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExperimentalCartItemImplFromJson(json);

  @override
  @JsonKey(name: "key")
  final String? key;
  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "type")
  final String? type;
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
  final AdditionalFields? extensions;

  @override
  String toString() {
    return 'ExperimentalCartItem(key: $key, id: $id, type: $type, quantity: $quantity, quantityLimits: $quantityLimits, name: $name, shortDescription: $shortDescription, description: $description, sku: $sku, lowStockRemaining: $lowStockRemaining, backordersAllowed: $backordersAllowed, showBackorderBadge: $showBackorderBadge, soldIndividually: $soldIndividually, permalink: $permalink, images: $images, variation: $variation, itemData: $itemData, prices: $prices, totals: $totals, catalogVisibility: $catalogVisibility, extensions: $extensions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExperimentalCartItemImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
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
        type,
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
  _$$ExperimentalCartItemImplCopyWith<_$ExperimentalCartItemImpl>
      get copyWith =>
          __$$ExperimentalCartItemImplCopyWithImpl<_$ExperimentalCartItemImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExperimentalCartItemImplToJson(
      this,
    );
  }
}

abstract class _ExperimentalCartItem implements ExperimentalCartItem {
  const factory _ExperimentalCartItem(
      {@JsonKey(name: "key") final String? key,
      @JsonKey(name: "id") final int? id,
      @JsonKey(name: "type") final String? type,
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
      final AdditionalFields? extensions}) = _$ExperimentalCartItemImpl;

  factory _ExperimentalCartItem.fromJson(Map<String, dynamic> json) =
      _$ExperimentalCartItemImpl.fromJson;

  @override
  @JsonKey(name: "key")
  String? get key;
  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "type")
  String? get type;
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
  AdditionalFields? get extensions;
  @override
  @JsonKey(ignore: true)
  _$$ExperimentalCartItemImplCopyWith<_$ExperimentalCartItemImpl>
      get copyWith => throw _privateConstructorUsedError;
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

ExperimentalCartShippingRate _$ExperimentalCartShippingRateFromJson(
    Map<String, dynamic> json) {
  return _ExperimentalCartShippingRate.fromJson(json);
}

/// @nodoc
mixin _$ExperimentalCartShippingRate {
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
  $ExperimentalCartShippingRateCopyWith<ExperimentalCartShippingRate>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperimentalCartShippingRateCopyWith<$Res> {
  factory $ExperimentalCartShippingRateCopyWith(
          ExperimentalCartShippingRate value,
          $Res Function(ExperimentalCartShippingRate) then) =
      _$ExperimentalCartShippingRateCopyWithImpl<$Res,
          ExperimentalCartShippingRate>;
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
class _$ExperimentalCartShippingRateCopyWithImpl<$Res,
        $Val extends ExperimentalCartShippingRate>
    implements $ExperimentalCartShippingRateCopyWith<$Res> {
  _$ExperimentalCartShippingRateCopyWithImpl(this._value, this._then);

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
abstract class _$$ExperimentalCartShippingRateImplCopyWith<$Res>
    implements $ExperimentalCartShippingRateCopyWith<$Res> {
  factory _$$ExperimentalCartShippingRateImplCopyWith(
          _$ExperimentalCartShippingRateImpl value,
          $Res Function(_$ExperimentalCartShippingRateImpl) then) =
      __$$ExperimentalCartShippingRateImplCopyWithImpl<$Res>;
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
class __$$ExperimentalCartShippingRateImplCopyWithImpl<$Res>
    extends _$ExperimentalCartShippingRateCopyWithImpl<$Res,
        _$ExperimentalCartShippingRateImpl>
    implements _$$ExperimentalCartShippingRateImplCopyWith<$Res> {
  __$$ExperimentalCartShippingRateImplCopyWithImpl(
      _$ExperimentalCartShippingRateImpl _value,
      $Res Function(_$ExperimentalCartShippingRateImpl) _then)
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
    return _then(_$ExperimentalCartShippingRateImpl(
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
class _$ExperimentalCartShippingRateImpl
    implements _ExperimentalCartShippingRate {
  const _$ExperimentalCartShippingRateImpl(
      {@JsonKey(name: "package_id") this.packageId,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "destination") this.destination,
      @JsonKey(name: "items") final List<ShippingRateItem>? items,
      @JsonKey(name: "shipping_rates")
      final List<ShippingRateShippingRate>? shippingRates})
      : _items = items,
        _shippingRates = shippingRates;

  factory _$ExperimentalCartShippingRateImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ExperimentalCartShippingRateImplFromJson(json);

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
    return 'ExperimentalCartShippingRate(packageId: $packageId, name: $name, destination: $destination, items: $items, shippingRates: $shippingRates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExperimentalCartShippingRateImpl &&
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
  _$$ExperimentalCartShippingRateImplCopyWith<
          _$ExperimentalCartShippingRateImpl>
      get copyWith => __$$ExperimentalCartShippingRateImplCopyWithImpl<
          _$ExperimentalCartShippingRateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExperimentalCartShippingRateImplToJson(
      this,
    );
  }
}

abstract class _ExperimentalCartShippingRate
    implements ExperimentalCartShippingRate {
  const factory _ExperimentalCartShippingRate(
          {@JsonKey(name: "package_id") final int? packageId,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "destination") final Destination? destination,
          @JsonKey(name: "items") final List<ShippingRateItem>? items,
          @JsonKey(name: "shipping_rates")
          final List<ShippingRateShippingRate>? shippingRates}) =
      _$ExperimentalCartShippingRateImpl;

  factory _ExperimentalCartShippingRate.fromJson(Map<String, dynamic> json) =
      _$ExperimentalCartShippingRateImpl.fromJson;

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
  _$$ExperimentalCartShippingRateImplCopyWith<
          _$ExperimentalCartShippingRateImpl>
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

ExperimentalCartTotals _$ExperimentalCartTotalsFromJson(
    Map<String, dynamic> json) {
  return _ExperimentalCartTotals.fromJson(json);
}

/// @nodoc
mixin _$ExperimentalCartTotals {
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
  $ExperimentalCartTotalsCopyWith<ExperimentalCartTotals> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperimentalCartTotalsCopyWith<$Res> {
  factory $ExperimentalCartTotalsCopyWith(ExperimentalCartTotals value,
          $Res Function(ExperimentalCartTotals) then) =
      _$ExperimentalCartTotalsCopyWithImpl<$Res, ExperimentalCartTotals>;
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
class _$ExperimentalCartTotalsCopyWithImpl<$Res,
        $Val extends ExperimentalCartTotals>
    implements $ExperimentalCartTotalsCopyWith<$Res> {
  _$ExperimentalCartTotalsCopyWithImpl(this._value, this._then);

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
abstract class _$$ExperimentalCartTotalsImplCopyWith<$Res>
    implements $ExperimentalCartTotalsCopyWith<$Res> {
  factory _$$ExperimentalCartTotalsImplCopyWith(
          _$ExperimentalCartTotalsImpl value,
          $Res Function(_$ExperimentalCartTotalsImpl) then) =
      __$$ExperimentalCartTotalsImplCopyWithImpl<$Res>;
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
class __$$ExperimentalCartTotalsImplCopyWithImpl<$Res>
    extends _$ExperimentalCartTotalsCopyWithImpl<$Res,
        _$ExperimentalCartTotalsImpl>
    implements _$$ExperimentalCartTotalsImplCopyWith<$Res> {
  __$$ExperimentalCartTotalsImplCopyWithImpl(
      _$ExperimentalCartTotalsImpl _value,
      $Res Function(_$ExperimentalCartTotalsImpl) _then)
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
    return _then(_$ExperimentalCartTotalsImpl(
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
class _$ExperimentalCartTotalsImpl implements _ExperimentalCartTotals {
  const _$ExperimentalCartTotalsImpl(
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

  factory _$ExperimentalCartTotalsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExperimentalCartTotalsImplFromJson(json);

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
    return 'ExperimentalCartTotals(totalItems: $totalItems, totalItemsTax: $totalItemsTax, totalFees: $totalFees, totalFeesTax: $totalFeesTax, totalDiscount: $totalDiscount, totalDiscountTax: $totalDiscountTax, totalShipping: $totalShipping, totalShippingTax: $totalShippingTax, totalPrice: $totalPrice, totalTax: $totalTax, taxLines: $taxLines, currencyCode: $currencyCode, currencySymbol: $currencySymbol, currencyMinorUnit: $currencyMinorUnit, currencyDecimalSeparator: $currencyDecimalSeparator, currencyThousandSeparator: $currencyThousandSeparator, currencyPrefix: $currencyPrefix, currencySuffix: $currencySuffix)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExperimentalCartTotalsImpl &&
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
  _$$ExperimentalCartTotalsImplCopyWith<_$ExperimentalCartTotalsImpl>
      get copyWith => __$$ExperimentalCartTotalsImplCopyWithImpl<
          _$ExperimentalCartTotalsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExperimentalCartTotalsImplToJson(
      this,
    );
  }
}

abstract class _ExperimentalCartTotals implements ExperimentalCartTotals {
  const factory _ExperimentalCartTotals(
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
      _$ExperimentalCartTotalsImpl;

  factory _ExperimentalCartTotals.fromJson(Map<String, dynamic> json) =
      _$ExperimentalCartTotalsImpl.fromJson;

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
  _$$ExperimentalCartTotalsImplCopyWith<_$ExperimentalCartTotalsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
