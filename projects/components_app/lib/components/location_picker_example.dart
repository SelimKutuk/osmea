import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
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
  LocationData? _autofocusLocation;
  LocationData? _smallSizeLocation;
  LocationData? _mediumSizeLocation;
  LocationData? _largeSizeLocation;
  LocationData? _outlinedStyleLocation;
  LocationData? _filledStyleLocation;

  final Map<String, bool> _isPickerOpen = {};

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

  /// Anlık konumu al ve direkt olarak kabul et
  Future<void> _getCurrentLocationDirectly() async {
    try {
      final permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        await Geolocator.requestPermission();
      }

      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      String address = '';
      try {
        final placemarks = await placemarkFromCoordinates(
          position.latitude,
          position.longitude,
        );
        if (placemarks.isNotEmpty) {
          final place = placemarks.first;
          address = "${place.street}, ${place.locality}, ${place.country}";
        }
      } catch (e) {
        address = 'Lat: ${position.latitude}, Lng: ${position.longitude}';
      }

      final locationData = LocationData(
        latitude: position.latitude,
        longitude: position.longitude,
        address: address,
      );

      setState(() {
        _combinedLocation = locationData;
      });
      _updateSelectedLocationText(locationData);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Konumunuz kaydedildi: $address')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Konum alınamadı: $e')),
        );
      }
    }
  }

  void _handleLocationChanged(
    LocationData? location,
    String pickerId,
  ) async {
    if (location == null) {
      return;
    }

    // Picker zaten açıksa, aynı anda bir daha açılmasını önle
    if (_isPickerOpen[pickerId] == true) {
      return;
    }

    _isPickerOpen[pickerId] = true;

    final selected = await _openMapPicker(initialLocation: location);

    if (selected != null && mounted) {
      setState(() {
        switch (pickerId) {
          case 'combined':
            _combinedLocation = selected;
            break;
          case 'input':
            _inputOnlyLocation = selected;
            break;
          case 'no_current':
            _noCurrentLocation = selected;
            break;
          case 'autofocus':
            _autofocusLocation = selected;
            break;
          case 'map':
            _mapOnlyLocation = selected;
            break;
          case 'small':
            _smallSizeLocation = selected;
            break;
          case 'medium':
            _mediumSizeLocation = selected;
            break;
          case 'large':
            _largeSizeLocation = selected;
            break;
          case 'outlined':
            _outlinedStyleLocation = selected;
            break;
          case 'filled':
            _filledStyleLocation = selected;
            break;
        }
      });
      _updateSelectedLocationText(selected);
    }

    _isPickerOpen[pickerId] = false;
  }

  Future<LocationData?> _openMapPicker({LocationData? initialLocation}) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => _GoogleMapPickerScreen(
          initialPosition: LatLng(
            initialLocation?.latitude ?? 37.422,
            initialLocation?.longitude ?? -122.084,
          ),
        ),
      ),
    );

    return result as LocationData?;
  }

  Future<void> _getCurrentLocationAndOpenMap() async {
    try {
      final permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        await Geolocator.requestPermission();
        final newPermission = await Geolocator.checkPermission();
        if (newPermission == LocationPermission.denied || newPermission == LocationPermission.deniedForever) {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Location permission is required to use this feature.')),
            );
          }
          return;
        }
      }

      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      final initialLocation = LocationData(
        latitude: position.latitude,
        longitude: position.longitude,
        address: 'Loading address...',
      );

      final selectedLocation = await _openMapPicker(initialLocation: initialLocation);

      if (selectedLocation != null && mounted) {
        setState(() {
          _combinedLocation = selectedLocation;
        });
        _updateSelectedLocationText(selectedLocation);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Location Saved: ${selectedLocation.address}')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to get location: $e')),
        );
      }
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
              'API_KEY not found in your .env file. Please add your Google Maps API key and restart the app.',
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
            ElevatedButton.icon(
              onPressed: _getCurrentLocationAndOpenMap,
              icon: const Icon(Icons.my_location),
              label: const Text('Use Current Location & Pick on Map'),
            ),
            OsmeaComponents.sizedBox(height: 32),
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
        OsmeaComponents.text('Combined (Input + Map)',
            variant: OsmeaTextVariant.bodyMedium),
        OsmeaComponents.sizedBox(height: 8),
        OsmeaComponents.locationPicker(
          apiKey: _apiKey!,
          onLocationChanged: (location) =>
              _handleLocationChanged(location, 'combined'),
          label: 'Delivery Address',
          variant: LocationPickerVariant.combined,
          initialLocation: _combinedLocation,
          showCurrentLocation: true,
        ),
        OsmeaComponents.sizedBox(height: 16),
        OsmeaComponents.text('Input Only', variant: OsmeaTextVariant.bodyMedium),
        OsmeaComponents.sizedBox(height: 8),
        OsmeaComponents.locationPicker(
          apiKey: _apiKey!,
          onLocationChanged: (location) =>
              _handleLocationChanged(location, 'input'),
          label: 'Search Location',
          variant: LocationPickerVariant.input,
          initialLocation: _inputOnlyLocation,
          showCurrentLocation: true,
        ),
        OsmeaComponents.sizedBox(height: 16),
        OsmeaComponents.text('Without Current Location Button',
            variant: OsmeaTextVariant.bodyMedium),
        OsmeaComponents.sizedBox(height: 8),
        OsmeaComponents.locationPicker(
          apiKey: _apiKey!,
          onLocationChanged: (location) =>
              _handleLocationChanged(location, 'no_current'),
          label: 'Search Location',
          variant: LocationPickerVariant.input,
          initialLocation: _noCurrentLocation,
          showCurrentLocation: false,
        ),
        OsmeaComponents.sizedBox(height: 16),
        OsmeaComponents.text('Autofocus Current Location',
            variant: OsmeaTextVariant.bodyMedium),
        OsmeaComponents.sizedBox(height: 8),
        OsmeaComponents.locationPicker(
          apiKey: _apiKey!,
          onLocationChanged: (location) =>
              _handleLocationChanged(location, 'autofocus'),
          label: 'Autofocus Location',
          variant: LocationPickerVariant.combined,
          initialLocation: _autofocusLocation,
          showCurrentLocation: true,
          autofocusCurrentLocation: true,
        ),
        OsmeaComponents.sizedBox(height: 16),
        OsmeaComponents.text('Map Only', variant: OsmeaTextVariant.bodyMedium),
        OsmeaComponents.sizedBox(height: 8),
        OsmeaComponents.locationPicker(
          apiKey: _apiKey!,
          onLocationChanged: (location) =>
              _handleLocationChanged(location, 'map'),
          variant: LocationPickerVariant.map,
          initialLocation: _mapOnlyLocation,
          showCurrentLocation: true,
          autofocusCurrentLocation: true,
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
          onLocationChanged: (location) =>
              _handleLocationChanged(location, 'small'),
          size: LocationPickerSize.small,
          hintText: 'Small size picker',
          initialLocation: _smallSizeLocation,
        ),
        OsmeaComponents.sizedBox(height: 16),
        OsmeaComponents.text('Medium (Default)', variant: OsmeaTextVariant.bodyMedium),
        OsmeaComponents.sizedBox(height: 8),
        OsmeaComponents.locationPicker(
          apiKey: _apiKey!,
          onLocationChanged: (location) =>
              _handleLocationChanged(location, 'medium'),
          size: LocationPickerSize.medium,
          hintText: 'Medium size picker',
          initialLocation: _mediumSizeLocation,
        ),
        OsmeaComponents.sizedBox(height: 16),
        OsmeaComponents.text('Large', variant: OsmeaTextVariant.bodyMedium),
        OsmeaComponents.sizedBox(height: 8),
        OsmeaComponents.locationPicker(
          apiKey: _apiKey!,
          onLocationChanged: (location) =>
              _handleLocationChanged(location, 'large'),
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
        OsmeaComponents.text('Outlined (Default)', variant: OsmeaTextVariant.bodyMedium),
        OsmeaComponents.sizedBox(height: 8),
        OsmeaComponents.locationPicker(
          apiKey: _apiKey!,
          onLocationChanged: (location) =>
              _handleLocationChanged(location, 'outlined'),
          style: LocationPickerStyle.outlined,
          label: 'Outlined Style',
          initialLocation: _outlinedStyleLocation,
        ),
        OsmeaComponents.sizedBox(height: 16),
        OsmeaComponents.text('Filled', variant: OsmeaTextVariant.bodyMedium),
        OsmeaComponents.sizedBox(height: 8),
        OsmeaComponents.locationPicker(
          apiKey: _apiKey!,
          onLocationChanged: (location) =>
              _handleLocationChanged(location, 'filled'),
          style: LocationPickerStyle.filled,
          label: 'Filled Style',
          initialLocation: _filledStyleLocation,
        ),
      ],
    );
  }
}

