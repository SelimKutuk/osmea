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
  LocationData? _selectedLocation;
  final _locationController = TextEditingController();

  // TODO: Add your Google Maps API Key here for the location picker to work.
  final String _apiKey = dotenv.env['API_KEY']!;

  @override
  void dispose() {
    _locationController.dispose();
    super.dispose();
  }

  void _onLocationChanged(LocationData? location) {
    setState(() {
      _selectedLocation = location;
      if (location != null) {
        _locationController.text =
            'Address: ${location.address}\nCoordinates: (${location.latitude.toStringAsFixed(4)}, ${location.longitude.toStringAsFixed(4)})';
      } else {
        _locationController.text = '';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
          apiKey: _apiKey,
          onLocationChanged: _onLocationChanged,
          label: 'Delivery Address',
          variant: LocationPickerVariant.combined,
        ),
        OsmeaComponents.sizedBox(height: 16),
        OsmeaComponents.text(
          'Input Only',
          variant: OsmeaTextVariant.bodyMedium,
        ),
        OsmeaComponents.sizedBox(height: 8),
        OsmeaComponents.locationPicker(
          apiKey: _apiKey,
          onLocationChanged: _onLocationChanged,
          label: 'Search Location',
          variant: LocationPickerVariant.input,
        ),
        OsmeaComponents.sizedBox(height: 16),
        OsmeaComponents.text(
          'Map Only',
          variant: OsmeaTextVariant.bodyMedium,
        ),
        OsmeaComponents.sizedBox(height: 8),
        OsmeaComponents.locationPicker(
          apiKey: _apiKey,
          onLocationChanged: _onLocationChanged,
          variant: LocationPickerVariant.map,
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
          apiKey: _apiKey,
          onLocationChanged: _onLocationChanged,
          size: LocationPickerSize.small,
          hintText: 'Small size picker',
        ),
        OsmeaComponents.sizedBox(height: 16),
        OsmeaComponents.text(
          'Medium (Default)',
          variant: OsmeaTextVariant.bodyMedium,
        ),
        OsmeaComponents.sizedBox(height: 8),
        OsmeaComponents.locationPicker(
          apiKey: _apiKey,
          onLocationChanged: _onLocationChanged,
          size: LocationPickerSize.medium,
          hintText: 'Medium size picker',
        ),
        OsmeaComponents.sizedBox(height: 16),
        OsmeaComponents.text('Large', variant: OsmeaTextVariant.bodyMedium),
        OsmeaComponents.sizedBox(height: 8),
        OsmeaComponents.locationPicker(
          apiKey: _apiKey,
          onLocationChanged: _onLocationChanged,
          size: LocationPickerSize.large,
          hintText: 'Large size picker',
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
          apiKey: _apiKey,
          onLocationChanged: _onLocationChanged,
          style: LocationPickerStyle.outlined,
          label: 'Outlined Style',
        ),
        OsmeaComponents.sizedBox(height: 16),
        OsmeaComponents.text('Filled', variant: OsmeaTextVariant.bodyMedium),
        OsmeaComponents.sizedBox(height: 8),
        OsmeaComponents.locationPicker(
          apiKey: _apiKey,
          onLocationChanged: _onLocationChanged,
          style: LocationPickerStyle.filled,
          label: 'Filled Style',
        ),
      ],
    );
  }
}
