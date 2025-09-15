import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:core/src/base/base_view_cubit.dart';
import 'package:core/src/views/splash/cubit/splash_cubit.dart';
import 'package:core/src/views/splash/cubit/splash_state.dart';
import 'package:core/src/models/splash_models.dart';
import 'package:core/src/views/splash/widgets/splash_startup_widget.dart';
import 'package:core/src/views/splash/widgets/splash_space_widget.dart';
import 'package:core/src/views/splash/widgets/splash_enterprise_widget.dart';
import 'package:osmea_components/osmea_components.dart';

/// 🚀 **OSMEA Splash View**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Main splash view - configuration-driven and stateless
/// Uses BaseViewCubit for lifecycle management
/// UI only - no state management
///
/// {@category Views}
/// {@subCategory SplashView}

class SplashView extends StatelessWidget {
  /// Callback to be called when splash is completed and ready to navigate
  final Function(String route)? onNavigationReady;

  /// Callback to be called when an error occurs
  final Function(String error)? onError;

  const SplashView({
    super.key,
    this.onNavigationReady,
    this.onError,
  });

  @override
  Widget build(BuildContext context) {
    return BaseViewCubit<SplashCubit, SplashState>(
      onViewModelReady: (cubit) {
        cubit.initializeSplash();
      },
      onStateListener: (context, state) {
        if (state == null) return;

        switch (state.status) {
          case SplashStatus.completed:
            if (state.navigationTarget != null) {
              onNavigationReady?.call(state.navigationTarget!);
            }
            break;
          case SplashStatus.error:
            if (state.errorMessage != null) {
              onError?.call(state.errorMessage!);
              if (kDebugMode) {
                debugPrint('❌ Splash error: ${state.errorMessage}');
              }
            }
            break;
          default:
            break;
        }
      },
      builder: (cubit, context, state) {
        return Scaffold(
          body: SafeArea(
            child: _buildSplashContent(context, cubit, state),
          ),
        );
      },
    );
  }

  /// 🎨 Build splash screen content based on state
  Widget _buildSplashContent(
      BuildContext context, SplashCubit cubit, SplashState state) {
    switch (state.status) {
      case SplashStatus.initial:
      case SplashStatus.loading:
        return _buildLoadingState(context, state);

      case SplashStatus.ready:
        return _buildReadyState(context, cubit, state);

      case SplashStatus.error:
        return _buildErrorState(context, cubit, state);

      case SplashStatus.completed:
        return _buildCompletedState(context, state);

      default:
        return _buildLoadingState(context, state);
    }
  }

  /// 🔄 Build loading state UI
  Widget _buildLoadingState(BuildContext context, SplashState state) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Simple loading indicator
          OsmeaComponents.loading(
            type: LoadingType.circularFade,
            size: 32,
            color: Theme.of(context).primaryColor,
          ),

          OsmeaComponents.sizedBox(height: context.spacing16),

          OsmeaComponents.text(
            'Initializing...',
            variant: OsmeaTextVariant.bodyMedium,
            color:
                Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
          ),
        ],
      ),
    );
  }

  /// ✅ Build ready state UI (main splash content)
  Widget _buildReadyState(
      BuildContext context, SplashCubit cubit, SplashState state) {
    // Use splash config model from state
    final config = state.config;
    if (config == null) {
      return _buildLoadingState(context, state);
    }

    return _buildSplashByStyle(context, state, cubit);
  }

  /// 🎨 Build splash based on style type
  Widget _buildSplashByStyle(
      BuildContext context, SplashState state, SplashCubit cubit) {
    final style = state.config!.style;

    switch (style) {
      case SplashStyle.startup:
        debugPrint("📱 Rendering SplashStartupWidget");
        return SplashStartupWidget(
          onLogoTap: () => cubit.handleLogoTap(),
        );
      case SplashStyle.space:
        debugPrint("🌌 Rendering SplashSpaceWidget");
        return SplashSpaceWidget(
          onLogoTap: () => cubit.handleLogoTap(),
        );
      case SplashStyle.enterprise:
        debugPrint("🏢 Rendering SplashEnterpriseWidget");
        return SplashEnterpriseWidget(
          onLogoTap: () => cubit.handleLogoTap(),
        );
    }
  }

  /// ❌ Build error state UI
  Widget _buildErrorState(
      BuildContext context, SplashCubit cubit, SplashState state) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(context.spacing24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Error icon
            Icon(
              Icons.error_outline,
              size: 64,
              color: Theme.of(context).colorScheme.error,
            ),

            OsmeaComponents.sizedBox(height: context.spacing24),

            // Error title
            OsmeaComponents.text(
              'Initialization Failed',
              variant: OsmeaTextVariant.headlineSmall,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.error,
              textAlign: TextAlign.center,
            ),

            OsmeaComponents.sizedBox(height: context.spacing16),

            // Error message
            if (state.errorMessage != null)
              OsmeaComponents.text(
                state.errorMessage!,
                variant: OsmeaTextVariant.bodyMedium,
                color: Theme.of(context)
                    .colorScheme
                    .onSurface
                    .withValues(alpha: 0.7),
                textAlign: TextAlign.center,
              ),

            OsmeaComponents.sizedBox(height: context.spacing32),

            // Retry button
            OsmeaComponents.button(
              text: 'Retry',
              onPressed: () => cubit.retryInitialization(),
              variant: ButtonVariant.primary,
            ),

            OsmeaComponents.sizedBox(height: context.spacing16),

            // Skip to home button
            OsmeaComponents.button(
              text: 'Continue Anyway',
              onPressed: () => cubit.navigateToHome(),
              variant: ButtonVariant.secondary,
            ),
          ],
        ),
      ),
    );
  }

  /// ✅ Build completed state UI (brief transition)
  Widget _buildCompletedState(BuildContext context, SplashState state) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Completion indicator
          Icon(
            Icons.check_circle_outline,
            size: 48,
            color: Theme.of(context).colorScheme.primary,
          ),

          OsmeaComponents.sizedBox(height: context.spacing16),

          OsmeaComponents.text(
            'Ready!',
            variant: OsmeaTextVariant.titleMedium,
            color: Theme.of(context).colorScheme.primary,
          ),
        ],
      ),
    );
  }
}
