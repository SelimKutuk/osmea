// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creates_marketing_engagements_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatesMarketingEngagementsRequestModelImpl
    _$$CreatesMarketingEngagementsRequestModelImplFromJson(
            Map<String, dynamic> json) =>
        _$CreatesMarketingEngagementsRequestModelImpl(
          engagements: (json['engagements'] as List<dynamic>?)
              ?.map((e) => Engagement.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$CreatesMarketingEngagementsRequestModelImplToJson(
    _$CreatesMarketingEngagementsRequestModelImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'engagements', instance.engagements?.map((e) => e.toJson()).toList());
  return val;
}

_$EngagementImpl _$$EngagementImplFromJson(Map<String, dynamic> json) =>
    _$EngagementImpl(
      occurredOn: json['occurred_on'] == null
          ? null
          : DateTime.parse(json['occurred_on'] as String),
      viewsCount: (json['views_count'] as num?)?.toInt(),
      clicksCount: (json['clicks_count'] as num?)?.toInt(),
      favoritesCount: (json['favorites_count'] as num?)?.toInt(),
      adSpend: (json['ad_spend'] as num?)?.toInt(),
      isCumulative: json['is_cumulative'] as bool?,
    );

Map<String, dynamic> _$$EngagementImplToJson(_$EngagementImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('occurred_on', instance.occurredOn?.toIso8601String());
  writeNotNull('views_count', instance.viewsCount);
  writeNotNull('clicks_count', instance.clicksCount);
  writeNotNull('favorites_count', instance.favoritesCount);
  writeNotNull('ad_spend', instance.adSpend);
  writeNotNull('is_cumulative', instance.isCumulative);
  return val;
}
