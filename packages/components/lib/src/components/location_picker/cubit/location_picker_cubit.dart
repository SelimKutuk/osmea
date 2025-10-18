import 'package:flutter_bloc/flutter_bloc.dart';
import 'location_picker_state.dart';
import '../models/location_model.dart';
import 'dart:async';

/// 📍 **Location Picker Cubit**
///
/// Manages the state for the `OsmeaLocationPicker` component,
/// handling location searches, suggestions, and selections.
class LocationPickerCubit extends Cubit<LocationPickerState> {
  final String apiKey;
  Timer? _debounce;

  LocationPickerCubit(this.apiKey) : super(const LocationPickerState());

  /// Called when the search query changes.
  void onSearchChanged(String query) {
    // Clear selected location if query is emptied
    final clearSelection = query.isEmpty;
    emit(state.copyWith(
      searchQuery: query,
      isLoading: true,
      error: null,
      clearSelectedLocation: clearSelection,
    ));
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (query.isEmpty) {
        emit(state.copyWith(suggestions: [], isLoading: false));
        return;
      }
      _fetchSuggestions(query);
    });
  }

  /// Fetches location suggestions based on the query.
  Future<void> _fetchSuggestions(String query) async {
    try {
      // Simulate API call (replace with real API call using apiKey)
      await Future.delayed(const Duration(milliseconds: 300));
      final results = [
        const LocationData(
            latitude: 41.0082,
            longitude: 28.9784,
            address: 'Istanbul, Turkey',
            name: 'Istanbul'),
        const LocationData(
            latitude: 39.9334,
            longitude: 32.8597,
            address: 'Ankara, Turkey',
            name: 'Ankara'),
        const LocationData(
            latitude: 38.4237,
            longitude: 27.1428,
            address: 'Izmir, Turkey',
            name: 'Izmir'),
      ]
          .where((loc) =>
              loc.address.toLowerCase().contains(query.toLowerCase()))
          .toList();
      emit(state.copyWith(suggestions: results, isLoading: false));
    } catch (e) {
      emit(state.copyWith(
          error: 'Failed to fetch suggestions.', isLoading: false));
    }
  }

  /// Selects a location and updates the state.
  void selectLocation(LocationData location) {
    emit(state.copyWith(
      selectedLocation: location,
      searchQuery: location.address,
      suggestions: [],
      isMapVisible: false,
      locationChanged: true, // Important for listener callback
    ));
  }

  /// Clears the currently selected location.
  void clearLocation() {
    emit(state.copyWith(
      selectedLocation: null,
      searchQuery: '',
      suggestions: [],
      clearSelectedLocation: true,
      locationChanged: true,
    ));
  }

  /// Toggles the visibility of the map view.
  void toggleMapVisibility() {
    emit(state.copyWith(isMapVisible: !state.isMapVisible));
  }

  /// Called when the show map button (sağ taraftaki bayrak) is pressed.
  void onShowMapPressed() {
    emit(state.copyWith(onShowMapPressed: true));
    // Reset flag immediately so it can be triggered again
    emit(state.copyWith(onShowMapPressed: false));
  }

  /// Fetches the user's current location.
  Future<void> getCurrentLocation() async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      // Simulate API call (replace with real current location logic)
      await Future.delayed(const Duration(seconds: 1));
      const location = LocationData(
          latitude: 41.0082,
          longitude: 28.9784,
          address: 'Current Location, Istanbul',
          name: 'Current Location');
      selectLocation(location);
    } catch (e) {
      emit(state.copyWith(
          error: 'Failed to get current location.', isLoading: false));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  @override
  Future<void> close() {
    _debounce?.cancel();
    return super.close();
  }
}