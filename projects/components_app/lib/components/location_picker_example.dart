import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:osmea_components/osmea_components.dart';

import '../widgets/common_appbar.dart';

class LocationPickerExample extends StatefulWidget {
  const LocationPickerExample({super.key});

  @override
  State<LocationPickerExample> createState() => _LocationPickerExampleState();
}

class _LocationPickerExampleState extends State<LocationPickerExample> {
  final _locationController = TextEditingController();

  final String? _apiKey = dotenv.env['API_KEY'];

  LocationData? _combinedLocation;
  LocationData? _inputOnlyLocation;
  LocationData? _noCurrentLocation;
  LocationData? _mapOnlyLocation;

  LocationData? _smallSizeLocation;
  LocationData? _mediumSizeLocation;
  LocationData? _largeSizeLocation;

  LocationData? _outlinedStyleLocation;
  LocationData? _filledStyleLocation;

  @override
  void dispose() {
    _locationController.dispose();
    super.dispose();
  }

  void _updateSelectedLocationText(LocationData? location) {
    if (location != null) {
      _locationController.text = location.address;
    } else {
      _locationController.text = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_apiKey == null || _apiKey!.isEmpty) {
      return OsmeaComponents.scaffold(
        backgroundColor: OsmeaColors.white,
        appBar: const OsmeaComponentsAppBar(
          screenKey: 'location_picker_example',
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: OsmeaComponents.text(
              'API_KEY not found in your .env file. Please add your Google Maps API key to the .env file in the root of the project and restart the app.',
              variant: OsmeaTextVariant.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
    }

    return OsmeaComponents.scaffold(
      backgroundColor: OsmeaColors.white,
      appBar: const OsmeaComponentsAppBar(
        screenKey: 'location_picker_example',
      ),
      body: OsmeaComponents.singleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: OsmeaComponents.column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OsmeaComponents.text(
              '📍 Location Picker Examples',
              variant: OsmeaTextVariant.headlineSmall,
            ),
            OsmeaComponents.sizedBox(height: 16),
            OsmeaComponents.textField(
              controller: _locationController,
              label: 'Selected Location',
              readOnly: true,
              maxLines: 3,
            ),
            OsmeaComponents.sizedBox(height: 16),
            _buildSectionTitle('Variants'),
            _buildVariantExamples(),
            OsmeaComponents.sizedBox(height: 32),
            _buildSectionTitle('Sizes'),
            _buildSizeExamples(),
            OsmeaComponents.sizedBox(height: 32),
            _buildSectionTitle('Styles'),
            _buildStyleExamples(),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return OsmeaComponents.text(
      title,
      variant: OsmeaTextVariant.titleMedium,
      fontWeight: FontWeight.bold,
    );
  }

  Widget _buildVariantExamples() {
    return OsmeaComponents.column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OsmeaComponents.text(
          'Combined (Input + Map)',
          variant: OsmeaTextVariant.bodyMedium,
        ),
        OsmeaComponents.sizedBox(height: 8),
        OsmeaComponents.locationPicker(
          apiKey: _apiKey!,
          onLocationChanged: (location) {
            setState(() {
              _combinedLocation = location;
            });
            _updateSelectedLocationText(location);
          },
          label: 'Delivery Address',
          variant: LocationPickerVariant.combined,
          initialLocation: _combinedLocation,
          showCurrentLocation: true,
        ),
        OsmeaComponents.sizedBox(height: 16),
        OsmeaComponents.text(
          'Input Only',
          variant: OsmeaTextVariant.bodyMedium,
        ),
        OsmeaComponents.sizedBox(height: 8),
        OsmeaComponents.locationPicker(
          apiKey: _apiKey!,
          onLocationChanged: (location) {
            setState(() {
              _inputOnlyLocation = location;
            });
            _updateSelectedLocationText(location);
          },
          label: 'Search Location',
          variant: LocationPickerVariant.input,
          initialLocation: _inputOnlyLocation,
          showCurrentLocation: true,
        ),
        OsmeaComponents.sizedBox(height: 16),
        OsmeaComponents.text(
          'Without Current Location Button',
          variant: OsmeaTextVariant.bodyMedium,
        ),
        OsmeaComponents.sizedBox(height: 8),
        OsmeaComponents.locationPicker(
          apiKey: _apiKey!,
          onLocationChanged: (location) {
            setState(() {
              _noCurrentLocation = location;
            });
            _updateSelectedLocationText(location);
          },
          label: 'Search Location',
          variant: LocationPickerVariant.input,
          initialLocation: _noCurrentLocation,
          showCurrentLocation: false,
        ),
        OsmeaComponents.sizedBox(height: 16),
        OsmeaComponents.text(
          'Map Only',
          variant: OsmeaTextVariant.bodyMedium,
        ),
        OsmeaComponents.sizedBox(height: 8),
        OsmeaComponents.locationPicker(
          apiKey: _apiKey!,
          onLocationChanged: (location) {
            setState(() {
              _mapOnlyLocation = location;
            });
            _updateSelectedLocationText(location);
          },
          variant: LocationPickerVariant.map,
          initialLocation: _mapOnlyLocation,
          showCurrentLocation: true,
        ),
      ],
    );
  }

  Widget _buildSizeExamples() {
    return OsmeaComponents.column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OsmeaComponents.text('Small', variant: OsmeaTextVariant.bodyMedium),
        OsmeaComponents.sizedBox(height: 8),
        OsmeaComponents.locationPicker(
          apiKey: _apiKey!,
          onLocationChanged: (location) {
            setState(() {
              _smallSizeLocation = location;
            });
            _updateSelectedLocationText(location);
          },
          size: LocationPickerSize.small,
          hintText: 'Small size picker',
          initialLocation: _smallSizeLocation,
        ),
        OsmeaComponents.sizedBox(height: 16),
        OsmeaComponents.text(
          'Medium (Default)',
          variant: OsmeaTextVariant.bodyMedium,
        ),
        OsmeaComponents.sizedBox(height: 8),
        OsmeaComponents.locationPicker(
          apiKey: _apiKey!,
          onLocationChanged: (location) {
            setState(() {
              _mediumSizeLocation = location;
            });
            _updateSelectedLocationText(location);
          },
          size: LocationPickerSize.medium,
          hintText: 'Medium size picker',
          initialLocation: _mediumSizeLocation,
        ),
        OsmeaComponents.sizedBox(height: 16),
        OsmeaComponents.text('Large', variant: OsmeaTextVariant.bodyMedium),
        OsmeaComponents.sizedBox(height: 8),
        OsmeaComponents.locationPicker(
          apiKey: _apiKey!,
          onLocationChanged: (location) {
            setState(() {
              _largeSizeLocation = location;
            });
            _updateSelectedLocationText(location);
          },
          size: LocationPickerSize.large,
          hintText: 'Large size picker',
          initialLocation: _largeSizeLocation,
        ),
      ],
    );
  }

  Widget _buildStyleExamples() {
    return OsmeaComponents.column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OsmeaComponents.text(
          'Outlined (Default)',
          variant: OsmeaTextVariant.bodyMedium,
        ),
        OsmeaComponents.sizedBox(height: 8),
        OsmeaComponents.locationPicker(
          apiKey: _apiKey!,
          onLocationChanged: (location) {
            setState(() {
              _outlinedStyleLocation = location;
            });
            _updateSelectedLocationText(location);
          },
          style: LocationPickerStyle.outlined,
          label: 'Outlined Style',
          initialLocation: _outlinedStyleLocation,
        ),
        OsmeaComponents.sizedBox(height: 16),
        OsmeaComponents.text('Filled', variant: OsmeaTextVariant.bodyMedium),
        OsmeaComponents.sizedBox(height: 8),
        OsmeaComponents.locationPicker(
          apiKey: _apiKey!,
          onLocationChanged: (location) {
            setState(() {
              _filledStyleLocation = location;
            });
            _updateSelectedLocationText(location);
          },
          style: LocationPickerStyle.filled,
          label: 'Filled Style',
          initialLocation: _filledStyleLocation,
        ),
      ],
    );
  }
}

