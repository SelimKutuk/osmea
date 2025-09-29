// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_risk_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateOrderRiskRequestImpl _$$CreateOrderRiskRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateOrderRiskRequestImpl(
      risk: json['risk'] == null
          ? null
          : Risk.fromJson(json['risk'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateOrderRiskRequestImplToJson(
    _$CreateOrderRiskRequestImpl instance) {
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
      message: json['message'] as String?,
      recommendation: json['recommendation'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      source: json['source'] as String?,
      causeCancel: json['cause_cancel'] as bool?,
      display: json['display'] as bool?,
    );

Map<String, dynamic> _$$RiskImplToJson(_$RiskImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('recommendation', instance.recommendation);
  writeNotNull('score', instance.score);
  writeNotNull('source', instance.source);
  writeNotNull('cause_cancel', instance.causeCancel);
  writeNotNull('display', instance.display);
  return val;
}
