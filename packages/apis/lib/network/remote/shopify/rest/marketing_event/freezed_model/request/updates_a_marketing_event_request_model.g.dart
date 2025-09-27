// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updates_a_marketing_event_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdatesAMarketingEventRequestModelImpl
    _$$UpdatesAMarketingEventRequestModelImplFromJson(
            Map<String, dynamic> json) =>
        _$UpdatesAMarketingEventRequestModelImpl(
          marketingEvent: json['marketing_event'] == null
              ? null
              : MarketingEvent.fromJson(
                  json['marketing_event'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$UpdatesAMarketingEventRequestModelImplToJson(
    _$UpdatesAMarketingEventRequestModelImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('marketing_event', instance.marketingEvent?.toJson());
  return val;
}

_$MarketingEventImpl _$$MarketingEventImplFromJson(Map<String, dynamic> json) =>
    _$MarketingEventImpl(
      id: (json['id'] as num?)?.toInt(),
      remoteId: json['remote_id'] as String?,
      startedAt: json['started_at'] as String?,
      endedAt: json['ended_at'] as String?,
      scheduledToEndAt: json['scheduled_to_end_at'] as String?,
      budget: json['budget'] as String?,
      budgetType: json['budget_type'] as String?,
      currency: json['currency'] as String?,
      utmCampaign: json['utm_campaign'] as String?,
      utmSource: json['utm_source'] as String?,
      utmMedium: json['utm_medium'] as String?,
      eventType: json['event_type'] as String?,
      referringDomain: json['referring_domain'] as String?,
    );

Map<String, dynamic> _$$MarketingEventImplToJson(
    _$MarketingEventImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('remote_id', instance.remoteId);
  writeNotNull('started_at', instance.startedAt);
  writeNotNull('ended_at', instance.endedAt);
  writeNotNull('scheduled_to_end_at', instance.scheduledToEndAt);
  writeNotNull('budget', instance.budget);
  writeNotNull('budget_type', instance.budgetType);
  writeNotNull('currency', instance.currency);
  writeNotNull('utm_campaign', instance.utmCampaign);
  writeNotNull('utm_source', instance.utmSource);
  writeNotNull('utm_medium', instance.utmMedium);
  writeNotNull('event_type', instance.eventType);
  writeNotNull('referring_domain', instance.referringDomain);
  return val;
}
