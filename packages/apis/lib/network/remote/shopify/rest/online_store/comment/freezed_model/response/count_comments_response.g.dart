// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_comments_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountCommentsResponseImpl _$$CountCommentsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CountCommentsResponseImpl(
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CountCommentsResponseImplToJson(
    _$CountCommentsResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}
