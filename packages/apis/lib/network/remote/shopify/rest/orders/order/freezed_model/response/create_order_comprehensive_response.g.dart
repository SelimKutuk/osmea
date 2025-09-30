// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_comprehensive_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateOrderComprehensiveResponseImpl
    _$$CreateOrderComprehensiveResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateOrderComprehensiveResponseImpl(
          order: json['order'] == null
              ? null
              : Order.fromJson(json['order'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateOrderComprehensiveResponseImplToJson(
    _$CreateOrderComprehensiveResponseImpl instance) {
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
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
      appId: (json['app_id'] as num?)?.toInt(),
      browserIp: json['browser_ip'],
      buyerAcceptsMarketing: json['buyer_accepts_marketing'] as bool?,
      cancelReason: json['cancel_reason'],
      cancelledAt: json['cancelled_at'],
      cartToken: json['cart_token'],
      checkoutId: json['checkout_id'],
      checkoutToken: json['checkout_token'],
      clientDetails: json['client_details'],
      closedAt: json['closed_at'],
      confirmationNumber: json['confirmation_number'] as String?,
      confirmed: json['confirmed'] as bool?,
      createdAt: json['created_at'] as String?,
      currency: json['currency'] as String?,
      currentSubtotalPrice: json['current_subtotal_price'] as String?,
      currentSubtotalPriceSet: json['current_subtotal_price_set'] == null
          ? null
          : Set.fromJson(
              json['current_subtotal_price_set'] as Map<String, dynamic>),
      currentTotalAdditionalFeesSet: json['current_total_additional_fees_set'],
      currentTotalDiscounts: json['current_total_discounts'] as String?,
      currentTotalDiscountsSet: json['current_total_discounts_set'] == null
          ? null
          : Set.fromJson(
              json['current_total_discounts_set'] as Map<String, dynamic>),
      currentTotalDutiesSet: json['current_total_duties_set'],
      currentTotalPrice: json['current_total_price'] as String?,
      currentTotalPriceSet: json['current_total_price_set'] == null
          ? null
          : Set.fromJson(
              json['current_total_price_set'] as Map<String, dynamic>),
      currentTotalTax: json['current_total_tax'] as String?,
      currentTotalTaxSet: json['current_total_tax_set'] == null
          ? null
          : Set.fromJson(json['current_total_tax_set'] as Map<String, dynamic>),
      customerLocale: json['customer_locale'],
      deviceId: json['device_id'],
      discountCodes: json['discount_codes'] as List<dynamic>?,
      estimatedTaxes: json['estimated_taxes'] as bool?,
      financialStatus: json['financial_status'] as String?,
      fulfillmentStatus: json['fulfillment_status'],
      landingSite: json['landing_site'],
      landingSiteRef: json['landing_site_ref'],
      locationId: json['location_id'],
      merchantOfRecordAppId: json['merchant_of_record_app_id'],
      name: json['name'] as String?,
      note: json['note'],
      noteAttributes: json['note_attributes'] as List<dynamic>?,
      number: (json['number'] as num?)?.toInt(),
      orderNumber: (json['order_number'] as num?)?.toInt(),
      originalTotalAdditionalFeesSet:
          json['original_total_additional_fees_set'],
      originalTotalDutiesSet: json['original_total_duties_set'],
      paymentGatewayNames: (json['payment_gateway_names'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      poNumber: json['po_number'],
      presentmentCurrency: json['presentment_currency'] as String?,
      processedAt: json['processed_at'] as String?,
      reference: json['reference'],
      referringSite: json['referring_site'],
      sourceIdentifier: json['source_identifier'],
      sourceName: json['source_name'] as String?,
      sourceUrl: json['source_url'],
      subtotalPrice: json['subtotal_price'] as String?,
      subtotalPriceSet: json['subtotal_price_set'] == null
          ? null
          : Set.fromJson(json['subtotal_price_set'] as Map<String, dynamic>),
      tags: json['tags'] as String?,
      taxExempt: json['tax_exempt'] as bool?,
      taxLines: (json['tax_lines'] as List<dynamic>?)
          ?.map((e) => TaxLine.fromJson(e as Map<String, dynamic>))
          .toList(),
      taxesIncluded: json['taxes_included'] as bool?,
      test: json['test'] as bool?,
      token: json['token'] as String?,
      totalDiscounts: json['total_discounts'] as String?,
      totalDiscountsSet: json['total_discounts_set'] == null
          ? null
          : Set.fromJson(json['total_discounts_set'] as Map<String, dynamic>),
      totalLineItemsPrice: json['total_line_items_price'] as String?,
      totalLineItemsPriceSet: json['total_line_items_price_set'] == null
          ? null
          : Set.fromJson(
              json['total_line_items_price_set'] as Map<String, dynamic>),
      totalOutstanding: json['total_outstanding'] as String?,
      totalPrice: json['total_price'] as String?,
      totalPriceSet: json['total_price_set'] == null
          ? null
          : Set.fromJson(json['total_price_set'] as Map<String, dynamic>),
      totalShippingPriceSet: json['total_shipping_price_set'] == null
          ? null
          : Set.fromJson(
              json['total_shipping_price_set'] as Map<String, dynamic>),
      totalTax: json['total_tax'] as String?,
      totalTaxSet: json['total_tax_set'] == null
          ? null
          : Set.fromJson(json['total_tax_set'] as Map<String, dynamic>),
      totalTipReceived: json['total_tip_received'] as String?,
      totalWeight: (json['total_weight'] as num?)?.toInt(),
      updatedAt: json['updated_at'] as String?,
      userId: json['user_id'],
      billingAddress: json['billing_address'],
      customer: json['customer'],
      discountApplications: json['discount_applications'] as List<dynamic>?,
      fulfillments: json['fulfillments'] as List<dynamic>?,
      lineItems: (json['line_items'] as List<dynamic>?)
          ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentTerms: json['payment_terms'],
      refunds: json['refunds'] as List<dynamic>?,
      shippingAddress: json['shipping_address'],
      shippingLines: json['shipping_lines'] as List<dynamic>?,
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull('app_id', instance.appId);
  writeNotNull('browser_ip', instance.browserIp);
  writeNotNull('buyer_accepts_marketing', instance.buyerAcceptsMarketing);
  writeNotNull('cancel_reason', instance.cancelReason);
  writeNotNull('cancelled_at', instance.cancelledAt);
  writeNotNull('cart_token', instance.cartToken);
  writeNotNull('checkout_id', instance.checkoutId);
  writeNotNull('checkout_token', instance.checkoutToken);
  writeNotNull('client_details', instance.clientDetails);
  writeNotNull('closed_at', instance.closedAt);
  writeNotNull('confirmation_number', instance.confirmationNumber);
  writeNotNull('confirmed', instance.confirmed);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('currency', instance.currency);
  writeNotNull('current_subtotal_price', instance.currentSubtotalPrice);
  writeNotNull(
      'current_subtotal_price_set', instance.currentSubtotalPriceSet?.toJson());
  writeNotNull('current_total_additional_fees_set',
      instance.currentTotalAdditionalFeesSet);
  writeNotNull('current_total_discounts', instance.currentTotalDiscounts);
  writeNotNull('current_total_discounts_set',
      instance.currentTotalDiscountsSet?.toJson());
  writeNotNull('current_total_duties_set', instance.currentTotalDutiesSet);
  writeNotNull('current_total_price', instance.currentTotalPrice);
  writeNotNull(
      'current_total_price_set', instance.currentTotalPriceSet?.toJson());
  writeNotNull('current_total_tax', instance.currentTotalTax);
  writeNotNull('current_total_tax_set', instance.currentTotalTaxSet?.toJson());
  writeNotNull('customer_locale', instance.customerLocale);
  writeNotNull('device_id', instance.deviceId);
  writeNotNull('discount_codes', instance.discountCodes);
  writeNotNull('estimated_taxes', instance.estimatedTaxes);
  writeNotNull('financial_status', instance.financialStatus);
  writeNotNull('fulfillment_status', instance.fulfillmentStatus);
  writeNotNull('landing_site', instance.landingSite);
  writeNotNull('landing_site_ref', instance.landingSiteRef);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('merchant_of_record_app_id', instance.merchantOfRecordAppId);
  writeNotNull('name', instance.name);
  writeNotNull('note', instance.note);
  writeNotNull('note_attributes', instance.noteAttributes);
  writeNotNull('number', instance.number);
  writeNotNull('order_number', instance.orderNumber);
  writeNotNull('original_total_additional_fees_set',
      instance.originalTotalAdditionalFeesSet);
  writeNotNull('original_total_duties_set', instance.originalTotalDutiesSet);
  writeNotNull('payment_gateway_names', instance.paymentGatewayNames);
  writeNotNull('po_number', instance.poNumber);
  writeNotNull('presentment_currency', instance.presentmentCurrency);
  writeNotNull('processed_at', instance.processedAt);
  writeNotNull('reference', instance.reference);
  writeNotNull('referring_site', instance.referringSite);
  writeNotNull('source_identifier', instance.sourceIdentifier);
  writeNotNull('source_name', instance.sourceName);
  writeNotNull('source_url', instance.sourceUrl);
  writeNotNull('subtotal_price', instance.subtotalPrice);
  writeNotNull('subtotal_price_set', instance.subtotalPriceSet?.toJson());
  writeNotNull('tags', instance.tags);
  writeNotNull('tax_exempt', instance.taxExempt);
  writeNotNull('tax_lines', instance.taxLines?.map((e) => e.toJson()).toList());
  writeNotNull('taxes_included', instance.taxesIncluded);
  writeNotNull('test', instance.test);
  writeNotNull('token', instance.token);
  writeNotNull('total_discounts', instance.totalDiscounts);
  writeNotNull('total_discounts_set', instance.totalDiscountsSet?.toJson());
  writeNotNull('total_line_items_price', instance.totalLineItemsPrice);
  writeNotNull(
      'total_line_items_price_set', instance.totalLineItemsPriceSet?.toJson());
  writeNotNull('total_outstanding', instance.totalOutstanding);
  writeNotNull('total_price', instance.totalPrice);
  writeNotNull('total_price_set', instance.totalPriceSet?.toJson());
  writeNotNull(
      'total_shipping_price_set', instance.totalShippingPriceSet?.toJson());
  writeNotNull('total_tax', instance.totalTax);
  writeNotNull('total_tax_set', instance.totalTaxSet?.toJson());
  writeNotNull('total_tip_received', instance.totalTipReceived);
  writeNotNull('total_weight', instance.totalWeight);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('user_id', instance.userId);
  writeNotNull('billing_address', instance.billingAddress);
  writeNotNull('customer', instance.customer);
  writeNotNull('discount_applications', instance.discountApplications);
  writeNotNull('fulfillments', instance.fulfillments);
  writeNotNull(
      'line_items', instance.lineItems?.map((e) => e.toJson()).toList());
  writeNotNull('payment_terms', instance.paymentTerms);
  writeNotNull('refunds', instance.refunds);
  writeNotNull('shipping_address', instance.shippingAddress);
  writeNotNull('shipping_lines', instance.shippingLines);
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

_$LineItemImpl _$$LineItemImplFromJson(Map<String, dynamic> json) =>
    _$LineItemImpl(
      id: (json['id'] as num?)?.toInt(),
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
      attributedStaffs: json['attributed_staffs'] as List<dynamic>?,
      currentQuantity: (json['current_quantity'] as num?)?.toInt(),
      fulfillableQuantity: (json['fulfillable_quantity'] as num?)?.toInt(),
      fulfillmentService: json['fulfillment_service'] as String?,
      fulfillmentStatus: json['fulfillment_status'],
      giftCard: json['gift_card'] as bool?,
      grams: (json['grams'] as num?)?.toInt(),
      name: json['name'] as String?,
      price: json['price'] as String?,
      priceSet: json['price_set'] == null
          ? null
          : Set.fromJson(json['price_set'] as Map<String, dynamic>),
      productExists: json['product_exists'] as bool?,
      productId: json['product_id'],
      properties: json['properties'] as List<dynamic>?,
      quantity: (json['quantity'] as num?)?.toInt(),
      requiresShipping: json['requires_shipping'] as bool?,
      sku: json['sku'],
      taxable: json['taxable'] as bool?,
      title: json['title'] as String?,
      totalDiscount: json['total_discount'] as String?,
      totalDiscountSet: json['total_discount_set'] == null
          ? null
          : Set.fromJson(json['total_discount_set'] as Map<String, dynamic>),
      variantId: json['variant_id'],
      variantInventoryManagement: json['variant_inventory_management'],
      variantTitle: json['variant_title'],
      vendor: json['vendor'],
      taxLines: (json['tax_lines'] as List<dynamic>?)
          ?.map((e) => TaxLine.fromJson(e as Map<String, dynamic>))
          .toList(),
      duties: json['duties'] as List<dynamic>?,
      discountAllocations: json['discount_allocations'] as List<dynamic>?,
    );

Map<String, dynamic> _$$LineItemImplToJson(_$LineItemImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull('attributed_staffs', instance.attributedStaffs);
  writeNotNull('current_quantity', instance.currentQuantity);
  writeNotNull('fulfillable_quantity', instance.fulfillableQuantity);
  writeNotNull('fulfillment_service', instance.fulfillmentService);
  writeNotNull('fulfillment_status', instance.fulfillmentStatus);
  writeNotNull('gift_card', instance.giftCard);
  writeNotNull('grams', instance.grams);
  writeNotNull('name', instance.name);
  writeNotNull('price', instance.price);
  writeNotNull('price_set', instance.priceSet?.toJson());
  writeNotNull('product_exists', instance.productExists);
  writeNotNull('product_id', instance.productId);
  writeNotNull('properties', instance.properties);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('requires_shipping', instance.requiresShipping);
  writeNotNull('sku', instance.sku);
  writeNotNull('taxable', instance.taxable);
  writeNotNull('title', instance.title);
  writeNotNull('total_discount', instance.totalDiscount);
  writeNotNull('total_discount_set', instance.totalDiscountSet?.toJson());
  writeNotNull('variant_id', instance.variantId);
  writeNotNull(
      'variant_inventory_management', instance.variantInventoryManagement);
  writeNotNull('variant_title', instance.variantTitle);
  writeNotNull('vendor', instance.vendor);
  writeNotNull('tax_lines', instance.taxLines?.map((e) => e.toJson()).toList());
  writeNotNull('duties', instance.duties);
  writeNotNull('discount_allocations', instance.discountAllocations);
  return val;
}

_$TaxLineImpl _$$TaxLineImplFromJson(Map<String, dynamic> json) =>
    _$TaxLineImpl(
      price: json['price'] as String?,
      rate: (json['rate'] as num?)?.toDouble(),
      title: json['title'] as String?,
      priceSet: json['price_set'] == null
          ? null
          : Set.fromJson(json['price_set'] as Map<String, dynamic>),
      channelLiable: json['channel_liable'] as bool?,
    );

Map<String, dynamic> _$$TaxLineImplToJson(_$TaxLineImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('price', instance.price);
  writeNotNull('rate', instance.rate);
  writeNotNull('title', instance.title);
  writeNotNull('price_set', instance.priceSet?.toJson());
  writeNotNull('channel_liable', instance.channelLiable);
  return val;
}
