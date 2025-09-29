// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_report_sale_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrieveReportSaleResponseImpl _$$RetrieveReportSaleResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RetrieveReportSaleResponseImpl(
      totalSales: json['total_sales'] as String?,
      netSales: json['net_sales'] as String?,
      averageSales: json['average_sales'] as String?,
      totalOrders: (json['total_orders'] as num?)?.toInt(),
      totalItems: (json['total_items'] as num?)?.toInt(),
      totalTax: json['total_tax'] as String?,
      totalShipping: json['total_shipping'] as String?,
      totalRefunds: (json['total_refunds'] as num?)?.toInt(),
      totalDiscount: json['total_discount'] as String?,
      totalsGroupedBy: json['totals_grouped_by'] as String?,
      totals: json['totals'] == null
          ? null
          : Totals.fromJson(json['totals'] as Map<String, dynamic>),
      totalCustomers: (json['total_customers'] as num?)?.toInt(),
      links: json['_links'] == null
          ? null
          : Links.fromJson(json['_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RetrieveReportSaleResponseImplToJson(
    _$RetrieveReportSaleResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('total_sales', instance.totalSales);
  writeNotNull('net_sales', instance.netSales);
  writeNotNull('average_sales', instance.averageSales);
  writeNotNull('total_orders', instance.totalOrders);
  writeNotNull('total_items', instance.totalItems);
  writeNotNull('total_tax', instance.totalTax);
  writeNotNull('total_shipping', instance.totalShipping);
  writeNotNull('total_refunds', instance.totalRefunds);
  writeNotNull('total_discount', instance.totalDiscount);
  writeNotNull('totals_grouped_by', instance.totalsGroupedBy);
  writeNotNull('totals', instance.totals?.toJson());
  writeNotNull('total_customers', instance.totalCustomers);
  writeNotNull('_links', instance.links?.toJson());
  return val;
}

_$LinksImpl _$$LinksImplFromJson(Map<String, dynamic> json) => _$LinksImpl(
      about: (json['about'] as List<dynamic>?)
          ?.map((e) => About.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LinksImplToJson(_$LinksImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('about', instance.about?.map((e) => e.toJson()).toList());
  return val;
}

_$AboutImpl _$$AboutImplFromJson(Map<String, dynamic> json) => _$AboutImpl(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$$AboutImplToJson(_$AboutImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}

_$TotalsImpl _$$TotalsImplFromJson(Map<String, dynamic> json) => _$TotalsImpl(
      the20250727: json['2025-07-27'] == null
          ? null
          : The20250727.fromJson(json['2025-07-27'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TotalsImplToJson(_$TotalsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('2025-07-27', instance.the20250727?.toJson());
  return val;
}

_$The20250727Impl _$$The20250727ImplFromJson(Map<String, dynamic> json) =>
    _$The20250727Impl(
      sales: json['sales'] as String?,
      orders: (json['orders'] as num?)?.toInt(),
      items: (json['items'] as num?)?.toInt(),
      tax: json['tax'] as String?,
      shipping: json['shipping'] as String?,
      discount: json['discount'] as String?,
      customers: (json['customers'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$The20250727ImplToJson(_$The20250727Impl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sales', instance.sales);
  writeNotNull('orders', instance.orders);
  writeNotNull('items', instance.items);
  writeNotNull('tax', instance.tax);
  writeNotNull('shipping', instance.shipping);
  writeNotNull('discount', instance.discount);
  writeNotNull('customers', instance.customers);
  return val;
}
