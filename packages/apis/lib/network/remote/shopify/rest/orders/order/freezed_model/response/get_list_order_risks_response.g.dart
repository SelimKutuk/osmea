// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_list_order_risks_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetListOrderRisksResponseImpl _$$GetListOrderRisksResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetListOrderRisksResponseImpl(
      risks: (json['risks'] as List<dynamic>?)
          ?.map((e) => Risk.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetListOrderRisksResponseImplToJson(
    _$GetListOrderRisksResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('risks', instance.risks?.map((e) => e.toJson()).toList());
  return val;
}

_$RiskImpl _$$RiskImplFromJson(Map<String, dynamic> json) => _$RiskImpl(
      id: (json['id'] as num?)?.toInt(),
      orderId: (json['order_id'] as num?)?.toInt(),
      checkoutId: json['checkout_id'],
      source: json['source'] as String?,
      score: json['score'] as String?,
      recommendation: json['recommendation'] as String?,
      display: json['display'] as bool?,
      causeCancel: json['cause_cancel'] as bool?,
      message: json['message'] as String?,
      merchantMessage: json['merchant_message'] as String?,
    );

Map<String, dynamic> _$$RiskImplToJson(_$RiskImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('checkout_id', instance.checkoutId);
  writeNotNull('source', instance.source);
  writeNotNull('score', instance.score);
  writeNotNull('recommendation', instance.recommendation);
  writeNotNull('display', instance.display);
  writeNotNull('cause_cancel', instance.causeCancel);
  writeNotNull('message', instance.message);
  writeNotNull('merchant_message', instance.merchantMessage);
  return val;
}
