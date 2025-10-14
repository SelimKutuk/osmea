// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_refund_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateRefundResponseImpl _$$CreateRefundResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateRefundResponseImpl(
      refund: json['refund'] == null
          ? null
          : Refund.fromJson(json['refund'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateRefundResponseImplToJson(
    _$CreateRefundResponseImpl instance) {
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
      id: (json['id'] as num?)?.toInt(),
      orderId: (json['order_id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      note: json['note'] as String?,
      userId: json['user_id'],
      processedAt: json['processed_at'] as String?,
      duties: json['duties'] as List<dynamic>?,
      totalDutiesSet: json['total_duties_set'] == null
          ? null
          : Set.fromJson(json['total_duties_set'] as Map<String, dynamic>),
      refundReturn: json['return'],
      restock: json['restock'] as bool?,
      refundShippingLines: json['refund_shipping_lines'] as List<dynamic>?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
      orderAdjustments: json['order_adjustments'] as List<dynamic>?,
      refundLineItems: (json['refund_line_items'] as List<dynamic>?)
          ?.map((e) => RefundLineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      transactions: json['transactions'] as List<dynamic>?,
    );

Map<String, dynamic> _$$RefundImplToJson(_$RefundImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('note', instance.note);
  writeNotNull('user_id', instance.userId);
  writeNotNull('processed_at', instance.processedAt);
  writeNotNull('duties', instance.duties);
  writeNotNull('total_duties_set', instance.totalDutiesSet?.toJson());
  writeNotNull('return', instance.refundReturn);
  writeNotNull('restock', instance.restock);
  writeNotNull('refund_shipping_lines', instance.refundShippingLines);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull('order_adjustments', instance.orderAdjustments);
  writeNotNull('refund_line_items',
      instance.refundLineItems?.map((e) => e.toJson()).toList());
  writeNotNull('transactions', instance.transactions);
  return val;
}

_$RefundLineItemImpl _$$RefundLineItemImplFromJson(Map<String, dynamic> json) =>
    _$RefundLineItemImpl(
      locationId: json['location_id'],
      restockType: json['restock_type'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      lineItemId: (json['line_item_id'] as num?)?.toInt(),
      subtotal: (json['subtotal'] as num?)?.toInt(),
      totalTax: (json['total_tax'] as num?)?.toInt(),
      subtotalSet: json['subtotal_set'] == null
          ? null
          : Set.fromJson(json['subtotal_set'] as Map<String, dynamic>),
      totalTaxSet: json['total_tax_set'] == null
          ? null
          : Set.fromJson(json['total_tax_set'] as Map<String, dynamic>),
      lineItem: json['line_item'] == null
          ? null
          : LineItem.fromJson(json['line_item'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RefundLineItemImplToJson(
    _$RefundLineItemImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('location_id', instance.locationId);
  writeNotNull('restock_type', instance.restockType);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('id', instance.id);
  writeNotNull('line_item_id', instance.lineItemId);
  writeNotNull('subtotal', instance.subtotal);
  writeNotNull('total_tax', instance.totalTax);
  writeNotNull('subtotal_set', instance.subtotalSet?.toJson());
  writeNotNull('total_tax_set', instance.totalTaxSet?.toJson());
  writeNotNull('line_item', instance.lineItem?.toJson());
  return val;
}

_$LineItemImpl _$$LineItemImplFromJson(Map<String, dynamic> json) =>
    _$LineItemImpl(
      id: (json['id'] as num?)?.toInt(),
      variantId: (json['variant_id'] as num?)?.toInt(),
      title: json['title'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      sku: json['sku'] as String?,
      variantTitle: json['variant_title'],
      vendor: json['vendor'] as String?,
      fulfillmentService: json['fulfillment_service'] as String?,
      productId: (json['product_id'] as num?)?.toInt(),
      requiresShipping: json['requires_shipping'] as bool?,
      taxable: json['taxable'] as bool?,
      giftCard: json['gift_card'] as bool?,
      name: json['name'] as String?,
      variantInventoryManagement:
          json['variant_inventory_management'] as String?,
      properties: json['properties'] as List<dynamic>?,
      productExists: json['product_exists'] as bool?,
      fulfillableQuantity: (json['fulfillable_quantity'] as num?)?.toInt(),
      grams: (json['grams'] as num?)?.toInt(),
      price: json['price'] as String?,
      totalDiscount: json['total_discount'] as String?,
      fulfillmentStatus: json['fulfillment_status'],
      priceSet: json['price_set'] == null
          ? null
          : Set.fromJson(json['price_set'] as Map<String, dynamic>),
      totalDiscountSet: json['total_discount_set'] == null
          ? null
          : Set.fromJson(json['total_discount_set'] as Map<String, dynamic>),
      discountAllocations: json['discount_allocations'] as List<dynamic>?,
      duties: json['duties'] as List<dynamic>?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
      taxLines: json['tax_lines'] as List<dynamic>?,
    );

Map<String, dynamic> _$$LineItemImplToJson(_$LineItemImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('variant_id', instance.variantId);
  writeNotNull('title', instance.title);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('sku', instance.sku);
  writeNotNull('variant_title', instance.variantTitle);
  writeNotNull('vendor', instance.vendor);
  writeNotNull('fulfillment_service', instance.fulfillmentService);
  writeNotNull('product_id', instance.productId);
  writeNotNull('requires_shipping', instance.requiresShipping);
  writeNotNull('taxable', instance.taxable);
  writeNotNull('gift_card', instance.giftCard);
  writeNotNull('name', instance.name);
  writeNotNull(
      'variant_inventory_management', instance.variantInventoryManagement);
  writeNotNull('properties', instance.properties);
  writeNotNull('product_exists', instance.productExists);
  writeNotNull('fulfillable_quantity', instance.fulfillableQuantity);
  writeNotNull('grams', instance.grams);
  writeNotNull('price', instance.price);
  writeNotNull('total_discount', instance.totalDiscount);
  writeNotNull('fulfillment_status', instance.fulfillmentStatus);
  writeNotNull('price_set', instance.priceSet?.toJson());
  writeNotNull('total_discount_set', instance.totalDiscountSet?.toJson());
  writeNotNull('discount_allocations', instance.discountAllocations);
  writeNotNull('duties', instance.duties);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull('tax_lines', instance.taxLines);
  return val;
}

_$SetImpl _$$SetImplFromJson(Map<String, dynamic> json) => _$SetImpl(
      shopMoney: json['shop_money'] == null
          ? null
          : Money.fromJson(json['shop_money'] as Map<String, dynamic>),
      presentmentMoney: json['presentment_money'] == null
          ? null
          : Money.fromJson(json['presentment_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SetImplToJson(_$SetImpl instance) {
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
