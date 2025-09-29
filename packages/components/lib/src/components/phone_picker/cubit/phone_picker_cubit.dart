import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/country.dart';
import 'phone_picker_state.dart';

/// Simple phone picker cubit
class PhonePickerCubit extends Cubit<PhonePickerState> {
  PhonePickerCubit({Country? initialCountry})
      : super(PhonePickerState(
          selectedCountry: initialCountry ?? Country.fromCountryCode('TR'),
        ));

  /// Update selected country
  void updateCountry(Country country) {
    emit(state.copyWith(selectedCountry: country));
  }

  /// Update phone number
  void updatePhoneNumber(String phoneNumber) {
    emit(state.copyWith(
      phoneNumber: phoneNumber,
      isValid: phoneNumber.isNotEmpty,
      errorMessage: null,
    ));
  }

  /// Set error message
  void setError(String message) {
    emit(state.copyWith(
      isValid: false,
      errorMessage: message,
    ));
  }

  /// Clear error
  void clearError() {
    emit(state.copyWith(
      isValid: true,
      errorMessage: null,
    ));
  }
}
