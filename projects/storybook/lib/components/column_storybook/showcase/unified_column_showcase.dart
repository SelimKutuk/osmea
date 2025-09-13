import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

// Import the main showcase widget
import 'column_showcase_widget.dart';
import '../data/column_data.dart';

/// **Unified Column Showcase**
///
/// Single story that shows all column variations with interactive controls

List<Story> getUnifiedColumnShowcase() {
  return [
    Story(
      name: 'Column',
      builder: (context) {
        // Get alignment values from knobs
        final mainAxisAlignment = context.knobs.options(
          label: 'Main Axis Alignment',
          initial: MainAxisAlignment.start,
          options: mainAxisAlignmentOptions
              .map((alignment) => Option(
                    label: getMainAxisAlignmentLabel(alignment),
                    value: alignment,
                  ))
              .toList(),
        );

        final crossAxisAlignment = context.knobs.options(
          label: 'Cross Axis Alignment',
          initial: CrossAxisAlignment.center,
          options: crossAxisAlignmentOptions
              .map((alignment) => Option(
                    label: getCrossAxisAlignmentLabel(alignment),
                    value: alignment,
                  ))
              .toList(),
        );

        final mainAxisSize = context.knobs.options(
          label: 'Main Axis Size',
          initial: MainAxisSize.max,
          options: mainAxisSizeOptions
              .map((size) => Option(
                    label: getMainAxisSizeLabel(size),
                    value: size,
                  ))
              .toList(),
        );

        final verticalDirection = context.knobs.options(
          label: 'Vertical Direction',
          initial: VerticalDirection.down,
          options: verticalDirectionOptions
              .map((direction) => Option(
                    label: getVerticalDirectionLabel(direction),
                    value: direction,
                  ))
              .toList(),
        );

        // Get textBaseline when crossAxisAlignment is baseline
        final textBaseline = crossAxisAlignment == CrossAxisAlignment.baseline
            ? context.knobs.options(
                label: 'Text Baseline',
                initial: TextBaseline.alphabetic,
                options: textBaselineOptions
                    .map((baseline) => Option(
                          label: getTextBaselineLabel(baseline),
                          value: baseline,
                        ))
                    .toList(),
              )
            : null;

        // Get children from knobs
        final children = context.knobs.options(
          label: 'Children',
          initial: sampleContent.take(3).toList(),
          options: [
            Option(label: '2 Items', value: sampleContent.take(2).toList()),
            Option(label: '3 Items', value: sampleContent.take(3).toList()),
            Option(label: '4 Items', value: sampleContent.take(4).toList()),
            Option(label: '5 Items', value: sampleContent.take(5).toList()),
          ],
        );

        return ColumnShowcaseWidget(
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          mainAxisSize: mainAxisSize,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
          showVisualIndicator: context.knobs.boolean(
            label: 'Show Visual Indicator',
            initial: true,
          ),
          children: children,
        );
      },
    ),
  ];
}
