import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:core/src/views/error_handling/cubit/error_handling_cubit.dart';
import 'package:core/src/views/error_handling/cubit/error_handling_state.dart';
import 'package:core/src/models/error_handling_models.dart';
import 'package:osmea_components/osmea_components.dart';

/// 🎨 **OSMEA Error Handling Style 3 Widget**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Minimal error handling style - Clean text-based design with minimal visual elements
///
/// {@category Widgets}
/// {@subCategory ErrorHandlingStyle3}

class ErrorHandlingStyle3Widget extends StatelessWidget {
  final VoidCallback? onRetry;
  final VoidCallback? onGoHome;
  final VoidCallback? onContactSupport;
  final VoidCallback? onGoBack;
  final VoidCallback? onDismiss;

  const ErrorHandlingStyle3Widget({
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
              padding: context.paddingHigh,
              child: OsmeaComponents.column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 🔝 Top Section - Navigation
                  _buildTopNavigation(context, state),
                  
                  // 📱 Main Content
                  Expanded(
                    child: OsmeaComponents.column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // 🚨 Error Badge
                        _buildErrorBadge(context, state),
                        
                        OsmeaComponents.sizedBox(height: context.spacing24),
                        
                        // 📝 Error Content
                        _buildErrorContent(context, state),
                        
                        OsmeaComponents.sizedBox(height: context.spacing32),
                        
                        // 🎯 Action Buttons (Minimal)
                        _buildMinimalActionButtons(context, state),
                      ],
                    ),
                  ),
                  
