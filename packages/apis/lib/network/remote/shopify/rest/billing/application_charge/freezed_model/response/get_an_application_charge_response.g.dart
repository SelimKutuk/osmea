// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_an_application_charge_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAnApplicationChargeResponseImpl
    _$$GetAnApplicationChargeResponseImplFromJson(Map<String, dynamic> json) =>
        _$GetAnApplicationChargeResponseImpl(
          applicationCharge: json['application_charge'] == null
              ? null
              : ApplicationCharge.fromJson(
                  json['application_charge'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GetAnApplicationChargeResponseImplToJson(
    _$GetAnApplicationChargeResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('application_charge', instance.applicationCharge?.toJson());
  return val;
}
