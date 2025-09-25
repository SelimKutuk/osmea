// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_application_charges_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllApplicationChargesResponseImpl
    _$$GetAllApplicationChargesResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAllApplicationChargesResponseImpl(
          applicationCharges: (json['application_charges'] as List<dynamic>?)
              ?.map(
                  (e) => ApplicationCharge.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$GetAllApplicationChargesResponseImplToJson(
    _$GetAllApplicationChargesResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('application_charges',
      instance.applicationCharges?.map((e) => e.toJson()).toList());
  return val;
}
