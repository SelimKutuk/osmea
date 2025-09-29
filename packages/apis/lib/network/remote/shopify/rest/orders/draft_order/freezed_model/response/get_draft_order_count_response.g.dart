// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_draft_order_count_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetDraftOrderCountResponseImpl _$$GetDraftOrderCountResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetDraftOrderCountResponseImpl(
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GetDraftOrderCountResponseImplToJson(
    _$GetDraftOrderCountResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}
