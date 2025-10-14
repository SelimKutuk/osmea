// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieves_list_of_shop_policies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrievesListOfShopPoliciesResponseImpl
    _$$RetrievesListOfShopPoliciesResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$RetrievesListOfShopPoliciesResponseImpl(
          policies: (json['policies'] as List<dynamic>?)
              ?.map((e) => Policy.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$RetrievesListOfShopPoliciesResponseImplToJson(
    _$RetrievesListOfShopPoliciesResponseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('policies', instance.policies?.map((e) => e.toJson()).toList());
  return val;
}

_$PolicyImpl _$$PolicyImplFromJson(Map<String, dynamic> json) => _$PolicyImpl(
      body: json['body'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      handle: json['handle'] as String?,
      title: json['title'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$PolicyImplToJson(_$PolicyImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('body', instance.body);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('handle', instance.handle);
  writeNotNull('title', instance.title);
  writeNotNull('url', instance.url);
  return val;
}
