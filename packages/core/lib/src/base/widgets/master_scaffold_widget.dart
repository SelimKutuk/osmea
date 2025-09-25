library master_scaffold;

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:core/src/helper/grid_helper.dart';

/// Flexible scaffold widget that adapts based on parameters
class MasterScaffoldWidget extends StatelessWidget {
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey;
  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? bottomNavigationBar;
  final bool? extendBody;
  final bool? extendBodyBehindAppBar;

  // Layout configuration via custom value options
  final SpacerVisibility? navbarSpacer;
  final SpacerVisibility? footerSpacer;
  final PaddingVisibility? horizontalPadding;
  final bool? useSafeArea;

  // Spacer types - custom overrides default
  final CoreSpacerType? customNavbarSpacerType;
  final CoreSpacerType? customFooterSpacerType;
  final CoreSpacerType defaultNavbarSpacerType;
  final CoreSpacerType defaultFooterSpacerType;

  // Padding values - custom overrides default
  final double? customHorizontalPadding;
  final double defaultHorizontalPadding;

  const MasterScaffoldWidget({
    super.key,
    required this.scaffoldMessengerKey,
    this.appBar,
    required this.body,
    this.bottomNavigationBar,
    this.extendBody,
    this.extendBodyBehindAppBar,
    this.navbarSpacer,
    this.footerSpacer,
    this.horizontalPadding,
    this.useSafeArea,
    this.customNavbarSpacerType,
    this.customFooterSpacerType,
    this.defaultNavbarSpacerType = CoreSpacerType.navbar,
    this.defaultFooterSpacerType = CoreSpacerType.footer,
    this.customHorizontalPadding,
    this.defaultHorizontalPadding = GridHelper.defaultMargin,
  });

  @override
  Widget build(BuildContext context) {
    // Resolve effective configuration purely from external parameters
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
      extendBody: extendBody ?? true,
      extendBodyBehindAppBar: extendBodyBehindAppBar ?? true,
      key: scaffoldMessengerKey,
      appBar: appBar,
      body: (useSafeArea ?? true)
          ? SafeArea(
              child: Column(
                children: [
                  // Navbar spacer - based on configuration
                  if (config.navbarSpacer.isEnabled)
                    CoreSpacer(config.navbarSpacer.type),

                  // Main content with configurable padding
                  Expanded(
                    child: config.horizontalPadding.isEnabled
                        ? Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: config.horizontalPadding.value),
                            child: body,
                          )
                        : body,
                  ),

                  // Footer spacer - based on configuration
                  if (config.footerSpacer.isEnabled)
                    CoreSpacer(config.footerSpacer.type),
                ],
              ),
            )
          : Column(
              children: [
                // Navbar spacer - based on configuration
                if (config.navbarSpacer.isEnabled)
                  CoreSpacer(config.navbarSpacer.type),

                // Main content with configurable padding
                Expanded(
                  child: config.horizontalPadding.isEnabled
                      ? Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: config.horizontalPadding.value),
                          child: body,
                        )
                      : body,
                ),

                // Footer spacer - based on configuration
                if (config.footerSpacer.isEnabled)
                  CoreSpacer(config.footerSpacer.type),
              ],
            ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  // No presets: config is resolved above from external parameters only
}

/// Internal layout configuration class
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

/// Option type for spacer visibility and custom type
class SpacerVisibility {
  final bool isEnabled;
  final CoreSpacerType? _type;

  const SpacerVisibility._(this.isEnabled, this._type);
  const SpacerVisibility.enabled({CoreSpacerType? type}) : this._(true, type);
  const SpacerVisibility.disabled() : this._(false, null);

  CoreSpacerType get type => _type ?? CoreSpacerType.navbar;

  SpacerVisibility withDefaultType({required CoreSpacerType fallback}) {
    if (!isEnabled) return const SpacerVisibility.disabled();
    return SpacerVisibility.enabled(type: _type ?? fallback);
  }
}

/// Option type for padding visibility and custom value
class PaddingVisibility {
  final bool isEnabled;
  final double? _value;

  const PaddingVisibility._(this.isEnabled, this._value);
  const PaddingVisibility.enabled({double? value}) : this._(true, value);
  const PaddingVisibility.disabled() : this._(false, null);

  double get value => _value ?? GridHelper.defaultMargin;

  PaddingVisibility withDefault({required double fallback}) {
    if (!isEnabled) return const PaddingVisibility.disabled();
    return PaddingVisibility.enabled(value: _value ?? fallback);
  }
}
