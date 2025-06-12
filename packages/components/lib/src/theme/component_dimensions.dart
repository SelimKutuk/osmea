import 'package:flutter/material.dart';

/// Design system dimensions and tokens for Osmea UI Kit
class ComponentDimensions {
  // space
  static const double spaceXXS = 4.0;
  static const double spaceXS = 8.0;
  static const double spaceS = 12.0;
  static const double spaceM = 16.0;
  static const double spaceL = 24.0;
  static const double spaceXL = 32.0;
  static const double spaceXXL = 48.0;

  // Border radius
  static const double radiusXS = 4.0;
  static const double radiusS = 8.0;
  static const double radiusM = 12.0;
  static const double radiusL = 16.0;
  static const double radiusXL = 24.0;
  static const double radiusCircular = 9999.0;

  // Border widths
  static const double borderThin = 1.0;
  static const double borderWidthThin = 1.0;
  static const double borderMedium = 2.0;
  static const double borderRegular = 2.0;
  static const double borderThick = 4.0;

  // Icon sizes
  static const double iconSizeXS = 12.0;
  static const double iconSizeS = 16.0;
  static const double iconSizeM = 24.0;
  static const double iconSizeL = 32.0;
  static const double iconSizeXL = 48.0;

  // Durations
  static const Duration durationFast = Duration(milliseconds: 150);
  static const Duration durationMedium = Duration(milliseconds: 250);
  static const Duration durationSlow = Duration(milliseconds: 350);

  // Elevations (BoxShadow lists)
  static const List<BoxShadow> elevationXS = [
    BoxShadow(
      color: Color(0x0F000000), // 6% opacity
      blurRadius: 2.0,
      offset: Offset(0, 1.0),
    ),
  ];

  static const List<BoxShadow> elevationS = [
    BoxShadow(
      color: Color(0x14000000), // 8% opacity
      blurRadius: 3.0,
      offset: Offset(0, 2.0),
    ),
  ];

  static const List<BoxShadow> elevationM = [
    BoxShadow(
      color: Color(0x1A000000), // 10% opacity
      blurRadius: 6.0,
      offset: Offset(0, 3.0),
    ),
  ];

  // Responsive breakpoints
  static const double breakpointMobile = 600.0;
  static const double breakpointTablet = 960.0;
  static const double breakpointDesktop = 1280.0;

  // Renamed from responsivespace to responsiveSpacing for consistency
  static double responsiveSpacing(BuildContext context, double baseSpacing) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Scale factor based on screen size
    if (screenWidth < breakpointMobile) {
      return baseSpacing; // Standard spacing on mobile
    } else if (screenWidth < breakpointTablet) {
      return baseSpacing * 1.1; // 10% larger on tablet
    } else {
      return baseSpacing * 1.2; // 20% larger on desktop
    }
  }

  static of(BuildContext context) {}
}

/// Extension on BuildContext to easily access component dimensions
extension ComponentDimensionsExtension on BuildContext {
  // Space values
  double get spaceXXS => ComponentDimensions.spaceXXS;
  double get spaceXS => ComponentDimensions.spaceXS;
  double get spaceS => ComponentDimensions.spaceS;
  double get spaceM => ComponentDimensions.spaceM;
  double get spaceL => ComponentDimensions.spaceL;
  double get spaceXL => ComponentDimensions.spaceXL;
  double get spaceXXL => ComponentDimensions.spaceXXL;

  // Radius values
  double get radiusXS => ComponentDimensions.radiusXS;
  double get radiusS => ComponentDimensions.radiusS;
  double get radiusM => ComponentDimensions.radiusM;
  double get radiusL => ComponentDimensions.radiusL;
  double get radiusXL => ComponentDimensions.radiusXL;
  double get radiusCircular => ComponentDimensions.radiusCircular;

  // Get responsive spacing
  double responsiveSpace(double baseSpacing) =>
      ComponentDimensions.responsiveSpacing(this, baseSpacing);

  // Icon size getters
  double get iconSizeXS => ComponentDimensions.iconSizeXS;
  double get iconSizeS => ComponentDimensions.iconSizeS;
  double get iconSizeM => ComponentDimensions.iconSizeM;
  double get iconSizeL => ComponentDimensions.iconSizeL;
  double get iconSizeXL => ComponentDimensions.iconSizeXL;
}

