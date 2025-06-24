import 'package:flutter/material.dart';
import 'package:osmea_components/src/enums/components_enum.dart';

/// 🃏 **Card Image Position Extensions**
extension CardImagePositionExtension on ComponentPosition {
  /// Check if image position is horizontal layout
  bool get isHorizontalImage {
    return this == ComponentPosition.left || 
           this == ComponentPosition.right ||
           this == ComponentPosition.start ||
           this == ComponentPosition.end;
  }
  
  /// Check if image position is vertical layout  
  bool get isVerticalImage {
    return this == ComponentPosition.top || this == ComponentPosition.bottom;
  }
  
  /// Check if image is background
  bool get isBackgroundImage {
    return this == ComponentPosition.center;
  }
}

/// 🔘 **Card Button Layout Extensions**
extension CardButtonLayoutExtension on ComponentOrientation {
  /// Get main axis alignment for button layout
  MainAxisAlignment get buttonAlignment {
    switch (this) {
      case ComponentOrientation.horizontal:
        return MainAxisAlignment.end;
      case ComponentOrientation.vertical:
        return MainAxisAlignment.center;
    }
  }
}