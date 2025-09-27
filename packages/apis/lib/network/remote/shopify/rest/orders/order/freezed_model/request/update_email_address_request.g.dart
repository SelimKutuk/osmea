// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_email_address_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateEmailAddressRequestImpl _$$UpdateEmailAddressRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateEmailAddressRequestImpl(
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateEmailAddressRequestImplToJson(
    _$UpdateEmailAddressRequestImpl instance) {
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
      email: json['email'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('id', instance.id);
  return val;
}
