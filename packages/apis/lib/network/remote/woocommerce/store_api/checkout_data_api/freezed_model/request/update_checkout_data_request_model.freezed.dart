// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_checkout_data_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateCheckoutDataRequestModel _$UpdateCheckoutDataRequestModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateCheckoutDataRequestModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateCheckoutDataRequestModel {
  @JsonKey(name: "additional_fields")
  AdditionalFields? get additionalFields => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method")
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "order_notes")
  String? get orderNotes => throw _privateConstructorUsedError;
  @JsonKey(name: "billing_address")
  IngAddress? get billingAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_address")
  IngAddress? get shippingAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCheckoutDataRequestModelCopyWith<UpdateCheckoutDataRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCheckoutDataRequestModelCopyWith<$Res> {
  factory $UpdateCheckoutDataRequestModelCopyWith(
          UpdateCheckoutDataRequestModel value,
          $Res Function(UpdateCheckoutDataRequestModel) then) =
      _$UpdateCheckoutDataRequestModelCopyWithImpl<$Res,
          UpdateCheckoutDataRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "additional_fields") AdditionalFields? additionalFields,
      @JsonKey(name: "payment_method") String? paymentMethod,
      @JsonKey(name: "order_notes") String? orderNotes,
      @JsonKey(name: "billing_address") IngAddress? billingAddress,
      @JsonKey(name: "shipping_address") IngAddress? shippingAddress});

  $AdditionalFieldsCopyWith<$Res>? get additionalFields;
  $IngAddressCopyWith<$Res>? get billingAddress;
  $IngAddressCopyWith<$Res>? get shippingAddress;
}

/// @nodoc
class _$UpdateCheckoutDataRequestModelCopyWithImpl<$Res,
        $Val extends UpdateCheckoutDataRequestModel>
    implements $UpdateCheckoutDataRequestModelCopyWith<$Res> {
  _$UpdateCheckoutDataRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? additionalFields = freezed,
    Object? paymentMethod = freezed,
    Object? orderNotes = freezed,
    Object? billingAddress = freezed,
    Object? shippingAddress = freezed,
  }) {
    return _then(_value.copyWith(
      additionalFields: freezed == additionalFields
          ? _value.additionalFields
          : additionalFields // ignore: cast_nullable_to_non_nullable
              as AdditionalFields?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNotes: freezed == orderNotes
          ? _value.orderNotes
          : orderNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddress: freezed == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as IngAddress?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as IngAddress?,
    ) as $Val);
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
}

/// @nodoc
abstract class _$$UpdateCheckoutDataRequestModelImplCopyWith<$Res>
    implements $UpdateCheckoutDataRequestModelCopyWith<$Res> {
  factory _$$UpdateCheckoutDataRequestModelImplCopyWith(
          _$UpdateCheckoutDataRequestModelImpl value,
          $Res Function(_$UpdateCheckoutDataRequestModelImpl) then) =
      __$$UpdateCheckoutDataRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "additional_fields") AdditionalFields? additionalFields,
      @JsonKey(name: "payment_method") String? paymentMethod,
      @JsonKey(name: "order_notes") String? orderNotes,
      @JsonKey(name: "billing_address") IngAddress? billingAddress,
      @JsonKey(name: "shipping_address") IngAddress? shippingAddress});

  @override
  $AdditionalFieldsCopyWith<$Res>? get additionalFields;
  @override
  $IngAddressCopyWith<$Res>? get billingAddress;
  @override
  $IngAddressCopyWith<$Res>? get shippingAddress;
}

