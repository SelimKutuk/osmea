import 'package:flutter/material.dart';
import 'package:osmea_components/src/enums/appbar_enums.dart';

/// 📄 **AppBar with SearchBar Action Data Class**
///
/// Represents a single action button in the AppBar with SearchBar component.
/// This class is specifically designed for the AppBarWithSearchBar component.
class AppBarWithSearchBarAction {
  const AppBarWithSearchBarAction({
    required this.icon,
    this.onPressed,
    this.type = AppBarActionType.secondary,
    this.tooltip,
    this.badge,
    this.isEnabled = true,
    this.color,
    this.text,
  });

  /// 🎯 Icon for the action button
  final Widget icon;

  /// 🖱️ Callback when action is pressed
  final VoidCallback? onPressed;

  /// 🎮 Type of action for styling and positioning
  final AppBarActionType type;

  /// 💬 Tooltip text for accessibility
  final String? tooltip;

  /// 🔴 Optional badge (notification count, etc.)
  final Widget? badge;

  /// ✅ Whether the action is enabled
  final bool isEnabled;

  /// 🎨 Custom color for the action
  final Color? color;

  /// 📝 Optional text label below the icon
  final String? text;

  /// Create a copy with modified properties
  AppBarWithSearchBarAction copyWith({
    Widget? icon,
    VoidCallback? onPressed,
    AppBarActionType? type,
    String? tooltip,
    Widget? badge,
    bool? isEnabled,
    Color? color,
    String? text,
  }) {
    return AppBarWithSearchBarAction(
      icon: icon ?? this.icon,
      onPressed: onPressed ?? this.onPressed,
      type: type ?? this.type,
      tooltip: tooltip ?? this.tooltip,
      badge: badge ?? this.badge,
      isEnabled: isEnabled ?? this.isEnabled,
      color: color ?? this.color,
      text: text ?? this.text,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is AppBarWithSearchBarAction &&
        other.icon == icon &&
        other.onPressed == onPressed &&
        other.type == type &&
        other.tooltip == tooltip &&
        other.badge == badge &&
        other.isEnabled == isEnabled &&
        other.color == color &&
        other.text == text;
  }

  @override
  int get hashCode {
    return Object.hash(
      icon,
      onPressed,
      type,
      tooltip,
      badge,
      isEnabled,
      color,
      text,
    );
  }

  @override
  String toString() {
    return 'AppBarWithSearchBarAction(type: $type, isEnabled: $isEnabled, tooltip: $tooltip)';
  }
}