/// Extension on BuildContext to easily create spacing widgets using component dimensions
extension SpacingExtension on BuildContext {
  // Vertical spacing
  Widget vSpaceXXS() => const SizedBox(height: ComponentDimensions.spaceXXS);
  Widget vSpaceXS() => const SizedBox(height: ComponentDimensions.spaceXS);
  Widget vSpaceS() => const SizedBox(height: ComponentDimensions.spaceS);
  Widget vSpaceM() => const SizedBox(height: ComponentDimensions.spaceM);
  Widget vSpaceL() => const SizedBox(height: ComponentDimensions.spaceL);
  Widget vSpaceXL() => const SizedBox(height: ComponentDimensions.spaceXL);
  Widget vSpaceXXL() => const SizedBox(height: ComponentDimensions.spaceXXL);

  // Horizontal spacing
  Widget hSpaceXXS() => const SizedBox(width: ComponentDimensions.spaceXXS);
  Widget hSpaceXS() => const SizedBox(width: ComponentDimensions.spaceXS);
  Widget hSpaceS() => const SizedBox(width: ComponentDimensions.spaceS);
  Widget hSpaceM() => const SizedBox(width: ComponentDimensions.spaceM);
  Widget hSpaceL() => const SizedBox(width: ComponentDimensions.spaceL);
  Widget hSpaceXL() => const SizedBox(width: ComponentDimensions.spaceXL);
  Widget hSpaceXXL() => const SizedBox(width: ComponentDimensions.spaceXXL);

  // Padding helpers
  EdgeInsets paddingAll(double value) => EdgeInsets.all(value);
  EdgeInsets paddingAllXXS() =>
      const EdgeInsets.all(ComponentDimensions.spaceXXS);
  EdgeInsets paddingAllXS() =>
      const EdgeInsets.all(ComponentDimensions.spaceXS);
  EdgeInsets paddingAllS() => const EdgeInsets.all(ComponentDimensions.spaceS);
  EdgeInsets paddingAllM() => const EdgeInsets.all(ComponentDimensions.spaceM);
  EdgeInsets paddingAllL() => const EdgeInsets.all(ComponentDimensions.spaceL);

  // Symmetric padding
  EdgeInsets paddingHorizontal(double value) =>
      EdgeInsets.symmetric(horizontal: value);
  EdgeInsets paddingVertical(double value) =>
      EdgeInsets.symmetric(vertical: value);

  EdgeInsets paddingHorizontalXS() =>
      const EdgeInsets.symmetric(horizontal: ComponentDimensions.spaceXS);
  EdgeInsets paddingHorizontalS() =>
      const EdgeInsets.symmetric(horizontal: ComponentDimensions.spaceS);
  EdgeInsets paddingHorizontalM() =>
      const EdgeInsets.symmetric(horizontal: ComponentDimensions.spaceM);
  EdgeInsets paddingHorizontalL() =>
      const EdgeInsets.symmetric(horizontal: ComponentDimensions.spaceL);

  EdgeInsets paddingVerticalXS() =>
      const EdgeInsets.symmetric(vertical: ComponentDimensions.spaceXS);
  EdgeInsets paddingVerticalS() =>
      const EdgeInsets.symmetric(vertical: ComponentDimensions.spaceS);
  EdgeInsets paddingVerticalM() =>
      const EdgeInsets.symmetric(vertical: ComponentDimensions.spaceM);
  EdgeInsets paddingVerticalL() =>
      const EdgeInsets.symmetric(vertical: ComponentDimensions.spaceL);

  // Convenient widgets for icons with predefined sizes
  Widget iconBox({required Widget icon, required double size}) => SizedBox(
        width: size,
        height: size,
        child: Center(child: icon),
      );

  Widget iconBoxXS(Widget icon) =>
      iconBox(icon: icon, size: ComponentDimensions.iconSizeXS);
  Widget iconBoxS(Widget icon) =>
      iconBox(icon: icon, size: ComponentDimensions.iconSizeS);
  Widget iconBoxM(Widget icon) =>
      iconBox(icon: icon, size: ComponentDimensions.iconSizeM);
  Widget iconBoxL(Widget icon) =>
      iconBox(icon: icon, size: ComponentDimensions.iconSizeL);
  Widget iconBoxXL(Widget icon) =>
      iconBox(icon: icon, size: ComponentDimensions.iconSizeXL);
}
