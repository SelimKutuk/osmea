// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recurring_application_charge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecurringApplicationChargeImpl _$$RecurringApplicationChargeImplFromJson(
        Map<String, dynamic> json) =>
    _$RecurringApplicationChargeImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: json['price'] as String,
      status: json['status'] as String,
      returnUrl: json['return_url'] as String,
      cappedAmount: json['capped_amount'] as String?,
      terms: json['terms'] as String?,
      trialDays: (json['trial_days'] as num?)?.toInt(),
      activatedOn: json['activated_on'] as String?,
      billingOn: json['billing_on'] as String?,
      cancelledOn: json['cancelled_on'] as String?,
      trialEndsOn: json['trial_ends_on'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      test: json['test'] as bool?,
      currency: json['currency'] as String?,
      confirmationUrl: json['confirmation_url'] as String?,
    );

Map<String, dynamic> _$$RecurringApplicationChargeImplToJson(
    _$RecurringApplicationChargeImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'price': instance.price,
    'status': instance.status,
    'return_url': instance.returnUrl,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('capped_amount', instance.cappedAmount);
  writeNotNull('terms', instance.terms);
  writeNotNull('trial_days', instance.trialDays);
  writeNotNull('activated_on', instance.activatedOn);
  writeNotNull('billing_on', instance.billingOn);
  writeNotNull('cancelled_on', instance.cancelledOn);
  writeNotNull('trial_ends_on', instance.trialEndsOn);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('test', instance.test);
  writeNotNull('currency', instance.currency);
  writeNotNull('confirmation_url', instance.confirmationUrl);
  return val;
}
