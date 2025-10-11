import 'package:flutter/material.dart';
import 'package:core/src/base/master_view_cubit/master_view_cubit.dart';
import 'package:core/src/models/onboarding_models.dart';
import 'package:core/src/views/onboarding/cubit/onboarding_cubit.dart';
import 'package:core/src/views/onboarding/cubit/onboarding_state.dart';
import 'package:core/src/views/onboarding/widgets/onboarding_startup_widget.dart';
import 'package:core/src/views/onboarding/widgets/onboarding_space_widget.dart';
import 'package:core/src/views/onboarding/widgets/onboarding_enterprise_widget.dart';
import 'package:osmea_components/osmea_components.dart';

/// 🎯 **OSMEA Onboarding View**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Main onboarding view - supports 3 different styles (basic, space, and enterprise)
/// Uses BaseViewCubit for lifecycle management
/// UI only - no state management
///
/// {@category Views}
/// {@subCategory OnboardingView}

class OnboardingView extends MasterViewCubit<OnboardingCubit, OnboardingState> {
  /// Callback triggered when onboarding begins
  final VoidCallback? onStart;

  /// Callback to be called when onboarding is completed
  final VoidCallback? onCompleted;

  /// Callback to be called when onboarding is skipped
  final VoidCallback? onSkipped;

  /// Callback to be called when an error occurs
  final Function(String error)? onError;

  /// Callback triggered when user changes step
  final void Function(int stepIndex)? onStepChange;

  /// Callback triggered when user presses Continue/Home button
  final VoidCallback? onContinue;

  OnboardingView({
    required Function(String path) goRoute,
    Map<String, dynamic> arguments = const {'onboarding': true},
    this.onStart,
    this.onCompleted,
    this.onSkipped,
    this.onError,
    this.onStepChange,
    this.onContinue,
  }) : super(
          goRoute: goRoute,
          arguments: arguments,
        );

  @override
  Future<void> initialContent(viewModel, BuildContext context) async {
    debugPrint('🎉 Onboarding View Start!');

    // Trigger onStart callback
    onStart?.call();

    await viewModel.loadOnboardingData();

    // Listen for onboarding state changes
    viewModel.stream.listen((state) {
      if (state.status == OnboardingStatus.completed) {
        onCompleted?.call();
        onContinue?.call(); // Also trigger onContinue when completed
      } else if (state.status == OnboardingStatus.skipped) {
        onSkipped?.call();
      } else if (state.status == OnboardingStatus.error) {
        onError?.call(state.errorMessage ?? 'Unknown error');
      }

      // Trigger step change callback when current page changes
      onStepChange?.call(state.currentPageIndex);
    });
  }

  @override
  Widget viewContent(BuildContext context, viewModel, state) {
    return Scaffold(
      backgroundColor: _getBackgroundColor(context, state),
      body: _buildBody(context, state, viewModel),
    );
  }

  /// 🎨 Determine background color
  static Color _getBackgroundColor(
      BuildContext context, OnboardingState state) {
    // Use current page color if available
    final currentPageColor = state.currentPage?.getBackgroundColor();
    if (currentPageColor != null) return currentPageColor;

    // Use primary color from config if available
    final primaryColor = state.config?.getPrimaryColor();
    if (primaryColor != null) return primaryColor;

    // Default color
    return OsmeaColors.paperWhite;
  }

  /// 🏗️ Build main body
  static Widget _buildBody(
      BuildContext context, OnboardingState state, OnboardingCubit cubit) {
    switch (state.status) {
      case OnboardingStatus.loading:
        return _buildLoadingView(context);
      case OnboardingStatus.error:
        return _buildErrorView(context, state, cubit);
      case OnboardingStatus.ready:
        return _buildOnboardingContent(context, state, cubit);
      default:
        return _buildLoadingView(context);
    }
  }

