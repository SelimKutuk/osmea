// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_phone_number_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdatePhoneNumberRequestImpl _$$UpdatePhoneNumberRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatePhoneNumberRequestImpl(
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdatePhoneNumberRequestImplToJson(
    _$UpdatePhoneNumberRequestImpl instance) {
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
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('phone', instance.phone);
  return val;
}
