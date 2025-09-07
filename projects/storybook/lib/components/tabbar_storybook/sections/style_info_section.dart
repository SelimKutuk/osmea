import 'package:flutter/material.dart';
import 'package:osmea_components/osmea_components.dart';
import '../widgets/section_container.dart';
import '../data/tabbar_descriptions.dart';

/// 📋 **Style Info Section**
/// 
/// Displays detailed information about the selected TabBar style
/// Used in TabBar showcases to provide context about style characteristics
class StyleInfoSection extends StatelessWidget {
  final TabBarStyle style;

  const StyleInfoSection({
    Key? key,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleName = TabBarStyleNames.getName(style);
    final description = TabBarStyleDescriptions.getDescription(style);

    return SectionContainer(
      title: 'Style Information',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.green.shade50,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.green.shade200),
            ),
            child: Row(
              children: [
                Icon(Icons.style, color: Colors.green.shade700, size: 20),
                const SizedBox(width: 8),
                Text(
                  'Current Style: $styleName',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.green.shade700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black87,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 16),
          _buildStyleCharacteristics(style),
        ],
      ),
    );
  }

  Widget _buildStyleCharacteristics(TabBarStyle style) {
    final characteristics = _getStyleCharacteristics(style);
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Characteristics:',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        ...characteristics.map((characteristic) => Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('• ', style: TextStyle(color: Colors.grey)),
              Expanded(
                child: Text(
                  characteristic,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.black87,
                  ),
                ),
              ),
            ],
          ),
        )),
      ],
    );
  }

  List<String> _getStyleCharacteristics(TabBarStyle style) {
    switch (style) {
      case TabBarStyle.fixed:
        return [
          'Tabs are evenly distributed across available width',
          'All tabs remain visible at once',
          'Best for 3-5 tabs maximum',
          'Consistent spacing and sizing',
          'No horizontal scrolling required',
        ];
      case TabBarStyle.scrollable:
        return [
          'Tabs can exceed screen width',
          'Horizontal scrolling enabled',
          'Accommodates many tabs',
          'Variable tab widths based on content',
          'Scroll indicators show more content',
        ];
    }
  }
}