  /// ⏳ Loading view using OSMEA components
  static Widget _buildLoadingView(BuildContext context) {
    return OsmeaComponents.container(
      padding: context.paddingNormal,
      child: OsmeaComponents.column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OsmeaComponents.progress(
            type: ProgressType.linearRounded,
            value: 0.0,
            size: ProgressSize.medium,
            progressColor: OsmeaColors.nordicBlue,
          ),
          OsmeaComponents.sizedBox(height: context.spacing16),
          OsmeaComponents.text(
            'Preparing...',
            variant: OsmeaTextVariant.titleMedium,
            color: OsmeaColors.pewter,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  /// ❌ Error view using OSMEA components
  static Widget _buildErrorView(
      BuildContext context, OnboardingState state, OnboardingCubit cubit) {
    return OsmeaComponents.container(
      padding: context.paddingNormal,
      child: OsmeaComponents.column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: context.iconSizeExtraHigh,
            color: OsmeaColors.red,
          ),
          OsmeaComponents.sizedBox(height: context.spacing16),
          OsmeaComponents.text(
            'An error occurred',
            variant: OsmeaTextVariant.titleLarge,
            color: OsmeaColors.thunder,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
          ),
          OsmeaComponents.sizedBox(height: context.spacing8),
          OsmeaComponents.text(
            state.errorMessage ?? 'Unknown error',
            variant: OsmeaTextVariant.bodyMedium,
            color: OsmeaColors.pewter,
            textAlign: TextAlign.center,
          ),
          OsmeaComponents.sizedBox(height: context.spacing16),
          OsmeaComponents.button(
            text: 'Try Again',
            onPressed: () => cubit.loadOnboardingData(),
            variant: ButtonVariant.primary,
            size: ButtonSize.medium,
            backgroundColor: OsmeaColors.nordicBlue,
            textColor: OsmeaColors.white,
          ),
        ],
      ),
    );
  }

  /// 📱 Onboarding content
  static Widget _buildOnboardingContent(
      BuildContext context, OnboardingState state, OnboardingCubit cubit) {
    if (!state.hasConfig || !state.hasPages) {
      return _buildErrorView(
        context,
        state.copyWith(
          status: OnboardingStatus.error,
          errorMessage: 'Onboarding data not found',
        ),
        cubit,
      );
    }

    return _buildOnboardingByStyle(context, state, cubit);
  }

  /// 🎨 Build onboarding based on style type
  static Widget _buildOnboardingByStyle(
      BuildContext context, OnboardingState state, OnboardingCubit cubit) {
    final style = state.config!.style;

    switch (style) {
      case OnboardingStyle.basic:
        return OnboardingStartupWidget(
          onPageChanged: (pageIndex) => cubit.goToPage(pageIndex),
          onNext: () => cubit.nextPage(),
          onPrevious: () => cubit.previousPage(),
          onSkip: () {
            cubit.skipOnboarding();
            // onSkipped callback will be handled by the cubit
          },
          onFinish: () => cubit.finishOnboarding(),
        );
      case OnboardingStyle.space:
        return OnboardingSpaceWidget(
          onPageChanged: (pageIndex) => cubit.goToPage(pageIndex),
          onNext: () => cubit.nextPage(),
          onPrevious: () => cubit.previousPage(),
          onSkip: () {
            cubit.skipOnboarding();
            // onSkipped callback will be handled by the cubit
          },
          onFinish: () => cubit.finishOnboarding(),
        );
      case OnboardingStyle.enterprise:
        return OnboardingEnterpriseWidget(
          onPageChanged: (pageIndex) => cubit.goToPage(pageIndex),
          onNext: () => cubit.nextPage(),
          onPrevious: () => cubit.previousPage(),
          onSkip: () {
            cubit.skipOnboarding();
            // onSkipped callback will be handled by the cubit
          },
          onFinish: () => cubit.finishOnboarding(),
        );
    }
  }
}

/// 🚀 Ready-to-use widget for easy implementation
/// Uses MasterViewCubit for dependency injection and lifecycle management
class OnboardingScreen extends StatelessWidget {
  /// Callback to be called when onboarding is completed
  final VoidCallback? onCompleted;

  /// Callback to be called when onboarding is skipped
  final VoidCallback? onSkipped;

  /// Callback to be called when an error occurs
  final Function(String error)? onError;

  /// Navigation callback for routing to other pages
  final Function(String path) goRoute;

  const OnboardingScreen({
    super.key,
    required this.goRoute,
    this.onCompleted,
    this.onSkipped,
    this.onError,
  });

  @override
  Widget build(BuildContext context) {
    return OnboardingView(
      goRoute: goRoute,
      onCompleted: onCompleted,
      onSkipped: onSkipped,
      onError: onError,
    );
  }
}
