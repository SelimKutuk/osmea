// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_coupon_totals_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrieveCouponTotalsResponseImpl _$$RetrieveCouponTotalsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RetrieveCouponTotalsResponseImpl(
      slug: json['slug'] as String?,
      name: json['name'] as String?,
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RetrieveCouponTotalsResponseImplToJson(
    _$RetrieveCouponTotalsResponseImpl instance) {
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
