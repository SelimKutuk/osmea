import 'package:osmea_components/src/core/align_widget.dart';

/// 📦 **OSMEA Components Library - Align**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/components
///
/// A align component that matches Flutter's standard Align widget API.
///
/// {@category Components}
/// {@subCategory Layout}
///
/// Features:
/// * 📏 Precise alignment control
///
/// ```dart
/// OsmeaAlign(
///   alignment: Alignment.center,
///   child: Text('Aligned content'),
/// )
/// ```
class OsmeaAlign extends CoreAlign {
  /// Creates an OSMEA Align with standard Flutter Align capabilities.
  const OsmeaAlign({
    super.key,
    super.customTheme,
    required super.alignment,
    required super.child,
    super.widthFactor,
    super.heightFactor,
  });
}
