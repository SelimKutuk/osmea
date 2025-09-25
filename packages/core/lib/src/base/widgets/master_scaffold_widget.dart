library master_scaffold;

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:core/src/helper/grid_helper.dart';

/// 🏗️ Flexible scaffold widget that adapts based on parameters
///
/// This widget provides a common layout structure for MasterView classes
/// with full customization capabilities. All parameters are optional and
/// maintain backward compatibility with original hardcoded behavior.
///
/// ## 🚀 Basic Usage
/// ```dart
/// MasterScaffoldWidget(
///   scaffoldMessengerKey: GlobalKey<ScaffoldMessengerState>(),
///   appBar: AppBar(title: Text('My App')),
///   body: MyContent(),
/// )
/// ```
///
/// ## 🎨 Custom Layout Example
/// ```dart
/// MasterScaffoldWidget(
///   scaffoldMessengerKey: key,
///   appBar: appBar,
///   body: content,
///   useSafeArea: false,                    // 🔧 Disable SafeArea
///   extendBody: false,                     // 🔧 Disable body extension
///   navbarSpacer: const SpacerVisibility.enabled(type: CoreSpacerType.content),
///   footerSpacer: const SpacerVisibility.disabled(),  // 🚫 No footer spacer
///   horizontalPadding: const PaddingVisibility.enabled(value: 24.0), // 📏 Custom padding
/// )
/// ```
///
/// ## 🎯 Minimal Layout Example
/// ```dart
/// MasterScaffoldWidget(
///   scaffoldMessengerKey: key,
///   body: content,
///   navbarSpacer: const SpacerVisibility.disabled(),   // 🚫 No spacers
///   footerSpacer: const SpacerVisibility.disabled(),   // 🚫 No spacers
///   horizontalPadding: const PaddingVisibility.disabled(), // 🚫 No padding
/// )
/// ```
class MasterScaffoldWidget extends StatelessWidget {
  // 🔑 Required parameters
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey;
  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? bottomNavigationBar;

  // 🎛️ Core scaffold parameters (optional with defaults)
  final bool? extendBody; // Default: true
  final bool? extendBodyBehindAppBar; // Default: true
  final bool? useSafeArea; // Default: true

  // 🎨 Layout configuration via custom value options
  final SpacerVisibility? navbarSpacer; // Top spacer configuration
  final SpacerVisibility? footerSpacer; // Bottom spacer configuration
  final PaddingVisibility?
      horizontalPadding; // Horizontal padding configuration

  // 🔧 Spacer types - custom overrides default
  final CoreSpacerType? customNavbarSpacerType; // Custom navbar spacer type
  final CoreSpacerType? customFooterSpacerType; // Custom footer spacer type
  final CoreSpacerType defaultNavbarSpacerType; // Default navbar spacer type
  final CoreSpacerType defaultFooterSpacerType; // Default footer spacer type

  // 📏 Padding values - custom overrides default
  final double? customHorizontalPadding; // Custom horizontal padding value
  final double defaultHorizontalPadding; // Default horizontal padding value

  const MasterScaffoldWidget({
    super.key,
    // 🔑 Required parameters
    required this.scaffoldMessengerKey,
    this.appBar,
    required this.body,
    this.bottomNavigationBar,

    // 🎛️ Core scaffold parameters (optional with defaults)
    this.extendBody, // Default: true
    this.extendBodyBehindAppBar, // Default: true
    this.useSafeArea, // Default: true

    // 🎨 Layout configuration
    this.navbarSpacer, // Top spacer configuration
    this.footerSpacer, // Bottom spacer configuration
    this.horizontalPadding, // Horizontal padding configuration

    // 🔧 Spacer type overrides
    this.customNavbarSpacerType, // Custom navbar spacer type
    this.customFooterSpacerType, // Custom footer spacer type
    this.defaultNavbarSpacerType = CoreSpacerType.navbar, // Default navbar type
    this.defaultFooterSpacerType = CoreSpacerType.footer, // Default footer type

    // 📏 Padding value overrides
    this.customHorizontalPadding, // Custom horizontal padding value
    this.defaultHorizontalPadding =
        GridHelper.defaultMargin, // Default padding value
  });