/// @nodoc
class __$$UpdateCheckoutDataRequestModelImplCopyWithImpl<$Res>
    extends _$UpdateCheckoutDataRequestModelCopyWithImpl<$Res,
        _$UpdateCheckoutDataRequestModelImpl>
    implements _$$UpdateCheckoutDataRequestModelImplCopyWith<$Res> {
  __$$UpdateCheckoutDataRequestModelImplCopyWithImpl(
      _$UpdateCheckoutDataRequestModelImpl _value,
      $Res Function(_$UpdateCheckoutDataRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? additionalFields = freezed,
    Object? paymentMethod = freezed,
    Object? orderNotes = freezed,
    Object? billingAddress = freezed,
    Object? shippingAddress = freezed,
  }) {
    return _then(_$UpdateCheckoutDataRequestModelImpl(
      additionalFields: freezed == additionalFields
          ? _value.additionalFields
          : additionalFields // ignore: cast_nullable_to_non_nullable
              as AdditionalFields?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNotes: freezed == orderNotes
          ? _value.orderNotes
          : orderNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddress: freezed == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as IngAddress?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as IngAddress?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateCheckoutDataRequestModelImpl
    implements _UpdateCheckoutDataRequestModel {
  const _$UpdateCheckoutDataRequestModelImpl(
      {@JsonKey(name: "additional_fields") this.additionalFields,
      @JsonKey(name: "payment_method") this.paymentMethod,
      @JsonKey(name: "order_notes") this.orderNotes,
      @JsonKey(name: "billing_address") this.billingAddress,
      @JsonKey(name: "shipping_address") this.shippingAddress});

  factory _$UpdateCheckoutDataRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateCheckoutDataRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "additional_fields")
  final AdditionalFields? additionalFields;
  @override
  @JsonKey(name: "payment_method")
  final String? paymentMethod;
  @override
  @JsonKey(name: "order_notes")
  final String? orderNotes;
  @override
  @JsonKey(name: "billing_address")
  final IngAddress? billingAddress;
  @override
  @JsonKey(name: "shipping_address")
  final IngAddress? shippingAddress;

  @override
  String toString() {
    return 'UpdateCheckoutDataRequestModel(additionalFields: $additionalFields, paymentMethod: $paymentMethod, orderNotes: $orderNotes, billingAddress: $billingAddress, shippingAddress: $shippingAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCheckoutDataRequestModelImpl &&
            (identical(other.additionalFields, additionalFields) ||
                other.additionalFields == additionalFields) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.orderNotes, orderNotes) ||
                other.orderNotes == orderNotes) &&
            (identical(other.billingAddress, billingAddress) ||
                other.billingAddress == billingAddress) &&
            (identical(other.shippingAddress, shippingAddress) ||
                other.shippingAddress == shippingAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, additionalFields, paymentMethod,
      orderNotes, billingAddress, shippingAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCheckoutDataRequestModelImplCopyWith<
          _$UpdateCheckoutDataRequestModelImpl>
      get copyWith => __$$UpdateCheckoutDataRequestModelImplCopyWithImpl<
          _$UpdateCheckoutDataRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateCheckoutDataRequestModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateCheckoutDataRequestModel
    implements UpdateCheckoutDataRequestModel {
  const factory _UpdateCheckoutDataRequestModel(
          {@JsonKey(name: "additional_fields")
          final AdditionalFields? additionalFields,
          @JsonKey(name: "payment_method") final String? paymentMethod,
          @JsonKey(name: "order_notes") final String? orderNotes,
          @JsonKey(name: "billing_address") final IngAddress? billingAddress,
          @JsonKey(name: "shipping_address")
          final IngAddress? shippingAddress}) =
      _$UpdateCheckoutDataRequestModelImpl;

  factory _UpdateCheckoutDataRequestModel.fromJson(Map<String, dynamic> json) =
      _$UpdateCheckoutDataRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "additional_fields")
  AdditionalFields? get additionalFields;
  @override
  @JsonKey(name: "payment_method")
  String? get paymentMethod;
  @override
  @JsonKey(name: "order_notes")
  String? get orderNotes;
  @override
  @JsonKey(name: "billing_address")
  IngAddress? get billingAddress;
  @override
  @JsonKey(name: "shipping_address")
  IngAddress? get shippingAddress;
  @override
  @JsonKey(ignore: true)
  _$$UpdateCheckoutDataRequestModelImplCopyWith<
          _$UpdateCheckoutDataRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AdditionalFields _$AdditionalFieldsFromJson(Map<String, dynamic> json) {
  return _AdditionalFields.fromJson(json);
}

/// @nodoc
mixin _$AdditionalFields {
  @JsonKey(name: "plugin-namespace/leave-on-porch")
  bool? get pluginNamespaceLeaveOnPorch => throw _privateConstructorUsedError;
  @JsonKey(name: "plugin-namespace/location-on-porch")
  String? get pluginNamespaceLocationOnPorch =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdditionalFieldsCopyWith<AdditionalFields> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalFieldsCopyWith<$Res> {
  factory $AdditionalFieldsCopyWith(
          AdditionalFields value, $Res Function(AdditionalFields) then) =
      _$AdditionalFieldsCopyWithImpl<$Res, AdditionalFields>;
  @useResult
  $Res call(
      {@JsonKey(name: "plugin-namespace/leave-on-porch")
      bool? pluginNamespaceLeaveOnPorch,
      @JsonKey(name: "plugin-namespace/location-on-porch")
      String? pluginNamespaceLocationOnPorch});
}

/// @nodoc
class _$AdditionalFieldsCopyWithImpl<$Res, $Val extends AdditionalFields>
    implements $AdditionalFieldsCopyWith<$Res> {
  _$AdditionalFieldsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pluginNamespaceLeaveOnPorch = freezed,
    Object? pluginNamespaceLocationOnPorch = freezed,
  }) {
    return _then(_value.copyWith(
      pluginNamespaceLeaveOnPorch: freezed == pluginNamespaceLeaveOnPorch
          ? _value.pluginNamespaceLeaveOnPorch
          : pluginNamespaceLeaveOnPorch // ignore: cast_nullable_to_non_nullable
              as bool?,
      pluginNamespaceLocationOnPorch: freezed == pluginNamespaceLocationOnPorch
          ? _value.pluginNamespaceLocationOnPorch
          : pluginNamespaceLocationOnPorch // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdditionalFieldsImplCopyWith<$Res>
    implements $AdditionalFieldsCopyWith<$Res> {
  factory _$$AdditionalFieldsImplCopyWith(_$AdditionalFieldsImpl value,
          $Res Function(_$AdditionalFieldsImpl) then) =
      __$$AdditionalFieldsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "plugin-namespace/leave-on-porch")
      bool? pluginNamespaceLeaveOnPorch,
      @JsonKey(name: "plugin-namespace/location-on-porch")
      String? pluginNamespaceLocationOnPorch});
}

/// @nodoc
class __$$AdditionalFieldsImplCopyWithImpl<$Res>
    extends _$AdditionalFieldsCopyWithImpl<$Res, _$AdditionalFieldsImpl>
    implements _$$AdditionalFieldsImplCopyWith<$Res> {
  __$$AdditionalFieldsImplCopyWithImpl(_$AdditionalFieldsImpl _value,
      $Res Function(_$AdditionalFieldsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pluginNamespaceLeaveOnPorch = freezed,
    Object? pluginNamespaceLocationOnPorch = freezed,
  }) {
    return _then(_$AdditionalFieldsImpl(
      pluginNamespaceLeaveOnPorch: freezed == pluginNamespaceLeaveOnPorch
          ? _value.pluginNamespaceLeaveOnPorch
          : pluginNamespaceLeaveOnPorch // ignore: cast_nullable_to_non_nullable
              as bool?,
      pluginNamespaceLocationOnPorch: freezed == pluginNamespaceLocationOnPorch
          ? _value.pluginNamespaceLocationOnPorch
          : pluginNamespaceLocationOnPorch // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdditionalFieldsImpl implements _AdditionalFields {
  const _$AdditionalFieldsImpl(
      {@JsonKey(name: "plugin-namespace/leave-on-porch")
      this.pluginNamespaceLeaveOnPorch,
      @JsonKey(name: "plugin-namespace/location-on-porch")
      this.pluginNamespaceLocationOnPorch});

  factory _$AdditionalFieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdditionalFieldsImplFromJson(json);

  @override
  @JsonKey(name: "plugin-namespace/leave-on-porch")
  final bool? pluginNamespaceLeaveOnPorch;
  @override
  @JsonKey(name: "plugin-namespace/location-on-porch")
  final String? pluginNamespaceLocationOnPorch;

  @override
  String toString() {
    return 'AdditionalFields(pluginNamespaceLeaveOnPorch: $pluginNamespaceLeaveOnPorch, pluginNamespaceLocationOnPorch: $pluginNamespaceLocationOnPorch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdditionalFieldsImpl &&
            (identical(other.pluginNamespaceLeaveOnPorch,
                    pluginNamespaceLeaveOnPorch) ||
                other.pluginNamespaceLeaveOnPorch ==
                    pluginNamespaceLeaveOnPorch) &&
            (identical(other.pluginNamespaceLocationOnPorch,
                    pluginNamespaceLocationOnPorch) ||
                other.pluginNamespaceLocationOnPorch ==
                    pluginNamespaceLocationOnPorch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, pluginNamespaceLeaveOnPorch, pluginNamespaceLocationOnPorch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdditionalFieldsImplCopyWith<_$AdditionalFieldsImpl> get copyWith =>
      __$$AdditionalFieldsImplCopyWithImpl<_$AdditionalFieldsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdditionalFieldsImplToJson(
      this,
    );
  }
}

abstract class _AdditionalFields implements AdditionalFields {
  const factory _AdditionalFields(
      {@JsonKey(name: "plugin-namespace/leave-on-porch")
      final bool? pluginNamespaceLeaveOnPorch,
      @JsonKey(name: "plugin-namespace/location-on-porch")
      final String? pluginNamespaceLocationOnPorch}) = _$AdditionalFieldsImpl;

  factory _AdditionalFields.fromJson(Map<String, dynamic> json) =
      _$AdditionalFieldsImpl.fromJson;

  @override
  @JsonKey(name: "plugin-namespace/leave-on-porch")
  bool? get pluginNamespaceLeaveOnPorch;
  @override
  @JsonKey(name: "plugin-namespace/location-on-porch")
  String? get pluginNamespaceLocationOnPorch;
  @override
  @JsonKey(ignore: true)
  _$$AdditionalFieldsImplCopyWith<_$AdditionalFieldsImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
