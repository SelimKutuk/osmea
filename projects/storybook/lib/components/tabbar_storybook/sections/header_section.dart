import 'package:flutter/material.dart';
import 'package:osmea_components/osmea_components.dart';
import '../widgets/info_chip_widget.dart';
import '../data/tabbar_descriptions.dart';

/// 📊 **Header Section**
/// 
/// Displays the main header with component information and current configuration
/// Used at the top of TabBar showcases to show key details
class HeaderSection extends StatelessWidget {
  final int variantIndex;
  final TabBarStyle style;
  final TabBarIndicatorStyle indicatorStyle;
  final int tabCount;
  final bool showIcons;
  final int currentIndex;
  final bool darkBackground;

  const HeaderSection({
    Key? key,
    required this.variantIndex,
    required this.style,
    required this.indicatorStyle,
    required this.tabCount,
    required this.showIcons,
    required this.currentIndex,
    this.darkBackground = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: darkBackground ? Colors.grey.shade700 : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.tab, color: Colors.blue.shade600),
              const SizedBox(width: 8),
              Text(
                'TabBar Showcase',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: darkBackground ? Colors.white : Colors.black87,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'Interactive TabBar component with real-time configuration',
            style: TextStyle(
              fontSize: 14,
              color: darkBackground ? Colors.grey.shade300 : Colors.grey.shade600,
            ),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 16,
            runSpacing: 8,
            children: [
              InfoChip(
                label: 'Variant',
                value: TabBarVariantNames.getName(variantIndex),
                color: Colors.blue.shade700,
                backgroundColor: Colors.blue.shade50,
              ),
              InfoChip(
                label: 'Style',
                value: TabBarStyleNames.getName(style),
                color: Colors.green.shade700,
                backgroundColor: Colors.green.shade50,
              ),
              InfoChip(
                label: 'Indicator',
                value: TabBarIndicatorStyleNames.getName(indicatorStyle),
                color: Colors.purple.shade700,
                backgroundColor: Colors.purple.shade50,
              ),
              InfoChip(
                label: 'Tabs',
                value: '$tabCount tabs',
                color: Colors.orange.shade700,
                backgroundColor: Colors.orange.shade50,
              ),
              InfoChip(
                label: 'Icons',
                value: showIcons ? 'Yes' : 'No',
                color: Colors.teal.shade700,
                backgroundColor: Colors.teal.shade50,
              ),
              InfoChip(
                label: 'Selected',
                value: 'Tab ${currentIndex + 1}',
                color: Colors.red.shade700,
                backgroundColor: Colors.red.shade50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
