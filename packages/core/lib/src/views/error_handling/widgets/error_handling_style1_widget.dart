import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:core/src/views/error_handling/cubit/error_handling_cubit.dart';
import 'package:core/src/views/error_handling/cubit/error_handling_state.dart';
import 'package:core/src/models/error_handling_models.dart';
import 'package:osmea_components/osmea_components.dart';

/// 🎨 **OSMEA Error Handling Style 1 Widget**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Classic error handling style - Centered error display with icon, text and buttons
///
/// {@category Widgets}
/// {@subCategory ErrorHandlingStyle1}

class ErrorHandlingStyle1Widget extends StatelessWidget {
  final VoidCallback? onRetry;
  final VoidCallback? onGoHome;
  final VoidCallback? onContactSupport;
  final VoidCallback? onGoBack;
  final VoidCallback? onDismiss;

  const ErrorHandlingStyle1Widget({
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
          color: state.currentErrorPage?.getBackgroundColor() ?? OsmeaColors.paperWhite,
          child: SafeArea(
            child: OsmeaComponents.container(
              padding: context.paddingNormal,
              child: OsmeaComponents.column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // 🚨 Error Icon Section
                  _buildErrorIcon(context, state),
                  
                  OsmeaComponents.sizedBox(height: context.spacing24),
                  
                  // 📝 Error Content Section
                  _buildErrorContent(context, state),
                  
                  OsmeaComponents.sizedBox(height: context.spacing32),
                  
                  // 🎯 Action Buttons Section
                  _buildActionButtons(context, state),
                  
                  // 🕐 Auto Retry Countdown (if active)
                  if (state.isAutoRetryActive) ...[
                    OsmeaComponents.sizedBox(height: context.spacing24),
                    _buildAutoRetryCountdown(context, state),
                  ],
                  
                  // 🐛 Debug Info (Debug mode only)
                  if (kDebugMode) ...[
                    OsmeaComponents.sizedBox(height: context.spacing24),
                    _buildDebugInfo(context, state),
                  ],
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// 🚨 Build error icon section
  Widget _buildErrorIcon(BuildContext context, ErrorHandlingState state) {
    return OsmeaComponents.container(
      child: OsmeaComponents.column(
        children: [
          // Error Icon
          Icon(
            _getErrorIcon(state.currentErrorType),
            size: context.iconSizeExtraHigh * 1.5,
            color: _getErrorIconColor(state.currentErrorType),
          ),
          
          if (state.errorCode != null) ...[
            OsmeaComponents.sizedBox(height: context.spacing8),
            OsmeaComponents.text(
              'Error Code: ${state.errorCode}',
              variant: OsmeaTextVariant.bodySmall,
              color: OsmeaColors.pewter,
              textAlign: TextAlign.center,
            ),
          ],
        ],
      ),
    );
  }

  /// 📝 Build error content section
  Widget _buildErrorContent(BuildContext context, ErrorHandlingState state) {
    return OsmeaComponents.column(
      children: [
        // Error Title
        OsmeaComponents.text(
          state.errorTitle,
          variant: OsmeaTextVariant.titleLarge,
          color: state.currentErrorPage?.getTextColor() ?? OsmeaColors.thunder,
          fontWeight: FontWeight.bold,
          textAlign: TextAlign.center,
        ),
        
        OsmeaComponents.sizedBox(height: context.spacing12),
        
        // Error Description
        OsmeaComponents.text(
          state.errorDescription,
          variant: OsmeaTextVariant.bodyMedium,
          color: OsmeaColors.pewter,
          textAlign: TextAlign.center,
          maxLines: 4,
        ),
        
        // Retry Count Info
        if (state.retryCount > 0) ...[
          OsmeaComponents.sizedBox(height: context.spacing8),
          OsmeaComponents.text(
            'Attempt: ${state.retryCount}/${state.maxRetryCount}',
            variant: OsmeaTextVariant.bodySmall,
            color: OsmeaColors.pewter,
            textAlign: TextAlign.center,
          ),
        ],
      ],
    );
  }

  /// 🎯 Build action buttons section
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
          backgroundColor: OsmeaColors.nordicBlue,
          textColor: OsmeaColors.white,
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
          backgroundColor: OsmeaColors.pewter,
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
          backgroundColor: OsmeaColors.white,
          textColor: OsmeaColors.nordicBlue,
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
          backgroundColor: OsmeaColors.white,
          textColor: OsmeaColors.pewter,
        ),
      );
    }

    // Back Button (if available)
    if (onGoBack != null) {
      buttons.add(
        OsmeaComponents.button(
          text: 'Back',
          onPressed: onGoBack,
          variant: ButtonVariant.ghost,
          size: ButtonSize.medium,
          textColor: OsmeaColors.pewter,
        ),
      );
    }

    return OsmeaComponents.column(
      children: buttons.map((button) => 
        OsmeaComponents.container(
          margin: EdgeInsets.only(bottom: context.spacing12),
          child: button,
        ),
      ).toList(),
    );
  }

