import 'package:storybook_flutter/storybook_flutter.dart';

// Import the modular wrap showcase
import 'showcase/unified_wrap_showcase.dart';

/// Main aggregation function for all Wrap stories
/// 
/// This file maintains the same interface as the original but uses
/// the new modular structure internally
List<Story> getAllWrapStories() {
  return [
    // Unified Wrap Showcase - Modular Structure
    ...getUnifiedWrapShowcase(),
    
    // Note: This new modular approach breaks down the large single file
    // into multiple focused files for better maintainability
  ];
}
