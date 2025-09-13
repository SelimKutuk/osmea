import 'package:flutter/material.dart';
import 'package:osmea_components/osmea_components.dart';
import '../sections/header_section.dart';
import '../utils/tabbar_builder.dart';
import '../data/tabbar_descriptions.dart';

/// 🎯 **TabBar Showcase Widget**
/// 
/// Main widget that coordinates all sections and displays the interactive TabBar
/// This is the main coordinator that assembles all the modular components
class TabBarShowcaseWidget extends StatefulWidget {
  final int variantIndex;
  final TabBarStyle style;
  final TabBarIndicatorStyle indicatorStyle;
  final int tabCount;
  final bool showIcons;
  final Color activeFillColor;
  final bool enabled;

  const TabBarShowcaseWidget({
    Key? key,
    required this.variantIndex,
    required this.style,
    required this.indicatorStyle,
    required this.tabCount,
    required this.showIcons,
    required this.activeFillColor,
    required this.enabled,
  }) : super(key: key);

  @override
  State<TabBarShowcaseWidget> createState() => _TabBarShowcaseWidgetState();
}

class _TabBarShowcaseWidgetState extends State<TabBarShowcaseWidget> {
  int currentIndex = 0;

  @override
  void didUpdateWidget(TabBarShowcaseWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Reset index if tab count changed and current index is out of bounds
    if (widget.tabCount != oldWidget.tabCount && currentIndex >= widget.tabCount) {
      currentIndex = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    final variant = TabBarVariantNames.getVariant(widget.variantIndex);
    final tabs = TabBarBuilder.getTabItems(
      count: widget.tabCount,
      showIcons: widget.showIcons,
      scrollable: widget.style == TabBarStyle.scrollable,
    );

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24) + const EdgeInsets.only(top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with current configuration
            HeaderSection(
              variantIndex: widget.variantIndex,
              style: widget.style,
              indicatorStyle: widget.indicatorStyle,
              tabCount: widget.tabCount,
              showIcons: widget.showIcons,
              currentIndex: currentIndex,
            ),
            const SizedBox(height: 32),

            // Interactive TabBar Demo
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Interactive TabBar',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: TabBarBuilder.buildTabBar(
                      variant: variant,
                      style: widget.style,
                      indicatorStyle: widget.indicatorStyle,
                      tabs: tabs,
                      currentIndex: currentIndex,
                      onTabTap: (index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      activeFillColor: widget.indicatorStyle == TabBarIndicatorStyle.fill 
                          ? widget.activeFillColor 
                          : null,
                      enabled: widget.enabled,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
