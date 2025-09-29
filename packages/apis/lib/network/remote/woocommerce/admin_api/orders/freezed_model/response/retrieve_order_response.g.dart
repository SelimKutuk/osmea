// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrieveOrderResponseImpl _$$RetrieveOrderResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RetrieveOrderResponseImpl(
      id: const StringToIntConverter().fromJson(json['id']),
      parentId: const StringToIntConverter().fromJson(json['parent_id']),
      status: json['status'] as String?,
      currency: json['currency'] as String?,
      version: json['version'] as String?,
      pricesIncludeTax: json['prices_include_tax'] as bool?,
      dateCreated: json['date_created'] as String?,
      dateModified: json['date_modified'] as String?,
      discountTotal: json['discount_total'] as String?,
      discountTax: json['discount_tax'] as String?,
      shippingTotal: json['shipping_total'] as String?,
      shippingTax: json['shipping_tax'] as String?,
      cartTax: json['cart_tax'] as String?,
      total: json['total'] as String?,
      totalTax: json['total_tax'] as String?,
      customerId: const StringToIntConverter().fromJson(json['customer_id']),
      orderKey: json['order_key'] as String?,
      billing: json['billing'] == null
          ? null
          : Billing.fromJson(json['billing'] as Map<String, dynamic>),
      shipping: json['shipping'] == null
          ? null
          : Shipping.fromJson(json['shipping'] as Map<String, dynamic>),
      paymentMethod: json['payment_method'] as String?,
      paymentMethodTitle: json['payment_method_title'] as String?,
      transactionId: json['transaction_id'] as String?,
      customerIpAddress: json['customer_ip_address'] as String?,
      customerUserAgent: json['customer_user_agent'] as String?,
      createdVia: json['created_via'] as String?,
      customerNote: json['customer_note'] as String?,
      dateCompleted: json['date_completed'],
      datePaid: json['date_paid'],
      cartHash: json['cart_hash'] as String?,
      number: json['number'] as String?,
      metaData: json['meta_data'] as List<dynamic>?,
      lineItems: (json['line_items'] as List<dynamic>?)
          ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      taxLines: json['tax_lines'] as List<dynamic>?,
      shippingLines: (json['shipping_lines'] as List<dynamic>?)
          ?.map((e) => ShippingLine.fromJson(e as Map<String, dynamic>))
          .toList(),
      feeLines: json['fee_lines'] as List<dynamic>?,
      couponLines: json['coupon_lines'] as List<dynamic>?,
      refunds: json['refunds'] as List<dynamic>?,
      paymentUrl: json['payment_url'] as String?,
      isEditable: json['is_editable'] as bool?,
      needsPayment: json['needs_payment'] as bool?,
      needsProcessing: json['needs_processing'] as bool?,
      dateCreatedGmt: json['date_created_gmt'] as String?,
      dateModifiedGmt: json['date_modified_gmt'] as String?,
      dateCompletedGmt: json['date_completed_gmt'],
      datePaidGmt: json['date_paid_gmt'],
      currencySymbol: json['currency_symbol'] as String?,
      links: json['_links'] == null
          ? null
          : Links.fromJson(json['_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RetrieveOrderResponseImplToJson(
    _$RetrieveOrderResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', const StringToIntConverter().toJson(instance.id));
  writeNotNull(
      'parent_id', const StringToIntConverter().toJson(instance.parentId));
  writeNotNull('status', instance.status);
  writeNotNull('currency', instance.currency);
  writeNotNull('version', instance.version);
  writeNotNull('prices_include_tax', instance.pricesIncludeTax);
  writeNotNull('date_created', instance.dateCreated);
  writeNotNull('date_modified', instance.dateModified);
  writeNotNull('discount_total', instance.discountTotal);
  writeNotNull('discount_tax', instance.discountTax);
  writeNotNull('shipping_total', instance.shippingTotal);
  writeNotNull('shipping_tax', instance.shippingTax);
  writeNotNull('cart_tax', instance.cartTax);
  writeNotNull('total', instance.total);
  writeNotNull('total_tax', instance.totalTax);
  writeNotNull(
      'customer_id', const StringToIntConverter().toJson(instance.customerId));
  writeNotNull('order_key', instance.orderKey);
  writeNotNull('billing', instance.billing?.toJson());
  writeNotNull('shipping', instance.shipping?.toJson());
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull('payment_method_title', instance.paymentMethodTitle);
  writeNotNull('transaction_id', instance.transactionId);
  writeNotNull('customer_ip_address', instance.customerIpAddress);
  writeNotNull('customer_user_agent', instance.customerUserAgent);
  writeNotNull('created_via', instance.createdVia);
  writeNotNull('customer_note', instance.customerNote);
  writeNotNull('date_completed', instance.dateCompleted);
  writeNotNull('date_paid', instance.datePaid);
  writeNotNull('cart_hash', instance.cartHash);
  writeNotNull('number', instance.number);
  writeNotNull('meta_data', instance.metaData);
  writeNotNull(
      'line_items', instance.lineItems?.map((e) => e.toJson()).toList());
  writeNotNull('tax_lines', instance.taxLines);
  writeNotNull('shipping_lines',
      instance.shippingLines?.map((e) => e.toJson()).toList());
  writeNotNull('fee_lines', instance.feeLines);
  writeNotNull('coupon_lines', instance.couponLines);
  writeNotNull('refunds', instance.refunds);
  writeNotNull('payment_url', instance.paymentUrl);
  writeNotNull('is_editable', instance.isEditable);
  writeNotNull('needs_payment', instance.needsPayment);
  writeNotNull('needs_processing', instance.needsProcessing);
  writeNotNull('date_created_gmt', instance.dateCreatedGmt);
  writeNotNull('date_modified_gmt', instance.dateModifiedGmt);
  writeNotNull('date_completed_gmt', instance.dateCompletedGmt);
  writeNotNull('date_paid_gmt', instance.datePaidGmt);
  writeNotNull('currency_symbol', instance.currencySymbol);
  writeNotNull('_links', instance.links?.toJson());
  return val;
}

_$BillingImpl _$$BillingImplFromJson(Map<String, dynamic> json) =>
    _$BillingImpl(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      company: json['company'] as String?,
      address1: json['address_1'] as String?,
      address2: json['address_2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      postcode: json['postcode'] as String?,
      country: json['country'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$BillingImplToJson(_$BillingImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('company', instance.company);
  writeNotNull('address_1', instance.address1);
  writeNotNull('address_2', instance.address2);
  writeNotNull('city', instance.city);
  writeNotNull('state', instance.state);
  writeNotNull('postcode', instance.postcode);
  writeNotNull('country', instance.country);
  writeNotNull('email', instance.email);
  writeNotNull('phone', instance.phone);
  return val;
}

_$LineItemImpl _$$LineItemImplFromJson(Map<String, dynamic> json) =>
    _$LineItemImpl(
      id: const StringToIntConverter().fromJson(json['id']),
      name: json['name'] as String?,
      productId: const StringToIntConverter().fromJson(json['product_id']),
      variationId: const StringToIntConverter().fromJson(json['variation_id']),
      quantity: const StringToIntConverter().fromJson(json['quantity']),
      taxClass: json['tax_class'] as String?,
      subtotal: json['subtotal'] as String?,
      subtotalTax: json['subtotal_tax'] as String?,
      total: json['total'] as String?,
      totalTax: json['total_tax'] as String?,
      taxes: json['taxes'] as List<dynamic>?,
      metaData: (json['meta_data'] as List<dynamic>?)
          ?.map((e) => MetaDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      sku: json['sku'],
      price: const StringToIntConverter().fromJson(json['price']),
      image: json['image'] == null
          ? null
          : Image.fromJson(json['image'] as Map<String, dynamic>),
      parentName: json['parent_name'],
    );

Map<String, dynamic> _$$LineItemImplToJson(_$LineItemImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', const StringToIntConverter().toJson(instance.id));
  writeNotNull('name', instance.name);
  writeNotNull(
      'product_id', const StringToIntConverter().toJson(instance.productId));
  writeNotNull('variation_id',
      const StringToIntConverter().toJson(instance.variationId));
  writeNotNull(
      'quantity', const StringToIntConverter().toJson(instance.quantity));
  writeNotNull('tax_class', instance.taxClass);
  writeNotNull('subtotal', instance.subtotal);
  writeNotNull('subtotal_tax', instance.subtotalTax);
  writeNotNull('total', instance.total);
  writeNotNull('total_tax', instance.totalTax);
  writeNotNull('taxes', instance.taxes);
  writeNotNull('meta_data', instance.metaData?.map((e) => e.toJson()).toList());
  writeNotNull('sku', instance.sku);
  writeNotNull('price', const StringToIntConverter().toJson(instance.price));
  writeNotNull('image', instance.image?.toJson());
  writeNotNull('parent_name', instance.parentName);
  return val;
}

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      id: const StringToIntConverter().fromJson(json['id']),
      src: json['src'] as String?,
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', const StringToIntConverter().toJson(instance.id));
  writeNotNull('src', instance.src);
  return val;
}

_$MetaDatumImpl _$$MetaDatumImplFromJson(Map<String, dynamic> json) =>
    _$MetaDatumImpl(
      id: (json['id'] as num?)?.toInt(),
      key: json['key'] as String?,
      value: json['value'] as String?,
      displayKey: json['display_key'] as String?,
      displayValue: json['display_value'] as String?,
    );

Map<String, dynamic> _$$MetaDatumImplToJson(_$MetaDatumImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('key', instance.key);
  writeNotNull('value', instance.value);
  writeNotNull('display_key', instance.displayKey);
  writeNotNull('display_value', instance.displayValue);
  return val;
}

_$LinksImpl _$$LinksImplFromJson(Map<String, dynamic> json) => _$LinksImpl(
      self: (json['self'] as List<dynamic>?)
          ?.map((e) => Self.fromJson(e as Map<String, dynamic>))
          .toList(),
      collection: (json['collection'] as List<dynamic>?)
          ?.map((e) => Collection.fromJson(e as Map<String, dynamic>))
          .toList(),
      emailTemplates: (json['email_templates'] as List<dynamic>?)
          ?.map((e) => EmailTemplate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LinksImplToJson(_$LinksImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('self', instance.self?.map((e) => e.toJson()).toList());
  writeNotNull(
      'collection', instance.collection?.map((e) => e.toJson()).toList());
  writeNotNull('email_templates',
      instance.emailTemplates?.map((e) => e.toJson()).toList());
  return val;
}

_$CollectionImpl _$$CollectionImplFromJson(Map<String, dynamic> json) =>
    _$CollectionImpl(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$$CollectionImplToJson(_$CollectionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}

_$EmailTemplateImpl _$$EmailTemplateImplFromJson(Map<String, dynamic> json) =>
    _$EmailTemplateImpl(
      embeddable: json['embeddable'] as bool?,
      href: json['href'] as String?,
    );

Map<String, dynamic> _$$EmailTemplateImplToJson(_$EmailTemplateImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('embeddable', instance.embeddable);
  writeNotNull('href', instance.href);
  return val;
}

_$SelfImpl _$$SelfImplFromJson(Map<String, dynamic> json) => _$SelfImpl(
      href: json['href'] as String?,
      targetHints: json['targetHints'] == null
          ? null
          : TargetHints.fromJson(json['targetHints'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SelfImplToJson(_$SelfImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  writeNotNull('targetHints', instance.targetHints?.toJson());
  return val;
}

_$TargetHintsImpl _$$TargetHintsImplFromJson(Map<String, dynamic> json) =>
    _$TargetHintsImpl(
      allow:
          (json['allow'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$TargetHintsImplToJson(_$TargetHintsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('allow', instance.allow);
  return val;
}

_$ShippingImpl _$$ShippingImplFromJson(Map<String, dynamic> json) =>
    _$ShippingImpl(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      company: json['company'] as String?,
      address1: json['address_1'] as String?,
      address2: json['address_2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      postcode: json['postcode'] as String?,
      country: json['country'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$ShippingImplToJson(_$ShippingImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('company', instance.company);
  writeNotNull('address_1', instance.address1);
  writeNotNull('address_2', instance.address2);
  writeNotNull('city', instance.city);
  writeNotNull('state', instance.state);
  writeNotNull('postcode', instance.postcode);
  writeNotNull('country', instance.country);
  writeNotNull('phone', instance.phone);
  return val;
}

_$ShippingLineImpl _$$ShippingLineImplFromJson(Map<String, dynamic> json) =>
    _$ShippingLineImpl(
      id: (json['id'] as num?)?.toInt(),
      methodTitle: json['method_title'] as String?,
      methodId: json['method_id'] as String?,
      instanceId: json['instance_id'] as String?,
      total: json['total'] as String?,
      totalTax: json['total_tax'] as String?,
      taxes: json['taxes'] as List<dynamic>?,
      taxStatus: json['tax_status'] as String?,
      metaData: json['meta_data'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ShippingLineImplToJson(_$ShippingLineImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('method_title', instance.methodTitle);
  writeNotNull('method_id', instance.methodId);
  writeNotNull('instance_id', instance.instanceId);
  writeNotNull('total', instance.total);
  writeNotNull('total_tax', instance.totalTax);
  writeNotNull('taxes', instance.taxes);
  writeNotNull('tax_status', instance.taxStatus);
  writeNotNull('meta_data', instance.metaData);
  return val;
}
