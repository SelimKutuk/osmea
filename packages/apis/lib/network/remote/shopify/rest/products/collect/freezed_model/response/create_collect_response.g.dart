// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_collect_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateCollectResponseImpl _$$CreateCollectResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateCollectResponseImpl(
      collect: json['collect'] == null
          ? null
          : Collect.fromJson(json['collect'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateCollectResponseImplToJson(
    _$CreateCollectResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('collect', instance.collect?.toJson());
  return val;
}
