import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

// Import the main showcase widget
import 'clip_r_rect_showcase_widget.dart';
import '../data/clip_r_rect_data.dart';

/// **Unified ClipRRect Showcase**
///
/// Single story that shows all clip rrect variations with interactive controls

List<Story> getUnifiedClipRRectShowcase() {
  return [
    Story(
      name: 'ClipRRect',
      builder: (context) => ClipRRectShowcaseWidget(
        borderRadius: context.knobs.options(
          label: 'Border Radius',
          initial: BorderRadius.circular(16),
          options: borderRadiusOptions.map((borderRadius) {
            return Option(
              label: getBorderRadiusLabel(borderRadius),
              value: borderRadius,
            );
          }).toList(),
        ),
        clipBehavior: context.knobs.options(
          label: 'Clip Behavior',
          initial: Clip.antiAlias,
          options: clipBehaviorOptions.map((clipBehavior) {
            return Option(
              label: getClipBehaviorLabel(clipBehavior),
              value: clipBehavior,
            );
          }).toList(),
        ),
        child: context.knobs.options(
          label: 'Child Content',
          initial: sampleContent[0],
          options: [
            ...sampleContent.map((content) => Option(
                  label: _getContentLabel(content),
                  value: content,
                )),
          ],
        ),
      ),
    ),
  ];
}

String _getContentLabel(Widget content) {
  if (content is Container) {
    if (content.decoration is BoxDecoration) {
      final decoration = content.decoration as BoxDecoration;
      if (decoration.gradient is LinearGradient) {
        final gradient = decoration.gradient as LinearGradient;
        if (gradient.colors.contains(const Color(0xFF6B73FF))) return 'Text';
        if (gradient.colors.contains(const Color(0xFF2ECC71))) return 'Image';
        if (gradient.colors.contains(const Color(0xFF3498DB))) {
          return 'Gradient';
        }
        if (gradient.colors.contains(const Color(0xFFE74C3C))) return 'Icon';
      }
    }
    return 'Container';
  }
  return 'Widget';
}
