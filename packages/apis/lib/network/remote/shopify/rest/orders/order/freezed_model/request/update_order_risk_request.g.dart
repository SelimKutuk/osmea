// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_order_risk_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateOrderRiskRequestImpl _$$UpdateOrderRiskRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateOrderRiskRequestImpl(
      risk: json['risk'] == null
          ? null
          : Risk.fromJson(json['risk'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateOrderRiskRequestImplToJson(
    _$UpdateOrderRiskRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('risk', instance.risk?.toJson());
  return val;
}

_$RiskImpl _$$RiskImplFromJson(Map<String, dynamic> json) => _$RiskImpl(
      id: (json['id'] as num?)?.toInt(),
      message: json['message'] as String?,
      recommendation: json['recommendation'] as String?,
      source: json['source'] as String?,
      causeCancel: json['cause_cancel'] as bool?,
      score: (json['score'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RiskImplToJson(_$RiskImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('message', instance.message);
  writeNotNull('recommendation', instance.recommendation);
  writeNotNull('source', instance.source);
  writeNotNull('cause_cancel', instance.causeCancel);
  writeNotNull('score', instance.score);
  return val;
}
