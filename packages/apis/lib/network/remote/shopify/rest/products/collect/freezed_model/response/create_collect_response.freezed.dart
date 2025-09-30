// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_collect_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateCollectResponse _$CreateCollectResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateCollectResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateCollectResponse {
  /// The newly created collect
  Collect? get collect => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateCollectResponseCopyWith<CreateCollectResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCollectResponseCopyWith<$Res> {
  factory $CreateCollectResponseCopyWith(CreateCollectResponse value,
          $Res Function(CreateCollectResponse) then) =
      _$CreateCollectResponseCopyWithImpl<$Res, CreateCollectResponse>;
  @useResult
  $Res call({Collect? collect});

  $CollectCopyWith<$Res>? get collect;
}

/// @nodoc
class _$CreateCollectResponseCopyWithImpl<$Res,
        $Val extends CreateCollectResponse>
    implements $CreateCollectResponseCopyWith<$Res> {
  _$CreateCollectResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collect = freezed,
  }) {
    return _then(_value.copyWith(
      collect: freezed == collect
          ? _value.collect
          : collect // ignore: cast_nullable_to_non_nullable
              as Collect?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CollectCopyWith<$Res>? get collect {
    if (_value.collect == null) {
      return null;
    }

    return $CollectCopyWith<$Res>(_value.collect!, (value) {
      return _then(_value.copyWith(collect: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateCollectResponseImplCopyWith<$Res>
    implements $CreateCollectResponseCopyWith<$Res> {
  factory _$$CreateCollectResponseImplCopyWith(
          _$CreateCollectResponseImpl value,
          $Res Function(_$CreateCollectResponseImpl) then) =
      __$$CreateCollectResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Collect? collect});

  @override
  $CollectCopyWith<$Res>? get collect;
}

/// @nodoc
class __$$CreateCollectResponseImplCopyWithImpl<$Res>
    extends _$CreateCollectResponseCopyWithImpl<$Res,
        _$CreateCollectResponseImpl>
    implements _$$CreateCollectResponseImplCopyWith<$Res> {
  __$$CreateCollectResponseImplCopyWithImpl(_$CreateCollectResponseImpl _value,
      $Res Function(_$CreateCollectResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collect = freezed,
  }) {
    return _then(_$CreateCollectResponseImpl(
      collect: freezed == collect
          ? _value.collect
          : collect // ignore: cast_nullable_to_non_nullable
              as Collect?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateCollectResponseImpl implements _CreateCollectResponse {
  const _$CreateCollectResponseImpl({this.collect});

  factory _$CreateCollectResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateCollectResponseImplFromJson(json);

  /// The newly created collect
  @override
  final Collect? collect;

  @override
  String toString() {
    return 'CreateCollectResponse(collect: $collect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCollectResponseImpl &&
            (identical(other.collect, collect) || other.collect == collect));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, collect);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCollectResponseImplCopyWith<_$CreateCollectResponseImpl>
      get copyWith => __$$CreateCollectResponseImplCopyWithImpl<
          _$CreateCollectResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateCollectResponseImplToJson(
      this,
    );
  }
}

abstract class _CreateCollectResponse implements CreateCollectResponse {
  const factory _CreateCollectResponse({final Collect? collect}) =
      _$CreateCollectResponseImpl;

  factory _CreateCollectResponse.fromJson(Map<String, dynamic> json) =
      _$CreateCollectResponseImpl.fromJson;

  @override

  /// The newly created collect
  Collect? get collect;
  @override
  @JsonKey(ignore: true)
  _$$CreateCollectResponseImplCopyWith<_$CreateCollectResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
