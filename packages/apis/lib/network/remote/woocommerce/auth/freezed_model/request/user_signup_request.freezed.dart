// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_signup_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserSignUpRequest _$UserSignUpRequestFromJson(Map<String, dynamic> json) {
  return _UserSignUpRequest.fromJson(json);
}

/// @nodoc
mixin _$UserSignUpRequest {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  @JsonKey(name: 'accept_terms')
  bool get acceptTerms => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscribe_newsletter')
  bool get subscribeNewsletter => throw _privateConstructorUsedError;
  @JsonKey(name: 'referral_code')
  String? get referralCode => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this UserSignUpRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserSignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserSignUpRequestCopyWith<UserSignUpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSignUpRequestCopyWith<$Res> {
  factory $UserSignUpRequestCopyWith(
          UserSignUpRequest value, $Res Function(UserSignUpRequest) then) =
      _$UserSignUpRequestCopyWithImpl<$Res, UserSignUpRequest>;
  @useResult
  $Res call(
      {String email,
      String password,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String? phone,
      String? company,
      @JsonKey(name: 'accept_terms') bool acceptTerms,
      @JsonKey(name: 'subscribe_newsletter') bool subscribeNewsletter,
      @JsonKey(name: 'referral_code') String? referralCode,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UserSignUpRequestCopyWithImpl<$Res, $Val extends UserSignUpRequest>
    implements $UserSignUpRequestCopyWith<$Res> {
  _$UserSignUpRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserSignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phone = freezed,
    Object? company = freezed,
    Object? acceptTerms = null,
    Object? subscribeNewsletter = null,
    Object? referralCode = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptTerms: null == acceptTerms
          ? _value.acceptTerms
          : acceptTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      subscribeNewsletter: null == subscribeNewsletter
          ? _value.subscribeNewsletter
          : subscribeNewsletter // ignore: cast_nullable_to_non_nullable
              as bool,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSignUpRequestImplCopyWith<$Res>
    implements $UserSignUpRequestCopyWith<$Res> {
  factory _$$UserSignUpRequestImplCopyWith(_$UserSignUpRequestImpl value,
          $Res Function(_$UserSignUpRequestImpl) then) =
      __$$UserSignUpRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String? phone,
      String? company,
      @JsonKey(name: 'accept_terms') bool acceptTerms,
      @JsonKey(name: 'subscribe_newsletter') bool subscribeNewsletter,
      @JsonKey(name: 'referral_code') String? referralCode,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$UserSignUpRequestImplCopyWithImpl<$Res>
    extends _$UserSignUpRequestCopyWithImpl<$Res, _$UserSignUpRequestImpl>
    implements _$$UserSignUpRequestImplCopyWith<$Res> {
  __$$UserSignUpRequestImplCopyWithImpl(_$UserSignUpRequestImpl _value,
      $Res Function(_$UserSignUpRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserSignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phone = freezed,
    Object? company = freezed,
    Object? acceptTerms = null,
    Object? subscribeNewsletter = null,
    Object? referralCode = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$UserSignUpRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptTerms: null == acceptTerms
          ? _value.acceptTerms
          : acceptTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      subscribeNewsletter: null == subscribeNewsletter
          ? _value.subscribeNewsletter
          : subscribeNewsletter // ignore: cast_nullable_to_non_nullable
              as bool,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSignUpRequestImpl implements _UserSignUpRequest {
  const _$UserSignUpRequestImpl(
      {required this.email,
      required this.password,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      this.phone,
      this.company,
      @JsonKey(name: 'accept_terms') this.acceptTerms = true,
      @JsonKey(name: 'subscribe_newsletter') this.subscribeNewsletter = false,
      @JsonKey(name: 'referral_code') this.referralCode,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$UserSignUpRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSignUpRequestImplFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  final String? phone;
  @override
  final String? company;
  @override
  @JsonKey(name: 'accept_terms')
  final bool acceptTerms;
  @override
  @JsonKey(name: 'subscribe_newsletter')
  final bool subscribeNewsletter;
  @override
  @JsonKey(name: 'referral_code')
  final String? referralCode;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'UserSignUpRequest(email: $email, password: $password, firstName: $firstName, lastName: $lastName, phone: $phone, company: $company, acceptTerms: $acceptTerms, subscribeNewsletter: $subscribeNewsletter, referralCode: $referralCode, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSignUpRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.acceptTerms, acceptTerms) ||
                other.acceptTerms == acceptTerms) &&
            (identical(other.subscribeNewsletter, subscribeNewsletter) ||
                other.subscribeNewsletter == subscribeNewsletter) &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      password,
      firstName,
      lastName,
      phone,
      company,
      acceptTerms,
      subscribeNewsletter,
      referralCode,
      const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of UserSignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSignUpRequestImplCopyWith<_$UserSignUpRequestImpl> get copyWith =>
      __$$UserSignUpRequestImplCopyWithImpl<_$UserSignUpRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSignUpRequestImplToJson(
      this,
    );
  }
}

abstract class _UserSignUpRequest implements UserSignUpRequest {
  const factory _UserSignUpRequest(
      {required final String email,
      required final String password,
      @JsonKey(name: 'first_name') required final String firstName,
      @JsonKey(name: 'last_name') required final String lastName,
      final String? phone,
      final String? company,
      @JsonKey(name: 'accept_terms') final bool acceptTerms,
      @JsonKey(name: 'subscribe_newsletter') final bool subscribeNewsletter,
      @JsonKey(name: 'referral_code') final String? referralCode,
      final Map<String, dynamic>? metadata}) = _$UserSignUpRequestImpl;

  factory _UserSignUpRequest.fromJson(Map<String, dynamic> json) =
      _$UserSignUpRequestImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  String? get phone;
  @override
  String? get company;
  @override
  @JsonKey(name: 'accept_terms')
  bool get acceptTerms;
  @override
  @JsonKey(name: 'subscribe_newsletter')
  bool get subscribeNewsletter;
  @override
  @JsonKey(name: 'referral_code')
  String? get referralCode;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of UserSignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserSignUpRequestImplCopyWith<_$UserSignUpRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
