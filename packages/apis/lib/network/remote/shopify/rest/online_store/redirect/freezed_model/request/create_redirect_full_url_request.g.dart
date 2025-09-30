// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_redirect_full_url_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateRedirectFullUrlRequestImpl _$$CreateRedirectFullUrlRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateRedirectFullUrlRequestImpl(
      redirect: json['redirect'] == null
          ? null
          : Redirect.fromJson(json['redirect'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateRedirectFullUrlRequestImplToJson(
    _$CreateRedirectFullUrlRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('redirect', instance.redirect?.toJson());
  return val;
}

_$RedirectImpl _$$RedirectImplFromJson(Map<String, dynamic> json) =>
    _$RedirectImpl(
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

  writeNotNull('path', instance.path);
  writeNotNull('target', instance.target);
  return val;
}
