import 'package:flutter/material.dart';
import 'package:osmea_components/src/core/abstract/abstract_core_widget.dart';

/// 📦 **OSMEA Components Library - Core Align**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/components
///
/// A foundational align widget that serves as the base for all
/// alignment-based components in the OSMEA UI Kit.
///
/// {@category Core}
/// {@subCategory Widgets}
///
/// Features:
/// * 📏 Precise alignment control
///
/// ```dart
/// CoreAlign(
///   alignment: Alignment.center,
///   child: Container(
///     color: Colors.blue,
///     height: 100,
///     width: 100,
///   ),
/// )
/// ```
///
/// Properties:
/// * 📐 [alignment] - How to align the child
/// * 👶 [child] - The child widget to be aligned
///
/// See also:
/// * [Align] - Flutter's align widget

abstract class CoreAlign extends AbstractCoreWidget {
  const CoreAlign({
    super.key,
    super.customTheme,
    required this.alignment,
    required this.child,
    this.widthFactor,
    this.heightFactor,
  });

  /// How to align the child
  final AlignmentGeometry alignment;

  /// The child widget to be aligned
  final Widget child;

  /// If non-null, sets the width of the child as a multiple of its preferred width
  final double? widthFactor;

  /// If non-null, sets the height of the child as a multiple of its preferred height
  final double? heightFactor;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: buildWidget(context),
    );
  }

  @override
  @protected
  Widget buildWidget(BuildContext context) => child;
}
