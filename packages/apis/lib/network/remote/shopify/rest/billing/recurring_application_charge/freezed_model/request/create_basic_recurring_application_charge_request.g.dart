// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_basic_recurring_application_charge_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateBasicRecurringApplicationChargeRequestImpl
    _$$CreateBasicRecurringApplicationChargeRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateBasicRecurringApplicationChargeRequestImpl(
          recurringApplicationCharge:
              BasicRecurringApplicationChargeData.fromJson(
                  json['recurring_application_charge'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateBasicRecurringApplicationChargeRequestImplToJson(
        _$CreateBasicRecurringApplicationChargeRequestImpl instance) =>
    <String, dynamic>{
      'recurring_application_charge':
          instance.recurringApplicationCharge.toJson(),
    };

_$BasicRecurringApplicationChargeDataImpl
    _$$BasicRecurringApplicationChargeDataImplFromJson(
            Map<String, dynamic> json) =>
        _$BasicRecurringApplicationChargeDataImpl(
          name: json['name'] as String,
          price: (json['price'] as num).toDouble(),
          returnUrl: json['return_url'] as String,
          test: json['test'] as bool?,
        );

Map<String, dynamic> _$$BasicRecurringApplicationChargeDataImplToJson(
    _$BasicRecurringApplicationChargeDataImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'price': instance.price,
    'return_url': instance.returnUrl,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('test', instance.test);
  return val;
}
