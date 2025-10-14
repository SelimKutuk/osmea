// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_unpublished_page_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateUnpublishedPageRequestImpl _$$CreateUnpublishedPageRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateUnpublishedPageRequestImpl(
      page: json['page'] == null
          ? null
          : Page.fromJson(json['page'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateUnpublishedPageRequestImplToJson(
    _$CreateUnpublishedPageRequestImpl instance) {
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
      title: json['title'] as String?,
      bodyHtml: json['body_html'] as String?,
      published: json['published'] as bool?,
    );

Map<String, dynamic> _$$PageImplToJson(_$PageImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('body_html', instance.bodyHtml);
  writeNotNull('published', instance.published);
  return val;
}
