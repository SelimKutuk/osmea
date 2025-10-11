// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieves_all_orders_belonging_to_customer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrievesAllOrdersBelongingToCustomerResponseImpl
    _$$RetrievesAllOrdersBelongingToCustomerResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$RetrievesAllOrdersBelongingToCustomerResponseImpl(
          orders: json['orders'] as List<dynamic>?,
        );

Map<String, dynamic> _$$RetrievesAllOrdersBelongingToCustomerResponseImplToJson(
    _$RetrievesAllOrdersBelongingToCustomerResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('orders', instance.orders);
  return val;
}
