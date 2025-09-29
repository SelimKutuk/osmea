// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_redirect_path_and_target_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateRedirectPathAndTargetResponseImpl
    _$$UpdateRedirectPathAndTargetResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$UpdateRedirectPathAndTargetResponseImpl(
          redirect: json['redirect'] == null
              ? null
              : Redirect.fromJson(json['redirect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$UpdateRedirectPathAndTargetResponseImplToJson(
    _$UpdateRedirectPathAndTargetResponseImpl instance) {
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
      id: (json['id'] as num?)?.toInt(),
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
  writeNotNull('id', instance.id);
  return val;
}
