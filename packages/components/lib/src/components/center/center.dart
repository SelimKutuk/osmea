import 'package:osmea_components/src/core/center_widget.dart';

/// 📦 **OSMEA Components Library - Center**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/components
///
/// A center component that matches Flutter's standard Center widget API.
///
/// {@category Components}
/// {@subCategory Layout}
///
/// Features:
/// * 📏 Centered alignment
///
/// ```dart
/// OsmeaCenter(
///   child: Text('Centered content'),
/// )
/// ```
class OsmeaCenter extends CoreCenter {
  /// Creates an OSMEA Center with standard Flutter Center capabilities.
  const OsmeaCenter({
    super.key,
    super.customTheme,
    required super.child,
    super.widthFactor,
    super.heightFactor,
  });
}