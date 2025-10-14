// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_redirect_path_uri_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateRedirectPathUriRequestImpl _$$UpdateRedirectPathUriRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateRedirectPathUriRequestImpl(
      redirect: json['redirect'] == null
          ? null
          : Redirect.fromJson(json['redirect'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateRedirectPathUriRequestImplToJson(
    _$UpdateRedirectPathUriRequestImpl instance) {
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
      id: (json['id'] as num?)?.toInt(),
      path: json['path'] as String?,
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
  return val;
}
