import 'package:flutter/material.dart';
import 'package:osmea_components/src/core/abstract/abstract_core_widget.dart';

/// 📦 **OSMEA Components Library - Core Center**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/components
///
/// A foundational center widget that serves as the base for all
/// centering components in the OSMEA UI Kit.
///
/// {@category Core}
/// {@subCategory Widgets}
///
/// Features:
/// * 📏 Centered alignment
///
/// ```dart
/// CoreCenter(
///   child: Container(
///     color: Colors.blue,
///     height: 100,
///     width: 100,
///   ),
/// )
/// ```
///
/// Properties:
/// * 👶 [child] - The child widget to be centered
/// * 📏 [widthFactor] - Width of the widget as a factor of child's width
/// * 📏 [heightFactor] - Height of the widget as a factor of child's height
///
/// See also:
/// * [Center] - Flutter's center widget

abstract class CoreCenter extends AbstractCoreWidget {
  const CoreCenter({
    super.key,
    super.customTheme,
    required this.child,
    this.widthFactor,
    this.heightFactor,
  });

  /// The child widget to be centered
  final Widget child;

  /// If non-null, sets the width of the child as a multiple of its preferred width
  final double? widthFactor;

  /// If non-null, sets the height of the child as a multiple of its preferred height
  final double? heightFactor;

  @override
  Widget build(BuildContext context) {
    return Center(
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: buildWidget(context),
    );
  }

  @override
  @protected
  Widget buildWidget(BuildContext context) => child;
}
