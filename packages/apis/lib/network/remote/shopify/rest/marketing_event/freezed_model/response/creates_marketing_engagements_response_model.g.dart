// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creates_marketing_engagements_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatesMarketingEngagementsResponseModelImpl
    _$$CreatesMarketingEngagementsResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$CreatesMarketingEngagementsResponseModelImpl(
          engagements: (json['engagements'] as List<dynamic>?)
              ?.map((e) => Engagement.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$CreatesMarketingEngagementsResponseModelImplToJson(
    _$CreatesMarketingEngagementsResponseModelImpl instance) {
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
      fetchedAt: json['fetched_at'],
      viewsCount: (json['views_count'] as num?)?.toInt(),
      impressionsCount: json['impressions_count'],
      clicksCount: (json['clicks_count'] as num?)?.toInt(),
      favoritesCount: (json['favorites_count'] as num?)?.toInt(),
      commentsCount: json['comments_count'],
      sharesCount: json['shares_count'],
      adSpend: json['ad_spend'] as String?,
      currencyCode: json['currency_code'],
      isCumulative: json['is_cumulative'] as bool?,
      unsubscribesCount: json['unsubscribes_count'],
      complaintsCount: json['complaints_count'],
      failsCount: json['fails_count'],
      sendsCount: json['sends_count'],
      uniqueViewsCount: json['unique_views_count'],
      uniqueClicksCount: json['unique_clicks_count'],
      utcOffset: json['utc_offset'],
    );

Map<String, dynamic> _$$EngagementImplToJson(_$EngagementImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('occurred_on', instance.occurredOn?.toIso8601String());
  writeNotNull('fetched_at', instance.fetchedAt);
  writeNotNull('views_count', instance.viewsCount);
  writeNotNull('impressions_count', instance.impressionsCount);
  writeNotNull('clicks_count', instance.clicksCount);
  writeNotNull('favorites_count', instance.favoritesCount);
  writeNotNull('comments_count', instance.commentsCount);
  writeNotNull('shares_count', instance.sharesCount);
  writeNotNull('ad_spend', instance.adSpend);
  writeNotNull('currency_code', instance.currencyCode);
  writeNotNull('is_cumulative', instance.isCumulative);
  writeNotNull('unsubscribes_count', instance.unsubscribesCount);
  writeNotNull('complaints_count', instance.complaintsCount);
  writeNotNull('fails_count', instance.failsCount);
  writeNotNull('sends_count', instance.sendsCount);
  writeNotNull('unique_views_count', instance.uniqueViewsCount);
  writeNotNull('unique_clicks_count', instance.uniqueClicksCount);
  writeNotNull('utc_offset', instance.utcOffset);
  return val;
}