  @override
  Widget build(BuildContext context) {
    // 🎯 Resolve effective configuration purely from external parameters
    final config = _LayoutConfig(
      navbarSpacer:
          (navbarSpacer ?? const SpacerVisibility.enabled()).withDefaultType(
        fallback: customNavbarSpacerType ?? defaultNavbarSpacerType,
      ),
      footerSpacer:
          (footerSpacer ?? const SpacerVisibility.enabled()).withDefaultType(
        fallback: customFooterSpacerType ?? defaultFooterSpacerType,
      ),
      horizontalPadding:
          (horizontalPadding ?? const PaddingVisibility.enabled()).withDefault(
        fallback: customHorizontalPadding ?? defaultHorizontalPadding,
      ),
    );

    return Scaffold(
      // 🎛️ Apply scaffold parameters with defaults
      extendBody: extendBody ?? true,
      extendBodyBehindAppBar: extendBodyBehindAppBar ?? true,
      key: scaffoldMessengerKey,
      appBar: appBar,

      // 🏗️ Build body with conditional SafeArea wrapper
      body: (useSafeArea ?? true)
          ? SafeArea(
              child: Column(
                children: [
                  // 🔝 Navbar spacer - based on configuration
                  if (config.navbarSpacer.isEnabled)
                    CoreSpacer(config.navbarSpacer.type),

                  // 📱 Main content with configurable padding
                  Expanded(
                    child: config.horizontalPadding.isEnabled
                        ? Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: config.horizontalPadding.value),
                            child: body,
                          )
                        : body,
                  ),

                  // 🔻 Footer spacer - based on configuration
                  if (config.footerSpacer.isEnabled)
                    CoreSpacer(config.footerSpacer.type),
                ],
              ),
            )
          : Column(
              children: [
                // 🔝 Navbar spacer - based on configuration (no SafeArea)
                if (config.navbarSpacer.isEnabled)
                  CoreSpacer(config.navbarSpacer.type),

                // 📱 Main content with configurable padding (no SafeArea)
                Expanded(
                  child: config.horizontalPadding.isEnabled
                      ? Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: config.horizontalPadding.value),
                          child: body,
                        )
                      : body,
                ),

                // 🔻 Footer spacer - based on configuration (no SafeArea)
                if (config.footerSpacer.isEnabled)
                  CoreSpacer(config.footerSpacer.type),
              ],
            ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  // No presets: config is resolved above from external parameters only
}

/// 🔧 Internal layout configuration class
///
/// Holds the resolved configuration for spacers and padding
/// after applying custom values and fallbacks.
class _LayoutConfig {
  final SpacerVisibility navbarSpacer;
  final SpacerVisibility footerSpacer;
  final PaddingVisibility horizontalPadding;

  const _LayoutConfig({
    required this.navbarSpacer,
    required this.footerSpacer,
    required this.horizontalPadding,
  });
}

/// 🎨 Option type for spacer visibility and custom type
///
/// Provides a clean API for configuring spacer visibility and type.
///
/// ## Usage Examples:
/// ```dart
/// // ✅ Enabled with default type
/// const SpacerVisibility.enabled()
///
/// // ✅ Enabled with custom type
/// const SpacerVisibility.enabled(type: CoreSpacerType.content)
///
/// // ❌ Disabled
/// const SpacerVisibility.disabled()
/// ```
class SpacerVisibility {
  final bool isEnabled;
  final CoreSpacerType? _type;

  const SpacerVisibility._(this.isEnabled, this._type);
  const SpacerVisibility.enabled({CoreSpacerType? type}) : this._(true, type);
  const SpacerVisibility.disabled() : this._(false, null);

  /// 🎯 Get the effective spacer type (custom or default)
  CoreSpacerType get type => _type ?? CoreSpacerType.navbar;

  /// 🔄 Apply fallback type if no custom type is provided
  SpacerVisibility withDefaultType({required CoreSpacerType fallback}) {
    if (!isEnabled) return const SpacerVisibility.disabled();
    return SpacerVisibility.enabled(type: _type ?? fallback);
  }
}

/// 📏 Option type for padding visibility and custom value
///
/// Provides a clean API for configuring horizontal padding.
///
/// ## Usage Examples:
/// ```dart
/// // ✅ Enabled with default value
/// const PaddingVisibility.enabled()
///
/// // ✅ Enabled with custom value
/// const PaddingVisibility.enabled(value: 24.0)
///
/// // ❌ Disabled
/// const PaddingVisibility.disabled()
/// ```
class PaddingVisibility {
  final bool isEnabled;
  final double? _value;

  const PaddingVisibility._(this.isEnabled, this._value);
  const PaddingVisibility.enabled({double? value}) : this._(true, value);
  const PaddingVisibility.disabled() : this._(false, null);

  /// 🎯 Get the effective padding value (custom or default)
  double get value => _value ?? GridHelper.defaultMargin;

  /// 🔄 Apply fallback value if no custom value is provided
  PaddingVisibility withDefault({required double fallback}) {
    if (!isEnabled) return const PaddingVisibility.disabled();
    return PaddingVisibility.enabled(value: _value ?? fallback);
  }
}
