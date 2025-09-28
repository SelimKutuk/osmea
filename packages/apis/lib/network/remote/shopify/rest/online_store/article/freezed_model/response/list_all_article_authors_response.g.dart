// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_all_article_authors_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListAllArticleAuthorsResponseImpl
    _$$ListAllArticleAuthorsResponseImplFromJson(Map<String, dynamic> json) =>
        _$ListAllArticleAuthorsResponseImpl(
          authors: (json['authors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$$ListAllArticleAuthorsResponseImplToJson(
    _$ListAllArticleAuthorsResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('authors', instance.authors);
  return val;
}
