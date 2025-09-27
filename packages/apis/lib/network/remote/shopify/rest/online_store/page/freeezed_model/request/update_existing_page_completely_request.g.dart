// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_existing_page_completely_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateExistingPageCompletelyRequestImpl
    _$$UpdateExistingPageCompletelyRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$UpdateExistingPageCompletelyRequestImpl(
          page: json['page'] == null
              ? null
              : Page.fromJson(json['page'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$UpdateExistingPageCompletelyRequestImplToJson(
    _$UpdateExistingPageCompletelyRequestImpl instance) {
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
      author: json['author'] as String?,
      title: json['title'] as String?,
      handle: json['handle'] as String?,
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
  writeNotNull('author', instance.author);
  writeNotNull('title', instance.title);
  writeNotNull('handle', instance.handle);
  return val;
}
