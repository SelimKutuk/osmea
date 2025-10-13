import 'package:equatable/equatable.dart';
import '../models/location_model.dart';

/// 📍 **Location Picker State**
///
/// Manages the state for the `OsmeaLocationPicker` component.
class LocationPickerState extends Equatable {
  /// The currently selected location.
  final LocationData? selectedLocation;

  /// The current text in the search query input.
  final String searchQuery;

  /// A list of location suggestions based on the search query.
  final List<LocationData> suggestions;

  /// Indicates if the component is in a loading state (e.g., fetching suggestions).
  final bool isLoading;

  /// Holds an error message if an operation fails.
  final String? error;

  /// Controls the visibility of the map view in the `combined` variant.
  final bool isMapVisible;

  const LocationPickerState({
    this.selectedLocation,
    this.searchQuery = '',
    this.suggestions = const [],
    this.isLoading = false,
    this.error,
    this.isMapVisible = false,
  });

  /// Creates a copy of the state with updated values.
  LocationPickerState copyWith({
    LocationData? selectedLocation,
    String? searchQuery,
    List<LocationData>? suggestions,
    bool? isLoading,
    String? error,
    bool? isMapVisible,
  }) {
    return LocationPickerState(
      selectedLocation: selectedLocation ?? this.selectedLocation,
      searchQuery: searchQuery ?? this.searchQuery,
      suggestions: suggestions ?? this.suggestions,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      isMapVisible: isMapVisible ?? this.isMapVisible,
    );
  }

  @override
  List<Object?> get props => [
        selectedLocation,
        searchQuery,
        suggestions,
        isLoading,
        error,
        isMapVisible,
      ];
}
