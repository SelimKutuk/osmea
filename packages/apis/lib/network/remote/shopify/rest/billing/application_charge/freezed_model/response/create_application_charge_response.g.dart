// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_application_charge_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateApplicationChargeResponseImpl
    _$$CreateApplicationChargeResponseImplFromJson(Map<String, dynamic> json) =>
        _$CreateApplicationChargeResponseImpl(
          applicationCharge: json['application_charge'] == null
              ? null
              : ApplicationCharge.fromJson(
                  json['application_charge'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateApplicationChargeResponseImplToJson(
    _$CreateApplicationChargeResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('application_charge', instance.applicationCharge?.toJson());
  return val;
}