  /// 🕐 Build auto retry countdown
  Widget _buildAutoRetryCountdown(BuildContext context, ErrorHandlingState state) {
    return OsmeaComponents.container(
      padding: context.paddingLow,
      decoration: BoxDecoration(
        color: OsmeaColors.nordicBlue.withOpacity(0.1),
        borderRadius: BorderRadius.circular(context.radiusLow),
      ),
      child: OsmeaComponents.row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.timer,
            size: context.iconSizeMedium,
            color: OsmeaColors.nordicBlue,
          ),
          OsmeaComponents.sizedBox(width: context.spacing8),
          OsmeaComponents.text(
            'Auto retry: ${state.autoRetryCountdown}s',
            variant: OsmeaTextVariant.bodySmall,
            color: OsmeaColors.nordicBlue,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }

  /// 🐛 Build debug info (Debug mode only)
  Widget _buildDebugInfo(BuildContext context, ErrorHandlingState state) {
    return OsmeaComponents.container(
      padding: context.paddingLow,
      decoration: BoxDecoration(
        color: OsmeaColors.red.withOpacity(0.1),
        borderRadius: BorderRadius.circular(context.radiusLow),
        border: Border.all(color: OsmeaColors.red.withOpacity(0.3)),
      ),
      child: OsmeaComponents.column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OsmeaComponents.text(
            '🐛 DEBUG INFO',
            variant: OsmeaTextVariant.bodySmall,
            color: OsmeaColors.red,
            fontWeight: FontWeight.bold,
          ),
          OsmeaComponents.sizedBox(height: context.spacing4),
          OsmeaComponents.text(
            'Type: ${state.currentErrorType}',
            variant: OsmeaTextVariant.bodySmall,
            color: OsmeaColors.red,
          ),
          if (state.errorMessage != null)
            OsmeaComponents.text(
              'Message: ${state.errorMessage}',
              variant: OsmeaTextVariant.bodySmall,
              color: OsmeaColors.red,
              maxLines: 2,
            ),
          if (state.originalException != null)
            OsmeaComponents.text(
              'Exception: ${state.originalException}',
              variant: OsmeaTextVariant.bodySmall,
              color: OsmeaColors.red,
              maxLines: 1,
            ),
        ],
      ),
    );
  }

  /// 🎨 Get error icon based on error type
  IconData _getErrorIcon(ErrorType errorType) {
    switch (errorType) {
      case ErrorType.network:
        return Icons.wifi_off;
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
        return Icons.build;
      case ErrorType.versionMismatch:
        return Icons.update;
      case ErrorType.localStorage:
        return Icons.storage;
      case ErrorType.permission:
        return Icons.block;
      default:
        return Icons.error_outline;
    }
  }

  /// 🎨 Get error icon color based on error type
  Color _getErrorIconColor(ErrorType errorType) {
    switch (errorType) {
      case ErrorType.network:
        return OsmeaColors.orange;
      case ErrorType.server:
        return OsmeaColors.red;
      case ErrorType.authentication:
      case ErrorType.authorization:
        return OsmeaColors.purple;
      case ErrorType.notFound:
        return OsmeaColors.blue;
      case ErrorType.timeout:
        return OsmeaColors.sunsetGlow;
      case ErrorType.maintenance:
        return OsmeaColors.pewter;
      case ErrorType.versionMismatch:
        return OsmeaColors.forestHeart;
      case ErrorType.localStorage:
        return OsmeaColors.amberFlame;
      case ErrorType.permission:
        return OsmeaColors.red;
      default:
        return OsmeaColors.red;
    }
  }
}
