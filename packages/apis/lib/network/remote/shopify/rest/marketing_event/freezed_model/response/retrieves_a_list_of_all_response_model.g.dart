// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieves_a_list_of_all_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrievesAListOfAllResponseModelImpl
    _$$RetrievesAListOfAllResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$RetrievesAListOfAllResponseModelImpl(
          marketingEvents: (json['marketing_events'] as List<dynamic>?)
              ?.map((e) => MarketingEvent.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$RetrievesAListOfAllResponseModelImplToJson(
    _$RetrievesAListOfAllResponseModelImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('marketing_events',
      instance.marketingEvents?.map((e) => e.toJson()).toList());
  return val;
}

_$MarketingEventImpl _$$MarketingEventImplFromJson(Map<String, dynamic> json) =>
    _$MarketingEventImpl(
      id: (json['id'] as num?)?.toInt(),
      eventType: json['event_type'] as String?,
      remoteId: json['remote_id'],
      startedAt: json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
      endedAt: json['ended_at'],
      scheduledToEndAt: json['scheduled_to_end_at'],
      budget: json['budget'],
      currency: json['currency'],
      manageUrl: json['manage_url'],
      previewUrl: json['preview_url'],
      utmCampaign: json['utm_campaign'] as String?,
      utmSource: json['utm_source'] as String?,
      utmMedium: json['utm_medium'] as String?,
      budgetType: json['budget_type'],
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

  writeNotNull('id', instance.id);
  writeNotNull('event_type', instance.eventType);
  writeNotNull('remote_id', instance.remoteId);
  writeNotNull('started_at', instance.startedAt?.toIso8601String());
  writeNotNull('ended_at', instance.endedAt);
  writeNotNull('scheduled_to_end_at', instance.scheduledToEndAt);
  writeNotNull('budget', instance.budget);
  writeNotNull('currency', instance.currency);
  writeNotNull('manage_url', instance.manageUrl);
  writeNotNull('preview_url', instance.previewUrl);
  writeNotNull('utm_campaign', instance.utmCampaign);
  writeNotNull('utm_source', instance.utmSource);
  writeNotNull('utm_medium', instance.utmMedium);
  writeNotNull('budget_type', instance.budgetType);
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
