// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_recurring_application_charges_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllRecurringApplicationChargesResponseImpl
    _$$GetAllRecurringApplicationChargesResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAllRecurringApplicationChargesResponseImpl(
          recurringApplicationCharges:
              (json['recurring_application_charges'] as List<dynamic>?)
                  ?.map((e) => RecurringApplicationCharge.fromJson(
                      e as Map<String, dynamic>))
                  .toList(),
        );

Map<String, dynamic> _$$GetAllRecurringApplicationChargesResponseImplToJson(
    _$GetAllRecurringApplicationChargesResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('recurring_application_charges',
      instance.recurringApplicationCharges?.map((e) => e.toJson()).toList());
  return val;
}
