// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_order_totals_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrieveOrderTotalsResponseImpl _$$RetrieveOrderTotalsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RetrieveOrderTotalsResponseImpl(
      slug: json['slug'] as String?,
      name: json['name'] as String?,
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RetrieveOrderTotalsResponseImplToJson(
    _$RetrieveOrderTotalsResponseImpl instance) {
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
