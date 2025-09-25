// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_all_script_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountAllScriptResponseImpl _$$CountAllScriptResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CountAllScriptResponseImpl(
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CountAllScriptResponseImplToJson(
    _$CountAllScriptResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}
