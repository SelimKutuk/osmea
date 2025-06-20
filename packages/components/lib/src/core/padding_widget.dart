import 'package:flutter/material.dart';
import 'package:osmea_components/src/core/abstract/abstract_core_widget.dart';

/// 📦 **OSMEA Components Library - Core Padding**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/components
///
/// A foundational padding widget that serves as the base for all
/// padding-based components in the OSMEA UI Kit.
///
/// {@category Core}
/// {@subCategory Widgets}
///
/// Features:
/// * 📏 Flexible padding options
/// * 📱 Responsive space management
/// * 🔄 Various inset types
///
/// ```dart
/// CorePadding(
///   padding: EdgeInsets.all(16),
///   child: Container(
///     color: Colors.blue,
///     height: 100,
///   ),
/// )
/// ```
///
/// Properties:
/// * 📐 [padding] - The amount of padding to apply around the child
/// * 👶 [child] - The child widget to be padded
///
/// See also:
/// * [Padding] - Flutter's padding widget
/// * [EdgeInsets] - Immutable set of offsets for each side of a rectangle

abstract class CorePadding extends AbstractCoreWidget {
  const CorePadding({
    super.key,
    super.customTheme,
    required this.padding,
    required this.child,
  });

  /// The amount of padding to apply around the child
  final EdgeInsetsGeometry padding;

  /// The child widget to be padded
  final Widget child;

  // ✅ Use buildWidget instead of build
  @override
  Widget buildWidget(BuildContext context) {
    return Padding(
      padding: padding,
      child: child,
    );
  }
}
