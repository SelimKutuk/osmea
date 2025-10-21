import '../models/country.dart';

/// Simple phone picker state
class PhonePickerState {
  const PhonePickerState({
    required this.selectedCountry,
    this.phoneNumber = '',
    this.isValid = true,
    this.errorMessage,
  });

  final Country selectedCountry;
  final String phoneNumber;
  final bool isValid;
  final String? errorMessage;

  /// Full phone number with country code
  String get fullPhoneNumber => '${selectedCountry.dialCode}$phoneNumber';

  /// Whether phone number is empty
  bool get isEmpty => phoneNumber.isEmpty;

  /// Create a copy with modified properties
  PhonePickerState copyWith({
    Country? selectedCountry,
    String? phoneNumber,
    bool? isValid,
    String? errorMessage,
  }) {
    return PhonePickerState(
      selectedCountry: selectedCountry ?? this.selectedCountry,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      isValid: isValid ?? this.isValid,
      errorMessage: errorMessage,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PhonePickerState &&
        other.selectedCountry == selectedCountry &&
        other.phoneNumber == phoneNumber &&
        other.isValid == isValid &&
        other.errorMessage == errorMessage;
  }

  @override
  int get hashCode {
    return selectedCountry.hashCode ^
        phoneNumber.hashCode ^
        isValid.hashCode ^
        errorMessage.hashCode;
  }
}
