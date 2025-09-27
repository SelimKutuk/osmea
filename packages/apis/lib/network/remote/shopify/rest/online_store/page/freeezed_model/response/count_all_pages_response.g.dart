// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_all_pages_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountAllPagesResponseImpl _$$CountAllPagesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CountAllPagesResponseImpl(
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CountAllPagesResponseImplToJson(
    _$CountAllPagesResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}
