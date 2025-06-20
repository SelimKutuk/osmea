import 'package:osmea_components/src/core/padding_widget.dart';

/// 📦 **OSMEA Components Library - Padding**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/components
///
/// A flexible padding component that follows Flutter's standard Padding widget API.
///
/// {@category Components}
/// {@subCategory Layout}
///
/// Features:
/// * 📏 Flexible padding options
/// * 📱 Responsive space management
///
/// ```dart
/// OsmeaPadding(
///   padding: EdgeInsets.all(16),
///   child: OsmeaText('Padded content'),
/// )
/// ```
class OsmeaPadding extends CorePadding {
  /// Creates an OSMEA Padding with Flutter padding capabilities.
  const OsmeaPadding({
    super.key,
    super.customTheme,
    required super.padding,
    required super.child,
  });
}
