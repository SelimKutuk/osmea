// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_a_usage_charge_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAUsageChargeResponseImpl _$$GetAUsageChargeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAUsageChargeResponseImpl(
      usageCharge: json['usage_charge'] == null
          ? null
          : UsageCharge.fromJson(json['usage_charge'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetAUsageChargeResponseImplToJson(
    _$GetAUsageChargeResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('usage_charge', instance.usageCharge?.toJson());
  return val;
}
