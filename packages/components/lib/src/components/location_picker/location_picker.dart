import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osmea_components/osmea_components.dart';
import 'package:osmea_components/src/core/container_widget.dart';
import 'package:osmea_components/src/enums/location_picker_enums.dart';
import 'package:osmea_components/src/utils/location_picker_extensions.dart';
import 'cubit/location_picker_cubit.dart';
import 'cubit/location_picker_state.dart';
import 'models/location_model.dart';

/// 📍 **OSMEA Location Picker**
///
/// A component for selecting a location using a search input and an optional map view.
///
/// {@category Components}
/// {@subCategory Forms}
///
/// ```dart
/// OsmeaLocationPicker(
///   onLocationChanged: (location) {
///     print('Selected: ${location.address}');
///   },
/// )
/// ```
class OsmeaLocationPicker extends CoreContainer {
  final LocationData? initialLocation;
  final ValueChanged<LocationData> onLocationChanged;
  final LocationPickerVariant variant;
  final LocationPickerSize size;
  final LocationPickerStyle style;
  final String? label;
  final String? hintText;
  final bool isRequired;
  final String apiKey;

  const OsmeaLocationPicker({
    super.key,
    this.initialLocation,
    required this.onLocationChanged,
    required this.apiKey,
    this.variant = LocationPickerVariant.combined,
    this.size = LocationPickerSize.medium,
    this.style = LocationPickerStyle.outlined,
    this.label,
    this.hintText,
    this.isRequired = false,
  });

  @override
  Widget buildWidget(BuildContext context) {
    return BlocProvider(
      create: (context) => LocationPickerCubit(apiKey),
      child: _LocationPickerView(
        picker: this,
      ),
    );
  }
}

class _LocationPickerView extends StatelessWidget {
  final OsmeaLocationPicker picker;

  const _LocationPickerView({required this.picker});

  @override
  Widget build(BuildContext context) {
    final sizeConfig = picker.size.getConfig(context);

    return BlocListener<LocationPickerCubit, LocationPickerState>(
      listener: (context, state) {
        if (state.selectedLocation != null) {
          picker.onLocationChanged(state.selectedLocation!);
        }
      },
      child: BlocBuilder<LocationPickerCubit, LocationPickerState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (picker.label != null) ...[
                Text(
                  picker.label!,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const SizedBox(height: 8),
              ],
              if (picker.variant != LocationPickerVariant.map)
                _buildSearchField(context, state, sizeConfig),
              if (state.suggestions.isNotEmpty)
                _buildSuggestionsList(context, state),
              if (picker.variant != LocationPickerVariant.input &&
                  state.isMapVisible) ...[
                const SizedBox(height: 8),
                _buildMapView(context, state, sizeConfig),
              ],
            ],
          );
        },
      ),
    );
  }

  Widget _buildSearchField(BuildContext context, LocationPickerState state,
      LocationPickerSizeConfig sizeConfig) {
    final cubit = context.read<LocationPickerCubit>();
    return OsmeaComponents.textField(
      hint: picker.hintText ?? 'Search for a location...',
      onChanged: (query) => cubit.onSearchChanged(query),
      size: _mapToTextFieldSize(picker.size),
      variant: _mapToTextFieldVariant(picker.style),
      prefixIcon: const Icon(Icons.search),
      suffixIcon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (state.isLoading)
            const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          else
            IconButton(
              icon: const Icon(Icons.my_location),
              onPressed: () => cubit.getCurrentLocation(),
              tooltip: 'Use current location',
            ),
          if (picker.variant == LocationPickerVariant.combined)
            IconButton(
              icon: Icon(state.isMapVisible ? Icons.map_outlined : Icons.map),
              onPressed: () => cubit.toggleMapVisibility(),
              tooltip: state.isMapVisible ? 'Hide map' : 'Show map',
            ),
        ],
      ),
    );
  }

  Widget _buildSuggestionsList(
      BuildContext context, LocationPickerState state) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(8),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: state.suggestions.length,
        itemBuilder: (context, index) {
          final location = state.suggestions[index];
          return ListTile(
            title: Text(location.name ?? location.address),
            subtitle: location.name != null ? Text(location.address) : null,
            onTap: () {
              context.read<LocationPickerCubit>().selectLocation(location);
            },
          );
        },
      ),
    );
  }

  Widget _buildMapView(BuildContext context, LocationPickerState state,
      LocationPickerSizeConfig sizeConfig) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.map, size: 48, color: Colors.grey.shade400),
              const SizedBox(height: 8),
              Text(
                state.selectedLocation?.address ?? 'Map View Placeholder',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey.shade600),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextFieldSize _mapToTextFieldSize(LocationPickerSize size) {
    switch (size) {
      case LocationPickerSize.small:
        return TextFieldSize.small;
      case LocationPickerSize.medium:
        return TextFieldSize.medium;
      case LocationPickerSize.large:
        return TextFieldSize.large;
    }
  }

  TextFieldVariant _mapToTextFieldVariant(LocationPickerStyle style) {
    switch (style) {
      case LocationPickerStyle.filled:
        return TextFieldVariant.filled;
      case LocationPickerStyle.outlined:
        return TextFieldVariant.outlined;
    }
  }
}