/// Google Map Picker Screen
class _GoogleMapPickerScreen extends StatefulWidget {
  final LatLng initialPosition;
  const _GoogleMapPickerScreen({required this.initialPosition});

  @override
  State<_GoogleMapPickerScreen> createState() => _GoogleMapPickerScreenState();
}

class _GoogleMapPickerScreenState extends State<_GoogleMapPickerScreen> {
  late GoogleMapController _controller;
  late LatLng _pickedLatLng;
  String _address = 'Loading...';
  bool _isProcessing = false;
  bool _isConfirming = false;

  @override
  void initState() {
    super.initState();
    _pickedLatLng = widget.initialPosition;
    _updateAddress(_pickedLatLng);
  }

  Future<void> _updateAddress(LatLng pos) async {
    if (!mounted) return;
    setState(() {
      _isProcessing = true;
    });

    try {
      final placemarks =
          await placemarkFromCoordinates(pos.latitude, pos.longitude);
      if (mounted && placemarks.isNotEmpty) {
        final place = placemarks.first;
        setState(() {
          _address = "${place.street}, ${place.locality}, ${place.country}";
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _address = 'Lat: ${pos.latitude}, Lng: ${pos.longitude}';
        });
      }
    } finally {
      if (mounted) {
        setState(() {
          _isProcessing = false;
        });
      }
    }
  }

  void _confirmLocation() {
    // Çift klik önlemek için flag kontrol et
    if (_isConfirming) {
      return;
    }

    _isConfirming = true;

    Navigator.pop(
      context,
      LocationData(
        latitude: _pickedLatLng.latitude,
        longitude: _pickedLatLng.longitude,
        address: _address,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Location'),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: (_isProcessing || _isConfirming) ? null : _confirmLocation,
          )
        ],
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition:
                CameraPosition(target: widget.initialPosition, zoom: 16),
            onMapCreated: (controller) => _controller = controller,
            markers: {
              Marker(
                markerId: const MarkerId('picked'),
                position: _pickedLatLng,
                draggable: true,
                onDragEnd: (newPos) {
                  setState(() {
                    _pickedLatLng = newPos;
                  });
                  _updateAddress(newPos);
                },
              )
            },
            onTap: (pos) {
              setState(() {
                _pickedLatLng = pos;
              });
              _updateAddress(pos);
            },
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            zoomControlsEnabled: true,
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.85),
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26, blurRadius: 4, offset: Offset(0, 2))
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    _address,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  if (_isProcessing) ...[
                    const SizedBox(height: 8),
                    const LinearProgressIndicator(),
                  ]
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}