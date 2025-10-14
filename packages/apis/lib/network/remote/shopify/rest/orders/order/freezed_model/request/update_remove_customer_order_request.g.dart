// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_remove_customer_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateRemoveCustomerOrderRequestImpl
    _$$UpdateRemoveCustomerOrderRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$UpdateRemoveCustomerOrderRequestImpl(
          order: json['order'] == null
              ? null
              : Order.fromJson(json['order'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$UpdateRemoveCustomerOrderRequestImplToJson(
    _$UpdateRemoveCustomerOrderRequestImpl instance) {
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
      customer: json['customer'],
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('customer', instance.customer);
  return val;
}
