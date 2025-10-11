// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieves_count_of_gift_card_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrievesCountOfGiftCardResponseImpl
    _$$RetrievesCountOfGiftCardResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$RetrievesCountOfGiftCardResponseImpl(
          count: (json['count'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$RetrievesCountOfGiftCardResponseImplToJson(
    _$RetrievesCountOfGiftCardResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}
