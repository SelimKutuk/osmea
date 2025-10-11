// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_customer_totals_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrieveCustomerTotalsResponseImpl
    _$$RetrieveCustomerTotalsResponseImplFromJson(Map<String, dynamic> json) =>
        _$RetrieveCustomerTotalsResponseImpl(
          slug: json['slug'] as String?,
          name: json['name'] as String?,
          total: (json['total'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$RetrieveCustomerTotalsResponseImplToJson(
    _$RetrieveCustomerTotalsResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('slug', instance.slug);
  writeNotNull('name', instance.name);
  writeNotNull('total', instance.total);
  return val;
}
