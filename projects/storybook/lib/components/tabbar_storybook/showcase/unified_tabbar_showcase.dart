import 'package:storybook_flutter/storybook_flutter.dart';
import 'tabbar_showcase_widget.dart';
import '../utils/knobs_config.dart';

/// 🎯 **Unified TabBar Showcase**
/// 
/// Single TabBar showcase with comprehensive interactive controls
/// This is the main entry point for the modular TabBar showcase
List<Story> getUnifiedTabBarShowcase() {
  return [
    Story(
      name: 'Tab Bars',
      builder: (context) => TabBarShowcaseWidget(
        // Variant control
        variantIndex: TabBarKnobsConfig.variantIndexKnob(context),
        
        // Style control
        style: TabBarKnobsConfig.styleKnob(context),
        
        // Indicator style control
        indicatorStyle: TabBarKnobsConfig.indicatorStyleKnob(context),
        
        // Tab count control
        tabCount: TabBarKnobsConfig.tabCountKnob(context),
        
        // Icon visibility control
        showIcons: TabBarKnobsConfig.showIconsKnob(context),
        
        // Active fill color control (for fill indicator)
        activeFillColor: TabBarKnobsConfig.activeFillColorKnob(context),
        
        // State controls
        enabled: TabBarKnobsConfig.enabledKnob(context),
      ),
    ),
  ];
}
