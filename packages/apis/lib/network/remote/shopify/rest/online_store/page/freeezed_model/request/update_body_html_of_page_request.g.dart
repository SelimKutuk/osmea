// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_body_html_of_page_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateBodyHtmlOfPageRequestImpl _$$UpdateBodyHtmlOfPageRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateBodyHtmlOfPageRequestImpl(
      page: json['page'] == null
          ? null
          : Page.fromJson(json['page'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateBodyHtmlOfPageRequestImplToJson(
    _$UpdateBodyHtmlOfPageRequestImpl instance) {
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
      bodyHtml: json['body_html'] as String?,
    );

Map<String, dynamic> _$$PageImplToJson(_$PageImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('body_html', instance.bodyHtml);
  return val;
}
