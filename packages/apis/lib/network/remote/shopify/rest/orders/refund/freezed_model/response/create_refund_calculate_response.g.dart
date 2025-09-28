// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_refund_calculate_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateRefundCalculateResponseImpl
    _$$CreateRefundCalculateResponseImplFromJson(Map<String, dynamic> json) =>
        _$CreateRefundCalculateResponseImpl(
          refund: json['refund'] == null
              ? null
              : Refund.fromJson(json['refund'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateRefundCalculateResponseImplToJson(
    _$CreateRefundCalculateResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('refund', instance.refund?.toJson());
  return val;
}

_$RefundImpl _$$RefundImplFromJson(Map<String, dynamic> json) => _$RefundImpl(
      duties: json['duties'] as List<dynamic>?,
      totalDutiesSet: json['total_duties_set'] == null
          ? null
          : TotalDutiesSet.fromJson(
              json['total_duties_set'] as Map<String, dynamic>),
      refundReturn: json['return'],
      shipping: json['shipping'] == null
          ? null
          : Shipping.fromJson(json['shipping'] as Map<String, dynamic>),
      refundShippingLines: json['refund_shipping_lines'] as List<dynamic>?,
      refundLineItems: json['refund_line_items'] as List<dynamic>?,
      transactions: json['transactions'] as List<dynamic>?,
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$$RefundImplToJson(_$RefundImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('duties', instance.duties);
  writeNotNull('total_duties_set', instance.totalDutiesSet?.toJson());
  writeNotNull('return', instance.refundReturn);
  writeNotNull('shipping', instance.shipping?.toJson());
  writeNotNull('refund_shipping_lines', instance.refundShippingLines);
  writeNotNull('refund_line_items', instance.refundLineItems);
  writeNotNull('transactions', instance.transactions);
  writeNotNull('currency', instance.currency);
  return val;
}

_$ShippingImpl _$$ShippingImplFromJson(Map<String, dynamic> json) =>
    _$ShippingImpl(
      amount: json['amount'] as String?,
      tax: json['tax'] as String?,
      maximumRefundable: json['maximum_refundable'] as String?,
    );

Map<String, dynamic> _$$ShippingImplToJson(_$ShippingImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount);
  writeNotNull('tax', instance.tax);
  writeNotNull('maximum_refundable', instance.maximumRefundable);
  return val;
}

_$TotalDutiesSetImpl _$$TotalDutiesSetImplFromJson(Map<String, dynamic> json) =>
    _$TotalDutiesSetImpl(
      shopMoney: json['shop_money'] == null
          ? null
          : Money.fromJson(json['shop_money'] as Map<String, dynamic>),
      presentmentMoney: json['presentment_money'] == null
          ? null
          : Money.fromJson(json['presentment_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TotalDutiesSetImplToJson(
    _$TotalDutiesSetImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('shop_money', instance.shopMoney?.toJson());
  writeNotNull('presentment_money', instance.presentmentMoney?.toJson());
  return val;
}

_$MoneyImpl _$$MoneyImplFromJson(Map<String, dynamic> json) => _$MoneyImpl(
      amount: json['amount'] as String?,
      currencyCode: json['currency_code'] as String?,
    );

Map<String, dynamic> _$$MoneyImplToJson(_$MoneyImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount);
  writeNotNull('currency_code', instance.currencyCode);
  return val;
}
