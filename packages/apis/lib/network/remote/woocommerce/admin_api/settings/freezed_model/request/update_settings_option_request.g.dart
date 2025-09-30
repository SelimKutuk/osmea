// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_settings_option_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateSettingsOptionRequestImpl _$$UpdateSettingsOptionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateSettingsOptionRequestImpl(
      id: json['id'] as String?,
      label: json['label'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      updateSettingsOptionRequestDefault: json['default'] as String?,
      tip: json['tip'] as String?,
      value: json['value'] as String?,
      groupId: json['group_id'] as String?,
    );

Map<String, dynamic> _$$UpdateSettingsOptionRequestImplToJson(
    _$UpdateSettingsOptionRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('label', instance.label);
  writeNotNull('description', instance.description);
  writeNotNull('type', instance.type);
  writeNotNull('default', instance.updateSettingsOptionRequestDefault);
  writeNotNull('tip', instance.tip);
  writeNotNull('value', instance.value);
  writeNotNull('group_id', instance.groupId);
  return val;
}
