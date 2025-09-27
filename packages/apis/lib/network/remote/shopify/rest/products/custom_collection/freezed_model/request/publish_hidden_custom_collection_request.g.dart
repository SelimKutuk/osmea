// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publish_hidden_custom_collection_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PublishHiddenCustomCollectionRequestImpl
    _$$PublishHiddenCustomCollectionRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$PublishHiddenCustomCollectionRequestImpl(
          customCollection: json['custom_collection'] == null
              ? null
              : CustomCollection.fromJson(
                  json['custom_collection'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$PublishHiddenCustomCollectionRequestImplToJson(
    _$PublishHiddenCustomCollectionRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('custom_collection', instance.customCollection?.toJson());
  return val;
}

_$CustomCollectionImpl _$$CustomCollectionImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomCollectionImpl(
      id: (json['id'] as num?)?.toInt(),
      published: json['published'] as bool?,
    );

Map<String, dynamic> _$$CustomCollectionImplToJson(
    _$CustomCollectionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('published', instance.published);
  return val;
}
