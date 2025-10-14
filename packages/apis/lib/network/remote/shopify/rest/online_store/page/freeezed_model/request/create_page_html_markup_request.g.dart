// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_page_html_markup_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatePageHtmlMarkupRequestImpl _$$CreatePageHtmlMarkupRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatePageHtmlMarkupRequestImpl(
      page: json['page'] == null
          ? null
          : Page.fromJson(json['page'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreatePageHtmlMarkupRequestImplToJson(
    _$CreatePageHtmlMarkupRequestImpl instance) {
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
  return val;
}
