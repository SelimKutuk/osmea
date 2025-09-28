// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updates_a_marketing_event_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdatesAMarketingEventResponseModelImpl
    _$$UpdatesAMarketingEventResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$UpdatesAMarketingEventResponseModelImpl(
          marketingEvent: json['marketing_event'] == null
              ? null
              : MarketingEvent.fromJson(
                  json['marketing_event'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$UpdatesAMarketingEventResponseModelImplToJson(
    _$UpdatesAMarketingEventResponseModelImpl instance) {
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
      endedAt: json['ended_at'] == null
          ? null
          : DateTime.parse(json['ended_at'] as String),
      scheduledToEndAt: json['scheduled_to_end_at'] == null
          ? null
          : DateTime.parse(json['scheduled_to_end_at'] as String),
      remoteId: json['remote_id'] as String?,
      currency: json['currency'] as String?,
      budget: json['budget'] as String?,
      budgetType: json['budget_type'] as String?,
      eventType: json['event_type'] as String?,
      id: (json['id'] as num?)?.toInt(),
      manageUrl: json['manage_url'],
      previewUrl: json['preview_url'],
      utmCampaign: json['utm_campaign'] as String?,
      utmSource: json['utm_source'] as String?,
      utmMedium: json['utm_medium'] as String?,
      description: json['description'] as String?,
      marketingChannel: json['marketing_channel'] as String?,
      paid: json['paid'] as bool?,
      referringDomain: json['referring_domain'] as String?,
      breadcrumbId: json['breadcrumb_id'],
      marketingActivityId: (json['marketing_activity_id'] as num?)?.toInt(),
      adminGraphqlApiId: json['admin_graphql_api_id'] as String?,
      marketedResources: json['marketed_resources'] as List<dynamic>?,
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
  writeNotNull('ended_at', instance.endedAt?.toIso8601String());
  writeNotNull(
      'scheduled_to_end_at', instance.scheduledToEndAt?.toIso8601String());
  writeNotNull('remote_id', instance.remoteId);
  writeNotNull('currency', instance.currency);
  writeNotNull('budget', instance.budget);
  writeNotNull('budget_type', instance.budgetType);
  writeNotNull('event_type', instance.eventType);
  writeNotNull('id', instance.id);
  writeNotNull('manage_url', instance.manageUrl);
  writeNotNull('preview_url', instance.previewUrl);
  writeNotNull('utm_campaign', instance.utmCampaign);
  writeNotNull('utm_source', instance.utmSource);
  writeNotNull('utm_medium', instance.utmMedium);
  writeNotNull('description', instance.description);
  writeNotNull('marketing_channel', instance.marketingChannel);
  writeNotNull('paid', instance.paid);
  writeNotNull('referring_domain', instance.referringDomain);
  writeNotNull('breadcrumb_id', instance.breadcrumbId);
  writeNotNull('marketing_activity_id', instance.marketingActivityId);
  writeNotNull('admin_graphql_api_id', instance.adminGraphqlApiId);
  writeNotNull('marketed_resources', instance.marketedResources);
  return val;
}
