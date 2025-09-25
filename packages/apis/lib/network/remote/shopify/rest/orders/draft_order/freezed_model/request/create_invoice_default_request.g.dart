// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_invoice_default_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateInvoiceDefaultRequestImpl _$$CreateInvoiceDefaultRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateInvoiceDefaultRequestImpl(
      draftOrderInvoice: json['draft_order_invoice'] == null
          ? null
          : DraftOrderInvoice.fromJson(
              json['draft_order_invoice'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateInvoiceDefaultRequestImplToJson(
    _$CreateInvoiceDefaultRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('draft_order_invoice', instance.draftOrderInvoice?.toJson());
  return val;
}

_$DraftOrderInvoiceImpl _$$DraftOrderInvoiceImplFromJson(
        Map<String, dynamic> json) =>
    _$DraftOrderInvoiceImpl(
      to: json['to'] as String?,
      from: json['from'] as String?,
      bcc: json['bcc'] as List<dynamic>?,
      subject: json['subject'] as String?,
      customMessage: json['custom_message'] as String?,
    );

Map<String, dynamic> _$$DraftOrderInvoiceImplToJson(
    _$DraftOrderInvoiceImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('to', instance.to);
  writeNotNull('from', instance.from);
  writeNotNull('bcc', instance.bcc);
  writeNotNull('subject', instance.subject);
  writeNotNull('custom_message', instance.customMessage);
  return val;
}
