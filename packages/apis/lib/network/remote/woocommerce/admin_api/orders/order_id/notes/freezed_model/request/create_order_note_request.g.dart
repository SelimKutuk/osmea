// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_note_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateOrderNoteRequestImpl _$$CreateOrderNoteRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateOrderNoteRequestImpl(
      note: json['note'] as String?,
      customerNote: json['customer_note'] as bool?,
    );

Map<String, dynamic> _$$CreateOrderNoteRequestImplToJson(
    _$CreateOrderNoteRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('note', instance.note);
  writeNotNull('customer_note', instance.customerNote);
  return val;
}
