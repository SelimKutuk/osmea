// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieves_list_of_currencies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrievesListOfCurrenciesResponseImpl
    _$$RetrievesListOfCurrenciesResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$RetrievesListOfCurrenciesResponseImpl(
          currencies: json['currencies'] as List<dynamic>?,
        );

Map<String, dynamic> _$$RetrievesListOfCurrenciesResponseImplToJson(
    _$RetrievesListOfCurrenciesResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currencies', instance.currencies);
  return val;
}
