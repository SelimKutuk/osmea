import 'package:flutter/material.dart';
import 'package:osmea_components/osmea_components.dart';
import '../sections/header_section.dart';
import '../data/column_data.dart';

class ColumnShowcaseWidget extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisSize mainAxisSize;
  final VerticalDirection verticalDirection;
  final TextBaseline? textBaseline;
  final List<Widget> children;
  final bool showVisualIndicator;

  const ColumnShowcaseWidget({
    super.key,
    required this.mainAxisAlignment,
    required this.crossAxisAlignment,
    required this.mainAxisSize,
    required this.verticalDirection,
    this.textBaseline,
    required this.children,
    this.showVisualIndicator = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            ColumnHeaderSection(
              title: '📐 Column Component',
              subtitle:
                  'Vertical layout component with flexible alignment and spacing options.',
              infoChips: {
                'Main Axis': getMainAxisAlignmentLabel(mainAxisAlignment),
                'Cross Axis': getCrossAxisAlignmentLabel(crossAxisAlignment),
                'Size': getMainAxisSizeLabel(mainAxisSize),
                'Direction': getVerticalDirectionLabel(verticalDirection),
              },
            ),

            const SizedBox(height: 32),

            // Live Example Section
            _buildDemo(context),
          ],
        ),
      ),
    );
  }

  Widget _buildDemo(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.play_circle_outline,
                  color: Colors.blue.shade600, size: 20),
              const SizedBox(width: 8),
              Text(
                'Live Preview',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade800),
              ),
            ],
          ),
          const SizedBox(height: 16),
          _buildColumnExample(),
        ],
      ),
    );
  }

  Widget _buildColumnExample() {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        color: showVisualIndicator ? Colors.blue.shade50 : Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color:
              showVisualIndicator ? Colors.blue.shade200 : Colors.grey.shade300,
          width: 2,
        ),
      ),
      child: OsmeaComponents.column(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: mainAxisSize,
        verticalDirection: verticalDirection,
        textBaseline: textBaseline,
        children: children,
      ),
    );
  }
}
