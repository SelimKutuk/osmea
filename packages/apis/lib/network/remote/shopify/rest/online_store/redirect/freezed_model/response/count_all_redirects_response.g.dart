// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_all_redirects_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountAllRedirectsResponseImpl _$$CountAllRedirectsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CountAllRedirectsResponseImpl(
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CountAllRedirectsResponseImplToJson(
    _$CountAllRedirectsResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}
