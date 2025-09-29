// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_change_whether_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateChangeWhetherRequestImpl _$$UpdateChangeWhetherRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateChangeWhetherRequestImpl(
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateChangeWhetherRequestImplToJson(
    _$UpdateChangeWhetherRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order', instance.order?.toJson());
  return val;
}

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      id: (json['id'] as num?)?.toInt(),
      buyerAcceptsMarketing: json['buyer_accepts_marketing'] as bool?,
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('buyer_accepts_marketing', instance.buyerAcceptsMarketing);
  return val;
}
