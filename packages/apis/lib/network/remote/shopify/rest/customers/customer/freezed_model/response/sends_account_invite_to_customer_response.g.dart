// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sends_account_invite_to_customer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendsAccountInviteToCustomerResponseImpl
    _$$SendsAccountInviteToCustomerResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$SendsAccountInviteToCustomerResponseImpl(
          customerInvite: json['customer_invite'] == null
              ? null
              : CustomerInvite.fromJson(
                  json['customer_invite'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SendsAccountInviteToCustomerResponseImplToJson(
    _$SendsAccountInviteToCustomerResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_invite', instance.customerInvite?.toJson());
  return val;
}

_$CustomerInviteImpl _$$CustomerInviteImplFromJson(Map<String, dynamic> json) =>
    _$CustomerInviteImpl(
      to: json['to'] as String?,
      from: json['from'] as String?,
      subject: json['subject'] as String?,
      customMessage: json['custom_message'] as String?,
      bcc: (json['bcc'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$CustomerInviteImplToJson(
    _$CustomerInviteImpl instance) {
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
