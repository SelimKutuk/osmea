// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_top_seller_report_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrieveTopSellerReportResponseImpl
    _$$RetrieveTopSellerReportResponseImplFromJson(Map<String, dynamic> json) =>
        _$RetrieveTopSellerReportResponseImpl(
          productId: (json['product_id'] as num?)?.toInt(),
          productName: json['product_name'] as String?,
          quantity: (json['quantity'] as num?)?.toInt(),
          total: json['total'] as String?,
          sku: json['sku'] as String?,
          category: json['category'] as String?,
        );

Map<String, dynamic> _$$RetrieveTopSellerReportResponseImplToJson(
    _$RetrieveTopSellerReportResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product_id', instance.productId);
  writeNotNull('product_name', instance.productName);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('total', instance.total);
  writeNotNull('sku', instance.sku);
  writeNotNull('category', instance.category);
  return val;
}
