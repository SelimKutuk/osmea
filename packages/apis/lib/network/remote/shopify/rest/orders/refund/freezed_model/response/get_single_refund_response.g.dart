// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_single_refund_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetSingleRefundResponseImpl _$$GetSingleRefundResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetSingleRefundResponseImpl(
      refund: json['refund'] == null
          ? null
          : Refund.fromJson(json['refund'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetSingleRefundResponseImplToJson(
    _$GetSingleRefundResponseImpl instance) {
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
      userId: (json['user_id'] as num?)?.toInt(),
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
      transactions: (json['transactions'] as List<dynamic>?)
          ?.map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
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
  writeNotNull(
      'transactions', instance.transactions?.map((e) => e.toJson()).toList());
  return val;
}

_$RefundLineItemImpl _$$RefundLineItemImplFromJson(Map<String, dynamic> json) =>
    _$RefundLineItemImpl(
      id: (json['id'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      lineItemId: (json['line_item_id'] as num?)?.toInt(),
      locationId: (json['location_id'] as num?)?.toInt(),
      restockType: json['restock_type'] as String?,
      subtotal: (json['subtotal'] as num?)?.toDouble(),
      totalTax: (json['total_tax'] as num?)?.toDouble(),
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

  writeNotNull('id', instance.id);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('line_item_id', instance.lineItemId);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('restock_type', instance.restockType);
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
      taxLines: (json['tax_lines'] as List<dynamic>?)
          ?.map((e) => TaxLine.fromJson(e as Map<String, dynamic>))
          .toList(),
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
  writeNotNull('tax_lines', instance.taxLines?.map((e) => e.toJson()).toList());
  return val;
}

_$SetImpl _$$SetImplFromJson(Map<String, dynamic> json) => _$SetImpl(
      shopMoney: json['shop_money'] == null
          ? null
          : TotalDutiesSetPresentmentMoney.fromJson(
              json['shop_money'] as Map<String, dynamic>),
      presentmentMoney: json['presentment_money'] == null
          ? null
          : TotalDutiesSetPresentmentMoney.fromJson(
              json['presentment_money'] as Map<String, dynamic>),
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

_$TotalDutiesSetPresentmentMoneyImpl
    _$$TotalDutiesSetPresentmentMoneyImplFromJson(Map<String, dynamic> json) =>
        _$TotalDutiesSetPresentmentMoneyImpl(
          amount: json['amount'] as String?,
          currencyCode: json['currency_code'] as String?,
        );

Map<String, dynamic> _$$TotalDutiesSetPresentmentMoneyImplToJson(
    _$TotalDutiesSetPresentmentMoneyImpl instance) {
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

_$TaxLineImpl _$$TaxLineImplFromJson(Map<String, dynamic> json) =>
    _$TaxLineImpl(
      title: json['title'] as String?,
      price: json['price'] as String?,
      rate: (json['rate'] as num?)?.toDouble(),
      channelLiable: json['channel_liable'] as bool?,
      priceSet: json['price_set'] == null
          ? null
          : Set.fromJson(json['price_set'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TaxLineImplToJson(_$TaxLineImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('price', instance.price);
  writeNotNull('rate', instance.rate);
  writeNotNull('channel_liable', instance.channelLiable);
  writeNotNull('price_set', instance.priceSet?.toJson());
  return val;
}

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      id: (json['id'] as num?)?.toInt(),
      orderId: (json['order_id'] as num?)?.toInt(),
      kind: json['kind'] as String?,
      gateway: json['gateway'] as String?,
      status: json['status'] as String?,
      message: json['message'] as String?,
      createdAt: json['created_at'] as String?,
      test: json['test'] as bool?,
      authorization: json['authorization'],
      locationId: json['location_id'],
      userId: (json['user_id'] as num?)?.toInt(),
      parentId: (json['parent_id'] as num?)?.toInt(),
      processedAt: json['processed_at'] as String?,
      deviceId: json['device_id'],
      errorCode: json['error_code'],
      sourceName: json['source_name'] as String?,
      paymentDetails: json['payment_details'] == null
          ? null
          : PaymentDetails.fromJson(
              json['payment_details'] as Map<String, dynamic>),
      receipt: json['receipt'] == null
          ? null
          : Receipt.fromJson(json['receipt'] as Map<String, dynamic>),
      amount: json['amount'] as String?,
      currency: json['currency'] as String?,
      paymentId: json['payment_id'] as String?,
      totalUnsettledSet: json['total_unsettled_set'] == null
          ? null
          : TotalUnsettledSet.fromJson(
              json['total_unsettled_set'] as Map<String, dynamic>),
      manualPaymentGateway: json['manual_payment_gateway'] as bool?,
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('kind', instance.kind);
  writeNotNull('gateway', instance.gateway);
  writeNotNull('status', instance.status);
  writeNotNull('message', instance.message);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('test', instance.test);
  writeNotNull('authorization', instance.authorization);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('user_id', instance.userId);
  writeNotNull('parent_id', instance.parentId);
  writeNotNull('processed_at', instance.processedAt);
  writeNotNull('device_id', instance.deviceId);
  writeNotNull('error_code', instance.errorCode);
  writeNotNull('source_name', instance.sourceName);
  writeNotNull('payment_details', instance.paymentDetails?.toJson());
  writeNotNull('receipt', instance.receipt?.toJson());
  writeNotNull('amount', instance.amount);
  writeNotNull('currency', instance.currency);
  writeNotNull('payment_id', instance.paymentId);
  writeNotNull('total_unsettled_set', instance.totalUnsettledSet?.toJson());
  writeNotNull('manual_payment_gateway', instance.manualPaymentGateway);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  return val;
}

_$PaymentDetailsImpl _$$PaymentDetailsImplFromJson(Map<String, dynamic> json) =>
    _$PaymentDetailsImpl(
      creditCardBin: json['credit_card_bin'] as String?,
      avsResultCode: json['avs_result_code'],
      cvvResultCode: json['cvv_result_code'],
      creditCardNumber: json['credit_card_number'] as String?,
      creditCardCompany: json['credit_card_company'] as String?,
      buyerActionInfo: json['buyer_action_info'],
      creditCardName: json['credit_card_name'] as String?,
      creditCardWallet: json['credit_card_wallet'],
      creditCardExpirationMonth:
          (json['credit_card_expiration_month'] as num?)?.toInt(),
      creditCardExpirationYear:
          (json['credit_card_expiration_year'] as num?)?.toInt(),
      paymentMethodName: json['payment_method_name'] as String?,
    );

Map<String, dynamic> _$$PaymentDetailsImplToJson(
    _$PaymentDetailsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('credit_card_bin', instance.creditCardBin);
  writeNotNull('avs_result_code', instance.avsResultCode);
  writeNotNull('cvv_result_code', instance.cvvResultCode);
  writeNotNull('credit_card_number', instance.creditCardNumber);
  writeNotNull('credit_card_company', instance.creditCardCompany);
  writeNotNull('buyer_action_info', instance.buyerActionInfo);
  writeNotNull('credit_card_name', instance.creditCardName);
  writeNotNull('credit_card_wallet', instance.creditCardWallet);
  writeNotNull(
      'credit_card_expiration_month', instance.creditCardExpirationMonth);
  writeNotNull(
      'credit_card_expiration_year', instance.creditCardExpirationYear);
  writeNotNull('payment_method_name', instance.paymentMethodName);
  return val;
}

_$ReceiptImpl _$$ReceiptImplFromJson(Map<String, dynamic> json) =>
    _$ReceiptImpl(
      paidAmount: json['paid_amount'] as String?,
    );

Map<String, dynamic> _$$ReceiptImplToJson(_$ReceiptImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('paid_amount', instance.paidAmount);
  return val;
}

_$TotalUnsettledSetImpl _$$TotalUnsettledSetImplFromJson(
        Map<String, dynamic> json) =>
    _$TotalUnsettledSetImpl(
      presentmentMoney: json['presentment_money'] == null
          ? null
          : TotalUnsettledSetPresentmentMoney.fromJson(
              json['presentment_money'] as Map<String, dynamic>),
      shopMoney: json['shop_money'] == null
          ? null
          : TotalUnsettledSetPresentmentMoney.fromJson(
              json['shop_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TotalUnsettledSetImplToJson(
    _$TotalUnsettledSetImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('presentment_money', instance.presentmentMoney?.toJson());
  writeNotNull('shop_money', instance.shopMoney?.toJson());
  return val;
}

_$TotalUnsettledSetPresentmentMoneyImpl
    _$$TotalUnsettledSetPresentmentMoneyImplFromJson(
            Map<String, dynamic> json) =>
        _$TotalUnsettledSetPresentmentMoneyImpl(
          amount: json['amount'] as String?,
          currency: json['currency'] as String?,
        );

Map<String, dynamic> _$$TotalUnsettledSetPresentmentMoneyImplToJson(
    _$TotalUnsettledSetPresentmentMoneyImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount);
  writeNotNull('currency', instance.currency);
  return val;
}
