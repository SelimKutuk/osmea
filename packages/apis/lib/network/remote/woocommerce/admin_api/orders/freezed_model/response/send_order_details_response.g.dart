// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_order_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendOrderDetailsResponseImpl _$$SendOrderDetailsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SendOrderDetailsResponseImpl(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$SendOrderDetailsResponseImplToJson(
    _$SendOrderDetailsResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  return val;
}
