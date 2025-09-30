// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_all_redirects_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListAllRedirectsResponseImpl _$$ListAllRedirectsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ListAllRedirectsResponseImpl(
      redirects: (json['redirects'] as List<dynamic>?)
          ?.map((e) => Redirect.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ListAllRedirectsResponseImplToJson(
    _$ListAllRedirectsResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'redirects', instance.redirects?.map((e) => e.toJson()).toList());
  return val;
}

_$RedirectImpl _$$RedirectImplFromJson(Map<String, dynamic> json) =>
    _$RedirectImpl(
      id: (json['id'] as num?)?.toInt(),
      path: json['path'] as String?,
      target: json['target'] as String?,
    );

Map<String, dynamic> _$$RedirectImplToJson(_$RedirectImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('path', instance.path);
  writeNotNull('target', instance.target);
  return val;
}
