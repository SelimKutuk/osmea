import 'package:flutter/material.dart';
import 'package:osmea_components/osmea_components.dart';

/// 🔨 **TabBar Builder Helper**
/// 
/// Helper class for building TabBar components and tab items
/// Used to centralize TabBar building logic across showcases
class TabBarBuilder {
  /// Sample tab items with icons
  static const List<TabItem> basicTabsWithIcons = [
    TabItem(text: 'Home', icon: Icon(Icons.home)),
    TabItem(text: 'Search', icon: Icon(Icons.search)),
    TabItem(text: 'Profile', icon: Icon(Icons.person)),
  ];

  /// Sample tab items without icons
  static const List<TabItem> basicTabsWithoutIcons = [
    TabItem(text: 'Home'),
    TabItem(text: 'Search'),
    TabItem(text: 'Profile'),
  ];

  /// Extended tab items with icons for scrollable demos
  static const List<TabItem> scrollableTabsWithIcons = [
    TabItem(text: 'Dashboard', icon: Icon(Icons.dashboard)),
    TabItem(text: 'Analytics', icon: Icon(Icons.analytics)),
    TabItem(text: 'Reports', icon: Icon(Icons.report)),
    TabItem(text: 'Settings', icon: Icon(Icons.settings)),
    TabItem(text: 'Users', icon: Icon(Icons.people)),
    TabItem(text: 'Projects', icon: Icon(Icons.work)),
    TabItem(text: 'Messages', icon: Icon(Icons.message)),
  ];

  /// Extended tab items without icons for scrollable demos
  static const List<TabItem> scrollableTabsWithoutIcons = [
    TabItem(text: 'Dashboard'),
    TabItem(text: 'Analytics'),
    TabItem(text: 'Reports'),
    TabItem(text: 'Settings'),
    TabItem(text: 'Users'),
    TabItem(text: 'Projects'),
    TabItem(text: 'Messages'),
  ];

  /// Get tab items based on count and icon preference
  static List<TabItem> getTabItems({
    required int count,
    required bool showIcons,
    bool scrollable = false,
  }) {
    final sourceList = scrollable
        ? (showIcons ? scrollableTabsWithIcons : scrollableTabsWithoutIcons)
        : (showIcons ? basicTabsWithIcons : basicTabsWithoutIcons);
    
    // Ensure we don't exceed available items
    final actualCount = count.clamp(1, sourceList.length);
    return sourceList.take(actualCount).toList();
  }

  /// Build a complete TabBar widget
  static Widget buildTabBar({
    required TabBarVariant variant,
    required TabBarStyle style,
    required TabBarIndicatorStyle indicatorStyle,
    required List<TabItem> tabs,
    required int currentIndex,
    required ValueChanged<int> onTabTap,
    Color? activeFillColor,
    bool enabled = true,
  }) {
    final tabBar = OsmeaComponents.tabBar(
      tabs: tabs,
      variant: variant,
      style: style,
      indicatorStyle: indicatorStyle,
      currentIndex: currentIndex,
      onTabTap: onTabTap,
      activeFillColor: activeFillColor,
    );
    
    return enabled ? tabBar : _buildDisabledWrapper(tabBar);
  }

  /// Build a wrapper that disables the TabBar
  static Widget _buildDisabledWrapper(Widget tabBar) {
    return IgnorePointer(
      child: Opacity(
        opacity: 0.5,
        child: tabBar,
      ),
    );
  }

  /// Get display name for current configuration
  static String getConfigurationDisplayName({
    required TabBarVariant variant,
    required TabBarStyle style,
    required TabBarIndicatorStyle indicatorStyle,
    required int tabCount,
    required bool showIcons,
  }) {
    final variantName = _getVariantName(variant);
    final styleName = _getStyleName(style);
    final indicatorName = _getIndicatorStyleName(indicatorStyle);
    final iconText = showIcons ? 'with Icons' : 'without Icons';
    
    return '$variantName $styleName TabBar ($tabCount tabs, $indicatorName indicator, $iconText)';
  }

  static String _getVariantName(TabBarVariant variant) {
    switch (variant) {
      case TabBarVariant.primary:
        return 'Primary';
      case TabBarVariant.secondary:
        return 'Secondary';
      case TabBarVariant.outlined:
        return 'Outlined';
      case TabBarVariant.glass:
        return 'Glass';
      case TabBarVariant.transparent:
        return 'Transparent';
    }
  }

  static String _getStyleName(TabBarStyle style) {
    switch (style) {
      case TabBarStyle.fixed:
        return 'Fixed';
      case TabBarStyle.scrollable:
        return 'Scrollable';
    }
  }

  static String _getIndicatorStyleName(TabBarIndicatorStyle style) {
    switch (style) {
      case TabBarIndicatorStyle.line:
        return 'Line';
      case TabBarIndicatorStyle.dot:
        return 'Dot';
      case TabBarIndicatorStyle.fill:
        return 'Fill';
      case TabBarIndicatorStyle.border:
        return 'Border';
      case TabBarIndicatorStyle.none:
        return 'None';
    }
  }
}
