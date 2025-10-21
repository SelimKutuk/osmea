// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_orders_with_properties_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetOrdersWithPropertiesResponseImpl
    _$$GetOrdersWithPropertiesResponseImplFromJson(Map<String, dynamic> json) =>
        _$GetOrdersWithPropertiesResponseImpl(
          orders: (json['orders'] as List<dynamic>?)
              ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$GetOrdersWithPropertiesResponseImplToJson(
    _$GetOrdersWithPropertiesResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('orders', instance.orders?.map((e) => e.toJson()).toList());
  return val;
}

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      id: (json['id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      totalPrice: json['total_price'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('total_price', instance.totalPrice);
  writeNotNull('name', instance.name);
  return val;
}
