// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_application_credits_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllApplicationCreditsResponseImpl
    _$$GetAllApplicationCreditsResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAllApplicationCreditsResponseImpl(
          applicationCredits: (json['application_credits'] as List<dynamic>?)
              ?.map(
                  (e) => ApplicationCredit.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$GetAllApplicationCreditsResponseImplToJson(
    _$GetAllApplicationCreditsResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('application_credits',
      instance.applicationCredits?.map((e) => e.toJson()).toList());
  return val;
}
