// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieves_single_events_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrievesSingleEventsResponseImpl
    _$$RetrievesSingleEventsResponseImplFromJson(Map<String, dynamic> json) =>
        _$RetrievesSingleEventsResponseImpl(
          event: json['event'] == null
              ? null
              : Event.fromJson(json['event'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$RetrievesSingleEventsResponseImplToJson(
    _$RetrievesSingleEventsResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('event', instance.event?.toJson());
  return val;
}

_$EventImpl _$$EventImplFromJson(Map<String, dynamic> json) => _$EventImpl(
      id: (json['id'] as num?)?.toInt(),
      subjectId: (json['subject_id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      subjectType: json['subject_type'] as String?,
      verb: json['verb'] as String?,
      arguments: (json['arguments'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      body: json['body'],
      message: json['message'] as String?,
      author: json['author'] as String?,
      description: json['description'] as String?,
      path: json['path'] as String?,
    );

Map<String, dynamic> _$$EventImplToJson(_$EventImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('subject_id', instance.subjectId);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('subject_type', instance.subjectType);
  writeNotNull('verb', instance.verb);
  writeNotNull('arguments', instance.arguments);
  writeNotNull('body', instance.body);
  writeNotNull('message', instance.message);
  writeNotNull('author', instance.author);
  writeNotNull('description', instance.description);
  writeNotNull('path', instance.path);
  return val;
}
