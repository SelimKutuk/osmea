import 'package:flutter/material.dart';
import 'package:osmea_components/osmea_components.dart';
import '../widgets/section_container.dart';
import '../data/tabbar_descriptions.dart';

/// 📋 **Variant Info Section**
/// 
/// Displays detailed information about the selected TabBar variant
/// Used in TabBar showcases to provide context about variant characteristics
class VariantInfoSection extends StatelessWidget {
  final int variantIndex;

  const VariantInfoSection({
    Key? key,
    required this.variantIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final variant = TabBarVariantNames.getVariant(variantIndex);
    final variantName = TabBarVariantNames.getName(variantIndex);
    final description = TabBarVariantDescriptions.getDescription(variant);

    return SectionContainer(
      title: 'Variant Information',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.blue.shade200),
            ),
            child: Row(
              children: [
                Icon(Icons.info_outline, color: Colors.blue.shade700, size: 20),
                const SizedBox(width: 8),
                Text(
                  'Current Variant: $variantName',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue.shade700,
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
          _buildVariantCharacteristics(variant),
        ],
      ),
    );
  }

  Widget _buildVariantCharacteristics(TabBarVariant variant) {
    final characteristics = _getVariantCharacteristics(variant);
    
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

  List<String> _getVariantCharacteristics(TabBarVariant variant) {
    switch (variant) {
      case TabBarVariant.primary:
        return [
          'Bold and prominent visual styling',
          'Strong color contrast for emphasis',
          'Ideal for main navigation elements',
          'Clear visual hierarchy',
        ];
      case TabBarVariant.secondary:
        return [
          'Subtle and understated appearance',
          'Lighter visual weight',
          'Perfect for secondary navigation',
          'Complements primary elements',
        ];
      case TabBarVariant.outlined:
        return [
          'Clean border-based styling',
          'Minimal background interference',
          'Versatile for various layouts',
          'Good contrast without fill',
        ];
      case TabBarVariant.glass:
        return [
          'Modern translucent effect',
          'Overlay-friendly design',
          'Contemporary aesthetic appeal',
          'Works well over backgrounds',
        ];
      case TabBarVariant.transparent:
        return [
          'Minimal visual footprint',
          'Seamless integration',
          'Focus on content over chrome',
          'Subtle interaction feedback',
        ];
    }
  }
}
