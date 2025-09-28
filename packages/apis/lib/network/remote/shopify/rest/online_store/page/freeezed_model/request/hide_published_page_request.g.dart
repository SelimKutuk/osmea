// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hide_published_page_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HidePublishedPageRequestImpl _$$HidePublishedPageRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$HidePublishedPageRequestImpl(
      page: json['page'] == null
          ? null
          : Page.fromJson(json['page'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HidePublishedPageRequestImplToJson(
    _$HidePublishedPageRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('page', instance.page?.toJson());
  return val;
}

_$PageImpl _$$PageImplFromJson(Map<String, dynamic> json) => _$PageImpl(
      id: (json['id'] as num?)?.toInt(),
      published: json['published'] as bool?,
    );

Map<String, dynamic> _$$PageImplToJson(_$PageImpl instance) {
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
