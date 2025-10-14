// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creates_marketing_event_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatesMarketingEventRequestModelImpl
    _$$CreatesMarketingEventRequestModelImplFromJson(
            Map<String, dynamic> json) =>
        _$CreatesMarketingEventRequestModelImpl(
          marketingEvent: json['marketing_event'] == null
              ? null
              : MarketingEvent.fromJson(
                  json['marketing_event'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreatesMarketingEventRequestModelImplToJson(
    _$CreatesMarketingEventRequestModelImpl instance) {
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
      startedAt: json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
      utmCampaign: json['utm_campaign'] as String?,
      utmSource: json['utm_source'] as String?,
      utmMedium: json['utm_medium'] as String?,
      eventType: json['event_type'] as String?,
      referringDomain: json['referring_domain'] as String?,
      marketingChannel: json['marketing_channel'] as String?,
      paid: json['paid'] as bool?,
    );

Map<String, dynamic> _$$MarketingEventImplToJson(
    _$MarketingEventImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('started_at', instance.startedAt?.toIso8601String());
  writeNotNull('utm_campaign', instance.utmCampaign);
  writeNotNull('utm_source', instance.utmSource);
  writeNotNull('utm_medium', instance.utmMedium);
  writeNotNull('event_type', instance.eventType);
  writeNotNull('referring_domain', instance.referringDomain);
  writeNotNull('marketing_channel', instance.marketingChannel);
  writeNotNull('paid', instance.paid);
  return val;
}
