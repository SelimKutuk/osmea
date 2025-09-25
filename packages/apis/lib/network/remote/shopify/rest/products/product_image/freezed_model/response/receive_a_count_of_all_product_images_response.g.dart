// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receive_a_count_of_all_product_images_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReceiveACountOfAllProductImagesResponseImpl
    _$$ReceiveACountOfAllProductImagesResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$ReceiveACountOfAllProductImagesResponseImpl(
          count: (json['count'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$ReceiveACountOfAllProductImagesResponseImplToJson(
    _$ReceiveACountOfAllProductImagesResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}
