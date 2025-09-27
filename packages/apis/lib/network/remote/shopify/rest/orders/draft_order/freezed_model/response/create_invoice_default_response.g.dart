// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_invoice_default_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateInvoiceDefaultResponseImpl _$$CreateInvoiceDefaultResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateInvoiceDefaultResponseImpl(
      draftOrderInvoice: json['draft_order_invoice'] == null
          ? null
          : DraftOrderInvoice.fromJson(
              json['draft_order_invoice'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateInvoiceDefaultResponseImplToJson(
    _$CreateInvoiceDefaultResponseImpl instance) {
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
      subject: json['subject'] as String?,
      customMessage: json['custom_message'] as String?,
      bcc: json['bcc'] as List<dynamic>?,
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
  writeNotNull('subject', instance.subject);
  writeNotNull('custom_message', instance.customMessage);
  writeNotNull('bcc', instance.bcc);
  return val;
}
