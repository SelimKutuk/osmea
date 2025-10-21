// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage_charge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsageChargeImpl _$$UsageChargeImplFromJson(Map<String, dynamic> json) =>
    _$UsageChargeImpl(
      id: (json['id'] as num).toInt(),
      description: json['description'] as String,
      price: json['price'] as String,
      createdAt: json['created_at'] as String?,
      currency: json['currency'] as String?,
      balanceUsed: json['balance_used'] as String?,
      balanceRemaining: json['balance_remaining'] as String?,
      riskLevel: (json['risk_level'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$UsageChargeImplToJson(_$UsageChargeImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'description': instance.description,
    'price': instance.price,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created_at', instance.createdAt);
  writeNotNull('currency', instance.currency);
  writeNotNull('balance_used', instance.balanceUsed);
  writeNotNull('balance_remaining', instance.balanceRemaining);
  writeNotNull('risk_level', instance.riskLevel);
  return val;
}
