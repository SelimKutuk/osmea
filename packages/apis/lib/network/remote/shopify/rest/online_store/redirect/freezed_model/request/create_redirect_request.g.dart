// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_redirect_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateRedirectRequestImpl _$$CreateRedirectRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateRedirectRequestImpl(
      redirect: json['redirect'] == null
          ? null
          : Redirect.fromJson(json['redirect'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateRedirectRequestImplToJson(
    _$CreateRedirectRequestImpl instance) {
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
