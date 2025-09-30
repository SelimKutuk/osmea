// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_collects_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetCollectsResponseImpl _$$GetCollectsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetCollectsResponseImpl(
      collects: (json['collects'] as List<dynamic>?)
          ?.map((e) => Collect.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetCollectsResponseImplToJson(
    _$GetCollectsResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('collects', instance.collects?.map((e) => e.toJson()).toList());
  return val;
}
