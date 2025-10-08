import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:core/src/base/master_view_cubit/master_view_cubit.dart';
import 'package:core/src/views/image_detail/cubit/image_detail_cubit.dart';
import 'package:core/src/views/image_detail/cubit/image_detail_state.dart';
import 'package:osmea_components/osmea_components.dart';
import 'package:osmea_components/src/components/carousel/carousel.dart';

/// 📷 Image Detail View
/// Uses MasterViewCubit for lifecycle and Cubit-based state for navigation/selection.
class ImageDetailView extends MasterViewCubit<ImageDetailCubit, ImageDetailState> {
  final List<String> imageUrls;
  final int initialIndex;
  final String? heroTag;

  ImageDetailView({
    required Function(String path) goRoute,
    required this.imageUrls,
    this.initialIndex = 0,
    this.heroTag,
    Map<String, dynamic> arguments = const {},
  }) : super(
          goRoute: goRoute,
          arguments: arguments,
        );

  @override
  Future<void> initialContent(viewModel, BuildContext context) async {
    await viewModel.initialize(images: imageUrls, initialIndex: initialIndex, heroTag: heroTag);
  }

  @override
  Widget viewContent(BuildContext context, ImageDetailCubit viewModel, ImageDetailState state) {
    final hasImages = state.images.isNotEmpty;
    final media = MediaQuery.of(context);
    final double screenWidth = media.size.width;
    final double screenHeight = media.size.height;
    const double thumbnailsSectionHeight = 120; // thumbnails + paddings
    const double verticalPadding = 16;
    final double safeInsets = media.padding.top + media.padding.bottom;
    final double computedMainHeight = math.max(
      0,
      math.min(
        screenWidth * 1.1,
        screenHeight - safeInsets - thumbnailsSectionHeight,
      ),
    );

    return Scaffold(
      backgroundColor: OsmeaColors.white,
      body: SafeArea(
        child: hasImages
            ? OsmeaComponents.padding(
                padding: const EdgeInsets.all(verticalPadding),
                child: OsmeaComponents.column(
                  children: [
                    // Main carousel - responsive height with dots
                    OsmeaCarousel(
                      key: ValueKey('main_carousel_${state.currentIndex}'),
                      items: state.images.map((imageUrl) {
                        return Container(
                          width: screenWidth,
                          height: computedMainHeight*1.2,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.zero,
                            color: OsmeaColors.white,
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: InteractiveViewer(
                            minScale: 0.5,
                            maxScale: 4.0,
                            child: OsmeaComponents.image(
                              imageUrl: imageUrl,
                              variant: ImageVariant.normal,
                              size: ImageSize.custom,
                              width: screenWidth,
                              height: computedMainHeight*1.2,
                              fit: BoxFit.cover,
                              heroTag: state.heroTag,
                            ),
                          ),
                        );
                      }).toList(),
                      variant: CarouselVariant.modern,
                      size: CarouselSize.large,
                      height: computedMainHeight*1.2,
                      width: screenWidth,
                      showArrows: false,
                      showIndicators: true,
                      navigationType: CarouselNavigationType.dots,
                      indicatorPosition: CarouselIndicatorPosition.bottomCenter,
                      initialIndex: state.currentIndex,
                      indicatorType: CarouselIndicatorType.dot,
                      customPadding: EdgeInsets.zero,
                      itemSpacing: 0,
                      viewportFraction: 1.0,
                      onPageChanged: (index) => viewModel.goTo(index),
                    ),
                    // Thumbnails carousel
                    OsmeaComponents.padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: OsmeaCarousel(
                        variant: CarouselVariant.multi,
                        size: CarouselSize.large,
                        height: thumbnailsSectionHeight - 32,
                        width: screenWidth - 2 * verticalPadding,
                        showArrows: false,
                        showIndicators: false,
                        items: List.generate(state.images.length, (i) {
                          final isActive = i == state.currentIndex;
                          return OsmeaComponents.container(
                            decoration: BoxDecoration(
                              color: OsmeaColors.white,
                              borderRadius: context.borderRadiusMinStandard,
                              border: Border.all(
                                color: isActive ? OsmeaColors.black : OsmeaColors.silver,
                                width: isActive ? 2 : 1,
                              ),
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: OsmeaComponents.image(
                              imageUrl: state.images[i],
                              variant: ImageVariant.card,
                              size: ImageSize.custom,
                              width: 140,
                              height: 88,
                              fit: BoxFit.cover,
                              heroTag: isActive ? state.heroTag : null,
                            ),
                          );
                        }),
                        onItemTaps: List.generate(state.images.length, (i) => () => viewModel.goTo(i)),
                      ),
                    ),
                  ],
                ),
              )
            : _buildEmptyState(context),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return OsmeaComponents.center(
      child: OsmeaComponents.column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.photo_library_outlined,
            size: 48,
            color: OsmeaColors.black.withValues(alpha: .3),
          ),
          OsmeaComponents.sizedBox(height: 12),
          OsmeaComponents.text(
            'No images to show',
            variant: OsmeaTextVariant.titleMedium,
            color: OsmeaColors.black.withValues(alpha: 0.6),
            fontWeight: FontWeight.w500,
          ),
          OsmeaComponents.sizedBox(height: 6),
          OsmeaComponents.text(
            'Please provide at least one image URL.',
            variant: OsmeaTextVariant.bodyMedium,
            color: OsmeaColors.black.withValues(alpha: 0.5),
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}

/// Convenience widget to use the view like a screen
class ImageDetailScreen extends StatelessWidget {
  final List<String> imageUrls;
  final int initialIndex;
  final String? heroTag;
  final Function(String path) goRoute;

  const ImageDetailScreen({
    super.key,
    required this.goRoute,
    required this.imageUrls,
    this.initialIndex = 0,
    this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    return ImageDetailView(
      goRoute: goRoute,
      imageUrls: imageUrls,
      initialIndex: initialIndex,
      heroTag: heroTag,
    );
  }
}


