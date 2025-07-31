import 'package:flutter/material.dart';
import 'package:osmea_components/src/enums/container_enums.dart';
import 'package:osmea_components/src/utils/sizer_extensions.dart';

/// 📦 **Container Extensions**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/components
///
/// Extensions for container utilities in the OSMEA UI Kit.
///
/// {@category Utils}
/// {@subCategory ContainerExtensions}

/// 📏 **Container Size Extension**
///
/// Extension on ContainerSize to get corresponding size values.
/// Used for consistent sizing across the component library.
extension ContainerSizeExtension on ContainerSize {
  /// Get size value for this container size
  double get size {
    switch (this) {
      case ContainerSize.small:
        return 80;
      case ContainerSize.medium:
        return 160;
      case ContainerSize.large:
        return 256;
      case ContainerSize.extraLarge:
        return 384;
    }
  }

  /// Get width for this container size
  double get width => size;

  /// Get height for this container size
  double get height => size;

  /// Get Size object for this container size
  Size get dimensions => Size(width, height);
}

/// 📦 **Container Context Extensions**
///
/// Extension on BuildContext for container utilities.
extension ContainerContextExtension on BuildContext {
  /// Get responsive container size based on screen width
  ContainerSize get responsiveContainerSize {
    if (allWidth > 1200) return ContainerSize.extraLarge;
    if (allWidth > 800) return ContainerSize.large;
    if (allWidth > 600) return ContainerSize.medium;
    return ContainerSize.small;
  }

  /// Get container size value based on screen orientation
  ContainerSize get orientationContainerSize {
    return isPortrait ? ContainerSize.medium : ContainerSize.large;
  }
}
