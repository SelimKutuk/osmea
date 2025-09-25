// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_all_blogs_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountAllBlogsResponseImpl _$$CountAllBlogsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CountAllBlogsResponseImpl(
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CountAllBlogsResponseImplToJson(
    _$CountAllBlogsResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}
