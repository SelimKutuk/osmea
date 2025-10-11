// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_add_note_draft_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateAddNoteDraftOrderRequestImpl
    _$$UpdateAddNoteDraftOrderRequestImplFromJson(Map<String, dynamic> json) =>
        _$UpdateAddNoteDraftOrderRequestImpl(
          draftOrder: json['draft_order'] == null
              ? null
              : DraftOrder.fromJson(
                  json['draft_order'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$UpdateAddNoteDraftOrderRequestImplToJson(
    _$UpdateAddNoteDraftOrderRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('draft_order', instance.draftOrder?.toJson());
  return val;
}

_$DraftOrderImpl _$$DraftOrderImplFromJson(Map<String, dynamic> json) =>
    _$DraftOrderImpl(
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$DraftOrderImplToJson(_$DraftOrderImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('note', instance.note);
  return val;
}
