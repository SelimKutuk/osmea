// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_set_discount_on_draft_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateSetDiscountOnDraftOrderRequestImpl
    _$$UpdateSetDiscountOnDraftOrderRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$UpdateSetDiscountOnDraftOrderRequestImpl(
          draftOrder: json['draft_order'] == null
              ? null
              : DraftOrder.fromJson(
                  json['draft_order'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$UpdateSetDiscountOnDraftOrderRequestImplToJson(
    _$UpdateSetDiscountOnDraftOrderRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('draft_order', instance.draftOrder?.toJson());
  return val;
}

_$DraftOrderImpl _$$DraftOrderImplFromJson(Map<String, dynamic> json) =>
    _$DraftOrderImpl(
      appliedDiscount: json['applied_discount'] == null
          ? null
          : AppliedDiscount.fromJson(
              json['applied_discount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DraftOrderImplToJson(_$DraftOrderImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('applied_discount', instance.appliedDiscount?.toJson());
  return val;
}

_$AppliedDiscountImpl _$$AppliedDiscountImplFromJson(
        Map<String, dynamic> json) =>
    _$AppliedDiscountImpl(
      description: json['description'] as String?,
      valueType: json['value_type'] as String?,
      value: json['value'] as String?,
      amount: json['amount'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$AppliedDiscountImplToJson(
    _$AppliedDiscountImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('value_type', instance.valueType);
  writeNotNull('value', instance.value);
  writeNotNull('amount', instance.amount);
  writeNotNull('title', instance.title);
  return val;
}
