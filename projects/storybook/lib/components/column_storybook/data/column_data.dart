import 'package:flutter/material.dart';

/// MainAxisAlignment options for Column
const List<MainAxisAlignment> mainAxisAlignmentOptions = [
  MainAxisAlignment.start,
  MainAxisAlignment.end,
  MainAxisAlignment.center,
  MainAxisAlignment.spaceBetween,
  MainAxisAlignment.spaceAround,
  MainAxisAlignment.spaceEvenly,
];

/// CrossAxisAlignment options for Column
const List<CrossAxisAlignment> crossAxisAlignmentOptions = [
  CrossAxisAlignment.start,
  CrossAxisAlignment.end,
  CrossAxisAlignment.center,
  CrossAxisAlignment.stretch,
  CrossAxisAlignment.baseline,
];

/// MainAxisSize options for Column
const List<MainAxisSize> mainAxisSizeOptions = [
  MainAxisSize.min,
  MainAxisSize.max,
];

/// VerticalDirection options for Column
const List<VerticalDirection> verticalDirectionOptions = [
  VerticalDirection.down,
  VerticalDirection.up,
];

/// TextDirection options for Column
const List<TextDirection> textDirectionOptions = [
  TextDirection.ltr,
  TextDirection.rtl,
];

/// TextBaseline options for Column
const List<TextBaseline> textBaselineOptions = [
  TextBaseline.alphabetic,
  TextBaseline.ideographic,
];

/// Sample content widgets for Column - Simple and clean examples
final List<Widget> sampleContent = [
  // Simple icon with text
  Container(
    width: 80,
    height: 60,
    decoration: BoxDecoration(
      color: Colors.blue.shade100,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.blue.shade300),
    ),
    child: const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.home, color: Colors.blue, size: 24),
        SizedBox(height: 4),
        Text('Home', style: TextStyle(fontSize: 12, color: Colors.blue)),
      ],
    ),
  ),

  // Simple text widget
  Container(
    width: 80,
    height: 40,
    decoration: BoxDecoration(
      color: Colors.green.shade100,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.green.shade300),
    ),
    child: const Center(
      child: Text(
        'Profile',
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w600, color: Colors.green),
      ),
    ),
  ),

  // Simple icon
  Container(
    width: 60,
    height: 60,
    decoration: BoxDecoration(
      color: Colors.purple.shade100,
      borderRadius: BorderRadius.circular(30),
      border: Border.all(color: Colors.purple.shade300),
    ),
    child: const Center(
      child: Icon(Icons.settings, color: Colors.purple, size: 24),
    ),
  ),

  // Simple text with different size
  Container(
    width: 80,
    height: 30,
    decoration: BoxDecoration(
      color: Colors.orange.shade100,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.orange.shade300),
    ),
    child: const Center(
      child: Text(
        'Help',
        style: TextStyle(fontSize: 12, color: Colors.orange),
      ),
    ),
  ),

  // Simple button-like widget
  Container(
    width: 80,
    height: 35,
    decoration: BoxDecoration(
      color: Colors.teal.shade100,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.teal.shade300),
    ),
    child: const Center(
      child: Text(
        'About',
        style: TextStyle(
            fontSize: 12, fontWeight: FontWeight.w500, color: Colors.teal),
      ),
    ),
  ),
];

/// Common use cases for Column
const List<Map<String, dynamic>> useCases = [
  {
    'title': 'Navigation Menu',
    'description': 'Vertical navigation with icons and labels',
    'mainAxisAlignment': MainAxisAlignment.start,
    'crossAxisAlignment': CrossAxisAlignment.stretch,
    'mainAxisSize': MainAxisSize.max,
  },
  {
    'title': 'Card Stack',
    'description': 'Stacked content cards',
    'mainAxisAlignment': MainAxisAlignment.spaceEvenly,
    'crossAxisAlignment': CrossAxisAlignment.center,
    'mainAxisSize': MainAxisSize.max,
  },
  {
    'title': 'Form Layout',
    'description': 'Vertical form elements',
    'mainAxisAlignment': MainAxisAlignment.start,
    'crossAxisAlignment': CrossAxisAlignment.stretch,
    'mainAxisSize': MainAxisSize.max,
  },
  {
    'title': 'Status Panel',
    'description': 'Status indicators and information',
    'mainAxisAlignment': MainAxisAlignment.spaceBetween,
    'crossAxisAlignment': CrossAxisAlignment.center,
    'mainAxisSize': MainAxisSize.max,
  },
  {
    'title': 'Compact List',
    'description': 'Compact vertical list items',
    'mainAxisAlignment': MainAxisAlignment.start,
    'crossAxisAlignment': CrossAxisAlignment.center,
    'mainAxisSize': MainAxisSize.min,
  },
];

/// Get alignment label for display
String getMainAxisAlignmentLabel(MainAxisAlignment alignment) {
  switch (alignment) {
    case MainAxisAlignment.start:
      return 'Start';
    case MainAxisAlignment.end:
      return 'End';
    case MainAxisAlignment.center:
      return 'Center';
    case MainAxisAlignment.spaceBetween:
      return 'Space Between';
    case MainAxisAlignment.spaceAround:
      return 'Space Around';
    case MainAxisAlignment.spaceEvenly:
      return 'Space Evenly';
  }
}

String getCrossAxisAlignmentLabel(CrossAxisAlignment alignment) {
  switch (alignment) {
    case CrossAxisAlignment.start:
      return 'Start';
    case CrossAxisAlignment.end:
      return 'End';
    case CrossAxisAlignment.center:
      return 'Center';
    case CrossAxisAlignment.stretch:
      return 'Stretch';
    case CrossAxisAlignment.baseline:
      return 'Baseline';
  }
}

String getMainAxisSizeLabel(MainAxisSize size) {
  switch (size) {
    case MainAxisSize.min:
      return 'Min';
    case MainAxisSize.max:
      return 'Max';
  }
}

String getVerticalDirectionLabel(VerticalDirection direction) {
  switch (direction) {
    case VerticalDirection.down:
      return 'Down';
    case VerticalDirection.up:
      return 'Up';
  }
}

String getTextDirectionLabel(TextDirection direction) {
  switch (direction) {
    case TextDirection.ltr:
      return 'LTR';
    case TextDirection.rtl:
      return 'RTL';
  }
}

String getTextBaselineLabel(TextBaseline baseline) {
  switch (baseline) {
    case TextBaseline.alphabetic:
      return 'Alphabetic';
    case TextBaseline.ideographic:
      return 'Ideographic';
  }
}
