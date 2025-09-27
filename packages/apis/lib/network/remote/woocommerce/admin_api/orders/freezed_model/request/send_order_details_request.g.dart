// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_order_details_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendOrderDetailsRequestImpl _$$SendOrderDetailsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SendOrderDetailsRequestImpl(
      action: json['action'] as String?,
      resendCustomerInvoice: json['resend_customer_invoice'] as bool?,
      customMessage: json['custom_message'] as String?,
    );

Map<String, dynamic> _$$SendOrderDetailsRequestImplToJson(
    _$SendOrderDetailsRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('action', instance.action);
  writeNotNull('resend_customer_invoice', instance.resendCustomerInvoice);
  writeNotNull('custom_message', instance.customMessage);
  return val;
}