                  // 🔽 Bottom Section - Status & Debug
                  _buildBottomStatus(context, state),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// 🔝 Build top navigation
  Widget _buildTopNavigation(BuildContext context, ErrorHandlingState state) {
    return OsmeaComponents.row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Back Button (if available)
        if (onGoBack != null)
          OsmeaComponents.button(
            text: '← Back',
            onPressed: onGoBack,
            variant: ButtonVariant.ghost,
            textColor: OsmeaColors.pewter,
          )
        else
          const SizedBox.shrink(),
        
        // Error Code Badge (if available)
        if (state.errorCode != null)
          OsmeaComponents.container(
            padding: EdgeInsets.symmetric(
              horizontal: context.spacing8,
              vertical: context.spacing2,
            ),
            decoration: BoxDecoration(
              color: OsmeaColors.pewter.withOpacity(0.1),
              borderRadius: BorderRadius.circular(context.radiusLow),
            ),
            child: OsmeaComponents.text(
              '#${state.errorCode}',
              variant: OsmeaTextVariant.bodySmall,
              color: OsmeaColors.pewter,
              fontFamily: 'monospace',
            ),
          ),
      ],
    );
  }

  /// 🚨 Build error badge
  Widget _buildErrorBadge(BuildContext context, ErrorHandlingState state) {
    return OsmeaComponents.container(
      padding: EdgeInsets.symmetric(
        horizontal: context.spacing12,
        vertical: context.spacing6,
      ),
      decoration: BoxDecoration(
        color: _getErrorTypeColor(state.currentErrorType).withOpacity(0.1),
        borderRadius: BorderRadius.circular(context.radiusLow),
        border: Border.all(
          color: _getErrorTypeColor(state.currentErrorType).withOpacity(0.3),
          width: 1,
        ),
      ),
      child: OsmeaComponents.row(
        mainAxisSize: MainAxisSize.min,
        children: [
          OsmeaComponents.container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: _getErrorTypeColor(state.currentErrorType),
              shape: BoxShape.circle,
            ),
          ),
          OsmeaComponents.sizedBox(width: context.spacing8),
          OsmeaComponents.text(
            _getErrorTypeLabel(state.currentErrorType),
            variant: OsmeaTextVariant.bodySmall,
            color: _getErrorTypeColor(state.currentErrorType),
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }

  /// 📝 Build error content
  Widget _buildErrorContent(BuildContext context, ErrorHandlingState state) {
    return OsmeaComponents.column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Error Title
        OsmeaComponents.text(
          state.errorTitle,
          variant: OsmeaTextVariant.headlineMedium,
          color: state.currentErrorPage?.getTextColor() ?? OsmeaColors.thunder,
          fontWeight: FontWeight.w600,
        ),
        
        OsmeaComponents.sizedBox(height: context.spacing16),
        
        // Error Description
        OsmeaComponents.text(
          state.errorDescription,
          variant: OsmeaTextVariant.bodyLarge,
          color: OsmeaColors.pewter,
        ),
        
        // Additional Error Details (if available)
        if (state.errorMessage != null && 
            state.errorMessage != state.errorDescription) ...[
          OsmeaComponents.sizedBox(height: context.spacing12),
          OsmeaComponents.container(
            padding: context.paddingLow,
            decoration: BoxDecoration(
              color: OsmeaColors.pewter.withOpacity(0.05),
              borderRadius: BorderRadius.circular(context.radiusLow),
            ),
            child: OsmeaComponents.text(
              'Detail: ${state.errorMessage}',
              variant: OsmeaTextVariant.bodySmall,
              color: OsmeaColors.pewter,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
        
        // Retry Count Info (if available)
        if (state.retryCount > 0) ...[
          OsmeaComponents.sizedBox(height: context.spacing12),
          OsmeaComponents.text(
            'Attempt count: ${state.retryCount}/${state.maxRetryCount}',
            variant: OsmeaTextVariant.bodySmall,
            color: OsmeaColors.pewter,
          ),
        ],
      ],
    );
  }

  /// 🎯 Build minimal action buttons
  Widget _buildMinimalActionButtons(BuildContext context, ErrorHandlingState state) {
    final buttons = <Widget>[];

    // Retry Button (Text style)
    if (state.shouldShowRetryButton && !state.isRetrying) {
      buttons.add(
        OsmeaComponents.button(
          text: '${state.retryButtonText} →',
          onPressed: onRetry,
          variant: ButtonVariant.ghost,
          textColor: OsmeaColors.nordicBlue,
        ),
      );
    }

    // Retrying Indicator (Text style)
    if (state.isRetrying) {
      buttons.add(
        OsmeaComponents.row(
          mainAxisSize: MainAxisSize.min,
          children: [
            OsmeaComponents.loading(
              type: LoadingType.circularFade,
              size: 16,
              color: OsmeaColors.nordicBlue,
            ),
            OsmeaComponents.sizedBox(width: context.spacing8),
            OsmeaComponents.text(
              'Retrying...',
              variant: OsmeaTextVariant.bodyMedium,
              color: OsmeaColors.nordicBlue,
            ),
          ],
        ),
      );
    }

    // Home Button (Text style)
    if (state.shouldShowHomeButton) {
      buttons.add(
        OsmeaComponents.button(
          text: '${state.homeButtonText} →',
          onPressed: onGoHome,
          variant: ButtonVariant.ghost,
          textColor: OsmeaColors.pewter,
        ),
      );
    }

    // Support Button (Text style)
    if (state.shouldShowSupportButton) {
      buttons.add(
        OsmeaComponents.button(
          text: '${state.supportButtonText} →',
          onPressed: onContactSupport,
          variant: ButtonVariant.ghost,
          textColor: OsmeaColors.pewter,
        ),
      );
    }

    return OsmeaComponents.column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: buttons.map((button) => 
        OsmeaComponents.container(
          margin: EdgeInsets.only(bottom: context.spacing8),
          child: button,
        ),
      ).toList(),
    );
  }

  /// 🔽 Build bottom status
  Widget _buildBottomStatus(BuildContext context, ErrorHandlingState state) {
    return OsmeaComponents.column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Auto Retry Status
        if (state.isAutoRetryActive)
          _buildAutoRetryStatus(context, state),
        
        // Debug Info (Debug mode only)
        if (kDebugMode) ...[
          if (state.isAutoRetryActive)
            OsmeaComponents.sizedBox(height: context.spacing8),
          _buildMinimalDebugInfo(context, state),
        ],
      ],
    );
  }

  /// 🕐 Build auto retry status
  Widget _buildAutoRetryStatus(BuildContext context, ErrorHandlingState state) {
    return OsmeaComponents.row(
      children: [
        OsmeaComponents.container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(
            color: OsmeaColors.nordicBlue,
            shape: BoxShape.circle,
          ),
        ),
        OsmeaComponents.sizedBox(width: context.spacing8),
        OsmeaComponents.text(
          'Auto retry in ${state.autoRetryCountdown} seconds',
          variant: OsmeaTextVariant.bodySmall,
          color: OsmeaColors.pewter,
        ),
      ],
    );
  }

  /// 🐛 Build minimal debug info
  Widget _buildMinimalDebugInfo(BuildContext context, ErrorHandlingState state) {
    return OsmeaComponents.text(
      'Debug: ${state.currentErrorType} | Retry: ${state.retryCount}/${state.maxRetryCount}',
      variant: OsmeaTextVariant.bodySmall,
      color: OsmeaColors.pewter.withOpacity(0.7),
      fontFamily: 'monospace',
    );
  }

  /// 🎨 Get error type color
  Color _getErrorTypeColor(ErrorType errorType) {
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

  /// 🏷️ Get error type label
  String _getErrorTypeLabel(ErrorType errorType) {
    switch (errorType) {
      case ErrorType.network:
        return 'Connection Error';
      case ErrorType.server:
        return 'Server Error';
      case ErrorType.authentication:
        return 'Authentication';
      case ErrorType.authorization:
        return 'Authorization';
      case ErrorType.notFound:
        return 'Not Found';
      case ErrorType.timeout:
        return 'Timeout';
      case ErrorType.maintenance:
        return 'Maintenance Mode';
      case ErrorType.versionMismatch:
        return 'Version Mismatch';
      case ErrorType.localStorage:
        return 'Storage Error';
      case ErrorType.permission:
        return 'Permission Error';
      default:
        return 'General Error';
    }
  }
}
