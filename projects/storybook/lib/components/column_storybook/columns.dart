import 'package:storybook_flutter/storybook_flutter.dart';

// Import all column showcases
import 'showcase/unified_column_showcase.dart';
import 'showcase/column_examples_showcase.dart';
import 'showcase/column_comparison_showcase.dart';

/// **Column Component Stories**
///
/// Main aggregation function for all column stories

List<Story> getAllColumnStories() {
  return [
    ...getUnifiedColumnShowcase(),
    ...getColumnExamplesShowcase(),
    ...getColumnComparisonShowcase(),
  ];
}
