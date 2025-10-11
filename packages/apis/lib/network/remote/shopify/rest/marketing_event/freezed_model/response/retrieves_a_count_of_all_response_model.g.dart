// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieves_a_count_of_all_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrievesACountOfAllResponseModelImpl
    _$$RetrievesACountOfAllResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$RetrievesACountOfAllResponseModelImpl(
          count: (json['count'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$RetrievesACountOfAllResponseModelImplToJson(
    _$RetrievesACountOfAllResponseModelImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}
