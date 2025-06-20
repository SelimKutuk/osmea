import 'package:flutter/material.dart';
import 'package:osmea_components/src/core/abstract/abstract_core_widget.dart';

/// 📦 **OSMEA Components Library - Core Expanded**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/components
///
/// A foundational expanded widget that serves as the base for all
/// expanded-based components in the OSMEA UI Kit.
///
/// {@category Core}
/// {@subCategory Widgets}
///
/// Features:
/// * 📏 Flexible sizing
/// * 🔢 Flex factor control
/// * 📱 Responsive space allocation
///
/// ```dart
/// CoreExpanded(
///   flex: 2,
///   child: Container(
///     color: Colors.blue,
///     height: 100,
///   ),
/// )
/// ```
///
/// Properties:
/// * 🔢 [flex] - The flex factor to use in the parent Flex widget
/// * 👶 [child] - The child widget to be expanded
///
/// See also:
/// * [Expanded] - Flutter's expanded widget
/// * [Flex] - Flutter's flex widget
/// * [FlexFit] - How a widget is inscribed into a Flex

abstract class CoreExpanded extends AbstractCoreWidget {
  const CoreExpanded({
    super.key,
    super.customTheme,
    this.flex = 1,
    required this.child,
  });

  /// The flex factor to use in the parent Flex widget
  final int flex;

  /// The child widget to be expanded
  final Widget child;

  @override
  Widget buildWidget(BuildContext context) {
    return Expanded(
      flex: flex,
      child: child,
    );
  }
}
