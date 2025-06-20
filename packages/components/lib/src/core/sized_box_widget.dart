import 'package:flutter/material.dart';
import 'package:osmea_components/src/core/abstract/abstract_core_widget.dart';

/// 📦 **OSMEA Components Library - Core SizedBox**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/components
///
/// A foundational sized box widget that serves as the base for all
/// sized box-based components in the OSMEA UI Kit.
///
/// {@category Core}
/// {@subCategory Widgets}
///
/// Features:
/// * 📏 Fixed width and height
/// * 📱 Responsive sizing
///
/// ```dart
/// CoreSizedBox(
///   width: 100,
///   height: 100,
///   child: Container(
///     color: Colors.blue,
///   ),
/// )
/// ```
///
/// Properties:
/// * 📐 [width] - The width of the box
/// * 📐 [height] - The height of the box
/// * 👶 [child] - The child widget
///
/// See also:
/// * [SizedBox] - Flutter's SizedBox widget

abstract class CoreSizedBox extends AbstractCoreWidget {
  const CoreSizedBox({
    super.key,
    super.customTheme,
    this.width,
    this.height,
    this.child,
  });

  /// The width of the sized box
  final double? width;

  /// The height of the sized box
  final double? height;

  /// The child widget
  final Widget? child;

  // ✅ Add this override here
  @override
  Widget buildWidget(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: child,
    );
  }
}
