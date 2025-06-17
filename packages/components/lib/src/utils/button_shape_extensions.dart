import 'package:flutter/material.dart';
import 'package:osmea_components/src/enums/button_enums.dart';
import 'package:osmea_components/src/utils/sizer_extensions.dart';

/// 🔲 **OSMEA Button Shape Extensions**
///
/// Provides comprehensive button shape utilities for the OSMEA Design System.
/// This file contains extensions for:
///
/// - 🔲 Button shapes (rectangle, rounded, circular, pill, square)
/// - 📐 Border radius configurations
/// - 🎨 Shape-specific styling helpers
///
/// @author OSMEA UI Team
/// @category Components
/// @subcategory Utils

/// 🔘 **Button Shape Extensions**
///
/// Provides consistent button shapes across the OSMEA UI Kit.
/// Use these extensions to maintain visual consistency and design standards.
///
/// ---
///
/// **Shape Categories:**
/// - `rectangle` 📐: Standard rounded corners (8px)
/// - `rounded` 🔘: Pronounced rounded corners (12px)
/// - `circular` ⭕: Fully circular shape (50% radius)
/// - `pill` 💊: Capsule shape (half height radius)
/// - `square` ⬜: Sharp corners (2px)
///
/// ---
///
/// _Example:_
/// ```dart
/// Container(
///   decoration: BoxDecoration(
///     borderRadius: ButtonShape.circular.getBorderRadius(context, 48),
///   ),
///   child: IconButton(
///     icon: Icon(Icons.favorite),
///     onPressed: () {},
///   ),
/// )
/// ```

extension ButtonShapeExtension on ButtonShape {
  /// 📐 **Get Border Radius**
  ///
  /// Returns the appropriate BorderRadius for the button shape.
  /// For circular and pill shapes, the height parameter is required.
  ///
  /// **Parameters:**
  /// - `context`: BuildContext for accessing theme values
  /// - `height`: Button height (required for circular/pill shapes)
  ///
  /// **Returns:**
  /// - BorderRadius geometry for the shape
  BorderRadius getBorderRadius(BuildContext context, [double? height]) {
    switch (this) {
      case ButtonShape.rectangle:
        return context.borderRadiusNormal;
      case ButtonShape.rounded:
        return context.borderRadiusHigh;
      case ButtonShape.circular:
        // Circular shape should be perfectly round - use the smaller dimension
        final size = height ?? 48;
        final radius = size / 2;
        return BorderRadius.circular(radius);
      case ButtonShape.pill:
        final radius = (height ?? 40) / 2;
        return BorderRadius.circular(radius);
      case ButtonShape.square:
        return context.borderRadiusLow;
    }
  }

  /// 🎨 **Get Shape Description**
  ///
  /// Returns a human-readable description of the button shape.
  /// Useful for debugging and documentation.
  String get description {
    switch (this) {
      case ButtonShape.rectangle:
        return 'Rectangle with standard rounded corners';
      case ButtonShape.rounded:
        return 'Rectangle with pronounced rounded corners';
      case ButtonShape.circular:
        return 'Perfectly circular shape with equal width and height';
      case ButtonShape.pill:
        return 'Capsule/pill shape with maximum rounded corners';
      case ButtonShape.square:
        return 'Rectangle with minimal rounded corners';
    }
  }

  /// 🔢 **Get Border Radius Value**
  ///
  /// Returns the border radius value as a double.
  /// For circular and pill shapes, the height parameter is required.
  ///
  /// **Parameters:**
  /// - `context`: BuildContext for accessing theme values
  /// - `height`: Button height (required for circular/pill shapes)
  ///
  /// **Returns:**
  /// - Border radius value as double
  double getBorderRadiusValue(BuildContext context, [double? height]) {
    switch (this) {
      case ButtonShape.rectangle:
        return context.normalValue;
      case ButtonShape.rounded:
        return context.highValue;
      case ButtonShape.circular:
        // Circular shape should be perfectly round - use the smaller dimension
        final size = height ?? 48;
        return size / 2;
      case ButtonShape.pill:
        return (height ?? 40) / 2;
      case ButtonShape.square:
        return context.lowValue;
    }
  }

  /// ⭕ **Get Circular Size**
  ///
  /// Returns the size for a perfectly circular button.
  /// This ensures the button maintains a perfect circle regardless of content.
  ///
  /// **Parameters:**
  /// - `height`: The desired height/width for the circular button
  ///
  /// **Returns:**
  /// - Size value for circular button (both width and height will be equal)
  double getCircularSize(double height) {
    return height;
  }

  /// 🎯 **Get Circular Padding**
  ///
  /// Returns the optimal padding for circular buttons to ensure perfect centering.
  /// For circular icon buttons, returns zero padding for perfect centering.
  ///
  /// **Parameters:**
  /// - `isIconOnly`: Whether this is an icon-only button
  ///
  /// **Returns:**
  /// - EdgeInsets for circular button padding
  EdgeInsets getCircularPadding({bool isIconOnly = false}) {
    if (this == ButtonShape.circular && isIconOnly) {
      return EdgeInsets.zero;
    }
    return const EdgeInsets.all(8.0);
  }

  /// ✨ **Is Circular Shape**
  ///
  /// Returns true if the shape is circular.
  /// Useful for conditional styling and layout decisions.
  bool get isCircular => this == ButtonShape.circular;

  /// 🔄 **Is Rounded Shape**
  ///
  /// Returns true if the shape has rounded characteristics.
  /// Includes rounded, circular, and pill shapes.
  bool get isRounded =>
      this == ButtonShape.rounded ||
      this == ButtonShape.circular ||
      this == ButtonShape.pill;

  /// 📐 **Is Angular Shape**
  ///
  /// Returns true if the shape has angular characteristics.
  /// Includes rectangle and square shapes.
  bool get isAngular =>
      this == ButtonShape.rectangle || this == ButtonShape.square;

  /// 🎯 **Is Perfect Circle**
  ///
  /// Returns true if the shape creates a perfect circle.
  /// Only circular shape returns true.
  bool get isPerfectCircle => this == ButtonShape.circular;
}

/// 🎯 **Button Shape Configuration**
///
/// A comprehensive configuration class for button shapes.
/// Provides all necessary styling information for a specific shape.
class ButtonShapeConfig {
  /// 📐 Border radius for the shape
  final BorderRadius borderRadius;

  /// 🎨 Shape type
  final ButtonShape shape;

  /// 📏 Radius value
  final double radiusValue;

  /// 📝 Description
  final String description;

  const ButtonShapeConfig({
    required this.borderRadius,
    required this.shape,
    required this.radiusValue,
    required this.description,
  });

  /// 🏭 **Factory Constructor**
  ///
  /// Creates a ButtonShapeConfig from a ButtonShape enum.
  ///
  /// **Parameters:**
  /// - `shape`: The button shape enum
  /// - `context`: BuildContext for accessing theme values
  /// - `height`: Button height (required for circular/pill shapes)
  factory ButtonShapeConfig.fromShape(
    ButtonShape shape,
    BuildContext context, [
    double? height,
  ]) {
    return ButtonShapeConfig(
      shape: shape,
      borderRadius: shape.getBorderRadius(context, height),
      radiusValue: shape.getBorderRadiusValue(context, height),
      description: shape.description,
    );
  }
}
