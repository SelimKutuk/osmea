// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sends_account_invite_to_customer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendsAccountInviteToCustomerRequestImpl
    _$$SendsAccountInviteToCustomerRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$SendsAccountInviteToCustomerRequestImpl(
          customerInvite: json['customer_invite'] == null
              ? const CustomerInvite()
              : CustomerInvite.fromJson(
                  json['customer_invite'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SendsAccountInviteToCustomerRequestImplToJson(
        _$SendsAccountInviteToCustomerRequestImpl instance) =>
    <String, dynamic>{
      'customer_invite': instance.customerInvite.toJson(),
    };

_$CustomerInviteImpl _$$CustomerInviteImplFromJson(Map<String, dynamic> json) =>
    _$CustomerInviteImpl(
      subject: json['subject'] as String?,
      customMessage: json['custom_message'] as String?,
    );

Map<String, dynamic> _$$CustomerInviteImplToJson(
    _$CustomerInviteImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('subject', instance.subject);
  writeNotNull('custom_message', instance.customMessage);
  return val;
}
