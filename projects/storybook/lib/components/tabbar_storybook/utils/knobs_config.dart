import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import 'package:osmea_components/osmea_components.dart';

/// ⚙️ **Knobs Configuration**
/// 
/// Centralized configuration for all Storybook knobs used in TabBar showcases
/// This makes it easy to maintain consistent knob settings across different showcases
class TabBarKnobsConfig {
  /// Variant knobs configuration
  static int variantIndexKnob(BuildContext context) {
    return context.knobs.options(
      label: 'TabBar Variant',
      initial: 0,
      options: const [
        Option(label: 'Primary', value: 0),
        Option(label: 'Secondary', value: 1),
        Option(label: 'Outlined', value: 2),
        Option(label: 'Glass', value: 3),
        Option(label: 'Transparent', value: 4),
      ],
    );
  }

  /// Style knobs configuration
  static TabBarStyle styleKnob(BuildContext context) {
    return context.knobs.options(
      label: 'TabBar Style',
      initial: TabBarStyle.fixed,
      options: const [
        Option(label: 'Fixed', value: TabBarStyle.fixed),
        Option(label: 'Scrollable', value: TabBarStyle.scrollable),
      ],
    );
  }

  /// Indicator style knobs configuration
  static TabBarIndicatorStyle indicatorStyleKnob(BuildContext context) {
    return context.knobs.options(
      label: 'Indicator Style',
      initial: TabBarIndicatorStyle.line,
      options: const [
        Option(label: 'Line', value: TabBarIndicatorStyle.line),
        Option(label: 'Dot', value: TabBarIndicatorStyle.dot),
        Option(label: 'Fill', value: TabBarIndicatorStyle.fill),
        Option(label: 'Border', value: TabBarIndicatorStyle.border),
        Option(label: 'None', value: TabBarIndicatorStyle.none),
      ],
    );
  }

  /// Tab count knobs configuration
  static int tabCountKnob(BuildContext context) {
    return context.knobs.options(
      label: 'Number of Tabs',
      initial: 3,
      options: const [
        Option(label: '3 Tabs', value: 3),
        Option(label: '4 Tabs', value: 4),
        Option(label: '5 Tabs', value: 5),
        Option(label: '6 Tabs', value: 6),
        Option(label: '7 Tabs', value: 7),
      ],
    );
  }

  /// Show icons knobs configuration
  static bool showIconsKnob(BuildContext context) {
    return context.knobs.boolean(
      label: 'Show Icons',
      initial: true,
    );
  }

  /// Fill indicator color knobs configuration
  static Color activeFillColorKnob(BuildContext context) {
    return context.knobs.options(
      label: 'Active Fill Color',
      initial: Colors.white,
      options: const [
        Option(label: 'White', value: Colors.white),
        Option(label: 'Blue', value: Colors.blue),
        Option(label: 'Green', value: Colors.green),
        Option(label: 'Orange', value: Colors.orange),
      ],
    );
  }

  /// Boolean knobs configuration
  static bool enabledKnob(BuildContext context) {
    return context.knobs.boolean(
      label: 'Enabled',
      initial: true,
    );
  }
}

/// Function type for knobs builders
typedef KnobsBuilder = Function();
