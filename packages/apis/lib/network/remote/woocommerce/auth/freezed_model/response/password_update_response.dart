import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_update_response.freezed.dart';
part 'password_update_response.g.dart';

/// 🔐 Password Update Response Model
/// Response model for password update operation
@freezed
class PasswordUpdateResponse with _$PasswordUpdateResponse {
  const factory PasswordUpdateResponse({
    /// Success status
    @Default(false) bool success,

    /// Response message
    String? message,

    /// Error details
    String? error,

    /// Response data
    PasswordUpdateData? data,

    /// Metadata
    Map<String, dynamic>? metadata,
  }) = _PasswordUpdateResponse;

  factory PasswordUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$PasswordUpdateResponseFromJson(json);
}

/// Password Update Data Model
@freezed
class PasswordUpdateData with _$PasswordUpdateData {
  const factory PasswordUpdateData({
    /// User email
    String? email,

    /// Password updated status
    @Default(false) bool passwordUpdated,

    /// Updated timestamp
    DateTime? updatedAt,
  }) = _PasswordUpdateData;

  factory PasswordUpdateData.fromJson(Map<String, dynamic> json) =>
      _$PasswordUpdateDataFromJson(json);
}
