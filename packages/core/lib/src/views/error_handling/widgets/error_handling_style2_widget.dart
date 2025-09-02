import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:core/src/views/error_handling/cubit/error_handling_cubit.dart';
import 'package:core/src/views/error_handling/cubit/error_handling_state.dart';
import 'package:core/src/models/error_handling_models.dart';
import 'package:osmea_components/osmea_components.dart';

/// 🎨 **OSMEA Error Handling Style 2 Widget**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Modern full-screen error handling style with background overlay
///
/// {@category Widgets}
/// {@subCategory ErrorHandlingStyle2}

class ErrorHandlingStyle2Widget extends StatelessWidget {
  final VoidCallback? onRetry;
  final VoidCallback? onGoHome;
  final VoidCallback? onContactSupport;
  final VoidCallback? onGoBack;
  final VoidCallback? onDismiss;

  const ErrorHandlingStyle2Widget({
    super.key,
    this.onRetry,
    this.onGoHome,
    this.onContactSupport,
    this.onGoBack,
    this.onDismiss,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ErrorHandlingCubit, ErrorHandlingState>(
      builder: (context, state) {
        if (!state.isShowingError) {
          return const SizedBox.shrink();
        }

        return OsmeaComponents.container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                state.currentErrorPage?.getBackgroundColor()?.withOpacity(0.9) ?? 
                OsmeaColors.nordicBlue.withOpacity(0.9),
                state.currentErrorPage?.getBackgroundColor()?.withOpacity(0.7) ?? 
                OsmeaColors.nordicBlue.withOpacity(0.7),
              ],
            ),
          ),
          child: SafeArea(
            child: OsmeaComponents.column(
              children: [
                // 🔝 Top Section - Close/Back Button
                _buildTopSection(context, state),
                
                // 📱 Main Content - Expanded to fill remaining space
                Expanded(
                  child: OsmeaComponents.container(
                    padding: context.paddingNormal,
                    child: OsmeaComponents.column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // 🚨 Error Illustration/Icon
                        _buildErrorIllustration(context, state),
                        
                        OsmeaComponents.sizedBox(height: context.spacing32),
                        
                        // 📝 Error Content
                        _buildErrorContent(context, state),
                        
                        OsmeaComponents.sizedBox(height: context.spacing40),
                        
                        // 🎯 Action Buttons
                        _buildActionButtons(context, state),
                      ],
                    ),
                  ),
                ),
                
                // 🔽 Bottom Section - Auto Retry & Debug Info
                _buildBottomSection(context, state),
              ],
            ),
          ),
        );
      },
    );
  }

  /// 🔝 Build top section with close/back button
  Widget _buildTopSection(BuildContext context, ErrorHandlingState state) {
    return OsmeaComponents.container(
      padding: context.paddingNormal,
      child: OsmeaComponents.row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Back Button (if available)
          if (onGoBack != null)
            OsmeaComponents.iconButton(
              icon: Icon(Icons.arrow_back, color: OsmeaColors.white),
              onPressed: onGoBack,
              backgroundColor: OsmeaColors.white.withOpacity(0.2),
            )
          else
            const SizedBox(width: 48), // Placeholder for alignment
          
          // Error Code (if available)
          if (state.errorCode != null)
            OsmeaComponents.container(
              padding: EdgeInsets.symmetric(
                horizontal: context.spacing12,
                vertical: context.spacing4,
              ),
              decoration: BoxDecoration(
                color: OsmeaColors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(context.radiusHigh),
              ),
              child: OsmeaComponents.text(
                'Error: ${state.errorCode}',
                variant: OsmeaTextVariant.bodySmall,
                color: OsmeaColors.white,
                fontWeight: FontWeight.w500,
              ),
            )
          else
            const SizedBox(width: 48), // Placeholder for alignment
          
          // Close/Dismiss Button
          if (onDismiss != null)
            OsmeaComponents.iconButton(
              icon: Icon(Icons.close, color: OsmeaColors.white),
              onPressed: onDismiss,
              backgroundColor: OsmeaColors.white.withOpacity(0.2),
            )
          else
            const SizedBox(width: 48), // Placeholder for alignment
        ],
      ),
    );
  }

  /// 🚨 Build error illustration/icon
  Widget _buildErrorIllustration(BuildContext context, ErrorHandlingState state) {
    return OsmeaComponents.container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        color: OsmeaColors.white.withOpacity(0.1),
        shape: BoxShape.circle,
      ),
      child: OsmeaComponents.center(
        child: Icon(
          _getErrorIcon(state.currentErrorType),
          size: MediaQuery.of(context).size.width * 0.2,
          color: OsmeaColors.white,
        ),
      ),
    );
  }

  /// 📝 Build error content
  Widget _buildErrorContent(BuildContext context, ErrorHandlingState state) {
    return OsmeaComponents.column(
      children: [
        // Error Title
        OsmeaComponents.text(
          state.errorTitle,
          variant: OsmeaTextVariant.headlineSmall,
          color: OsmeaColors.white,
          fontWeight: FontWeight.bold,
          textAlign: TextAlign.center,
        ),
        
        OsmeaComponents.sizedBox(height: context.spacing16),
        
        // Error Description
        OsmeaComponents.text(
          state.errorDescription,
          variant: OsmeaTextVariant.bodyLarge,
          color: OsmeaColors.white.withOpacity(0.9),
          textAlign: TextAlign.center,
          maxLines: 4,
        ),
        
        // Retry Count Info
        if (state.retryCount > 0) ...[
          OsmeaComponents.sizedBox(height: context.spacing12),
          OsmeaComponents.container(
            padding: EdgeInsets.symmetric(
              horizontal: context.spacing12,
              vertical: context.spacing4,
            ),
            decoration: BoxDecoration(
              color: OsmeaColors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(context.radiusHigh),
            ),
            child: OsmeaComponents.text(
              'Attempt: ${state.retryCount}/${state.maxRetryCount}',
              variant: OsmeaTextVariant.bodySmall,
              color: OsmeaColors.white.withOpacity(0.8),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ],
    );
  }

  /// 🎯 Build action buttons
  Widget _buildActionButtons(BuildContext context, ErrorHandlingState state) {
    final buttons = <Widget>[];

    // Retry Button
    if (state.shouldShowRetryButton && !state.isRetrying) {
      buttons.add(
        OsmeaComponents.button(
          text: state.retryButtonText,
          onPressed: onRetry,
          variant: ButtonVariant.primary,
          size: ButtonSize.large,
          backgroundColor: OsmeaColors.white,
          textColor: OsmeaColors.nordicBlue,
        ),
      );
    }

    // Retrying Indicator
    if (state.isRetrying) {
      buttons.add(
        OsmeaComponents.button(
          text: 'Retrying...',
          onPressed: null,
          variant: ButtonVariant.primary,
          size: ButtonSize.large,
          backgroundColor: OsmeaColors.white.withOpacity(0.3),
          textColor: OsmeaColors.white,
        ),
      );
    }

    // Home Button
    if (state.shouldShowHomeButton) {
      buttons.add(
        OsmeaComponents.button(
          text: state.homeButtonText,
          onPressed: onGoHome,
          variant: ButtonVariant.outlined,
          size: ButtonSize.large,
          backgroundColor: Colors.transparent,
          textColor: OsmeaColors.white,
        ),
      );
    }

    // Support Button
    if (state.shouldShowSupportButton) {
      buttons.add(
        OsmeaComponents.button(
          text: state.supportButtonText,
          onPressed: onContactSupport,
          variant: ButtonVariant.ghost,
          size: ButtonSize.medium,
          textColor: OsmeaColors.white.withOpacity(0.8),
        ),
      );
    }

    return OsmeaComponents.column(
      children: buttons.map((button) => 
        OsmeaComponents.container(
          margin: EdgeInsets.only(bottom: context.spacing16),
          child: button,
        ),
      ).toList(),
    );
  }

  /// 🔽 Build bottom section
  Widget _buildBottomSection(BuildContext context, ErrorHandlingState state) {
    return OsmeaComponents.container(
      padding: context.paddingNormal,
      child: OsmeaComponents.column(
        children: [
          // Auto Retry Countdown
          if (state.isAutoRetryActive)
            _buildAutoRetryCountdown(context, state),
          
          // Debug Info (Debug mode only)
          if (kDebugMode) ...[
            if (state.isAutoRetryActive)
              OsmeaComponents.sizedBox(height: context.spacing12),
            _buildDebugInfo(context, state),
          ],
        ],
      ),
    );
  }

  /// 🕐 Build auto retry countdown
  Widget _buildAutoRetryCountdown(BuildContext context, ErrorHandlingState state) {
    return OsmeaComponents.container(
      padding: context.paddingLow,
      decoration: BoxDecoration(
        color: OsmeaColors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(context.radiusHigh),
      ),
      child: OsmeaComponents.row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.timer,
            size: context.iconSizeMedium,
            color: OsmeaColors.white,
          ),
          OsmeaComponents.sizedBox(width: context.spacing8),
          OsmeaComponents.text(
            'Auto retry: ${state.autoRetryCountdown}s',
            variant: OsmeaTextVariant.bodySmall,
            color: OsmeaColors.white,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }

  /// 🐛 Build debug info
  Widget _buildDebugInfo(BuildContext context, ErrorHandlingState state) {
    return OsmeaComponents.container(
      padding: context.paddingLow,
      decoration: BoxDecoration(
        color: OsmeaColors.red.withOpacity(0.2),
        borderRadius: BorderRadius.circular(context.radiusLow),
        border: Border.all(color: OsmeaColors.red.withOpacity(0.5)),
      ),
      child: OsmeaComponents.column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OsmeaComponents.text(
            '🐛 DEBUG INFO',
            variant: OsmeaTextVariant.bodySmall,
            color: OsmeaColors.white,
            fontWeight: FontWeight.bold,
          ),
          OsmeaComponents.sizedBox(height: context.spacing4),
          OsmeaComponents.text(
            'Type: ${state.currentErrorType}',
            variant: OsmeaTextVariant.bodySmall,
            color: OsmeaColors.white.withOpacity(0.9),
          ),
          if (state.errorMessage != null)
            OsmeaComponents.text(
              'Message: ${state.errorMessage}',
              variant: OsmeaTextVariant.bodySmall,
              color: OsmeaColors.white.withOpacity(0.9),
              maxLines: 2,
            ),
        ],
      ),
    );
  }

  /// 🎨 Get error icon based on error type
  IconData _getErrorIcon(ErrorType errorType) {
    switch (errorType) {
      case ErrorType.network:
        return Icons.cloud_off;
      case ErrorType.server:
        return Icons.dns;
      case ErrorType.authentication:
        return Icons.lock_outline;
      case ErrorType.authorization:
        return Icons.security;
      case ErrorType.notFound:
        return Icons.search_off;
      case ErrorType.timeout:
        return Icons.timer_off;
      case ErrorType.maintenance:
        return Icons.build_circle;
      case ErrorType.versionMismatch:
        return Icons.system_update;
      case ErrorType.localStorage:
        return Icons.storage;
      case ErrorType.permission:
        return Icons.block;
      default:
        return Icons.error_outline;
    }
  }
}
