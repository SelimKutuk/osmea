import 'package:flutter/material.dart';
import 'package:osmea_components/osmea_components.dart';
import '../data/clip_r_rect_data.dart';
import '../sections/header_section.dart';

class ClipRRectShowcaseWidget extends StatelessWidget {
  final BorderRadiusGeometry borderRadius;
  final Clip clipBehavior;
  final Widget child;

  const ClipRRectShowcaseWidget({
    super.key,
    required this.borderRadius,
    required this.clipBehavior,
    required this.child,
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
            ClipRRectHeaderSection(
              borderRadius: borderRadius,
              clipBehavior: clipBehavior,
            ),

            const SizedBox(height: 32),

            // Live Example Section
            _buildDemo(context),

            const SizedBox(height: 32),

            // Properties Section
            _buildProperties(context),
          ],
        ),
      ),
    );
  }

  Widget _buildDemo(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.grey.shade200,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.visibility,
                size: 20,
                color: Colors.grey.shade600,
              ),
              const SizedBox(width: 8),
              Text(
                'Live Preview',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade800,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Main demo
          Center(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.grey.shade300,
                  width: 2,
                ),
              ),
              child: Center(
                child: OsmeaComponents.clipRRect(
                  borderRadius: borderRadius,
                  clipBehavior: clipBehavior,
                  child: child,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Clip behavior examples
          _buildClipBehaviorExamples(),
        ],
      ),
    );
  }

  Widget _buildProperties(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.grey.shade200,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.settings,
                size: 20,
                color: Colors.grey.shade600,
              ),
              const SizedBox(width: 8),
              Text(
                'Current Properties',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade800,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              _buildPropertyChip(
                  'Border Radius', getBorderRadiusLabel(borderRadius)),
              _buildPropertyChip(
                  'Clip Behavior', getClipBehaviorLabel(clipBehavior)),
              _buildPropertyChip('Child', _getChildType()),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPropertyChip(String label, String value) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.grey.shade200,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade600,
            ),
          ),
          const SizedBox(width: 6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: Colors.blue.shade200,
                width: 1,
              ),
            ),
            child: Text(
              value,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: Colors.blue.shade700,
                fontFamily: 'monospace',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClipBehaviorExamples() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.grey.shade200,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Clip Behavior Examples',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade700,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: clipBehaviorOptions.map((behavior) {
              final isSelected = behavior == clipBehavior;
              return Column(
                children: [
                  // Demo
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: isSelected
                            ? Colors.blue.shade300
                            : Colors.grey.shade300,
                        width: isSelected ? 2 : 1,
                      ),
                    ),
                    child: Center(
                      child: OsmeaComponents.clipRRect(
                        borderRadius: borderRadius,
                        clipBehavior: behavior,
                        child: SizedBox(
                          width: 35,
                          height: 35,
                          child: child,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  // Label
                  Text(
                    getClipBehaviorLabel(behavior),
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight:
                          isSelected ? FontWeight.w600 : FontWeight.w500,
                      color: isSelected
                          ? Colors.blue.shade700
                          : Colors.grey.shade600,
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  String _getChildType() {
    if (child is Container) {
      final container = child as Container;
      if (container.decoration is BoxDecoration) {
        final decoration = container.decoration as BoxDecoration;
        if (decoration.gradient is LinearGradient) {
          final gradient = decoration.gradient as LinearGradient;
          if (gradient.colors.contains(const Color(0xFF6B73FF))) {
            return 'Text Content';
          }
          if (gradient.colors.contains(const Color(0xFF2ECC71))) {
            return 'Image Style';
          }
          if (gradient.colors.contains(const Color(0xFF3498DB))) {
            return 'Gradient Effect';
          }
          if (gradient.colors.contains(const Color(0xFFE74C3C))) {
            return 'Icon Style';
          }
        }
      }
    }
    return 'Widget';
  }
}
