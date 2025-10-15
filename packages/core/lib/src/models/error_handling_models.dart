import 'package:flutter/material.dart';

/// 🎯 **OSMEA Error Handling Models**
///
/// Copyright (c) 2025, OSMEA Team
/// Simple model structures for error handling system (like loading and onboarding)

/// 🚨 Error handling page model
class ErrorPageModel {
  /// Error title
  final String title;

  /// Error description
  final String description;

  /// Error icon (asset path)
  final String? iconPath;

  /// Error image (asset path)
  final String? imagePath;

  /// Page background color
  final String? backgroundColor;

  /// Text color
  final String? textColor;

  /// Retry button text
  final String? retryButtonText;

  /// Home button text
  final String? homeButtonText;

  /// Support button text
  final String? supportButtonText;

  /// Error code
  final String? errorCode;

  /// Error type
  final ErrorType errorType;

  const ErrorPageModel({
    required this.title,
    required this.description,
    required this.errorType,
    this.iconPath,
    this.imagePath,
    this.backgroundColor,
    this.textColor,
    this.retryButtonText,
    this.homeButtonText,
    this.supportButtonText,
    this.errorCode,
  });

  /// Create ErrorPageModel from JSON
  factory ErrorPageModel.fromJson(Map<String, dynamic> json) {
    return ErrorPageModel(
      title: json['title'] as String,
      description: json['description'] as String,
      errorType: ErrorType.values.firstWhere(
        (type) => type.name == (json['error_type'] as String? ?? 'general'),
        orElse: () => ErrorType.general,
      ),
      iconPath: json['icon_path'] as String?,
      imagePath: json['image_path'] as String?,
      backgroundColor: json['background_color'] as String?,
      textColor: json['text_color'] as String?,
      retryButtonText: json['retry_button_text'] as String?,
      homeButtonText: json['home_button_text'] as String?,
      supportButtonText: json['support_button_text'] as String?,
      errorCode: json['error_code'] as String?,
    );
  }

  /// Convert ErrorPageModel to JSON
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'error_type': errorType.name,
      'icon_path': iconPath,
      'image_path': imagePath,
      'background_color': backgroundColor,
      'text_color': textColor,
      'retry_button_text': retryButtonText,
      'home_button_text': homeButtonText,
      'support_button_text': supportButtonText,
      'error_code': errorCode,
    };
  }

  /// Convert background color string to Color
  Color? getBackgroundColor() {
    if (backgroundColor == null) return null;
    return _parseColor(backgroundColor!);
  }

  /// Convert text color string to Color
  Color? getTextColor() {
    if (textColor == null) return null;
    return _parseColor(textColor!);
  }

  /// Convert hex color string to Color
  Color? _parseColor(String colorString) {
    try {
      String hex = colorString.replaceAll('#', '');

      // Support both 6-digit and 8-digit hex colors
      if (hex.length == 6) {
        hex = 'FF$hex'; // Add full alpha value for 6-digit colors
      } else if (hex.length == 8) {
        // 8-digit hex: RRGGBBAA format
        // Convert to Flutter's ARGB format
        String alpha = hex.substring(6, 8); // Last 2 digits are alpha
        String rgb = hex.substring(0, 6); // First 6 digits are RGB
        hex = alpha + rgb; // Reorder to ARGB
      }

      return Color(int.parse(hex, radix: 16));
    } catch (e) {
      debugPrint('❌ Error parsing color "$colorString": $e');
      return null;
    }
  }
}

/// 🎨 Error handling configuration model (simple like loading and onboarding)
class ErrorHandlingConfigModel {
  /// Collection of error page configurations by error type
  final Map<ErrorType, ErrorPageModel> errorPages;

  /// Error handling style (like loading and onboarding)
  final ErrorHandlingStyle style;

  /// Automatic retry time (seconds) - null if no automatic retry
  final int? autoRetrySeconds;

  /// Whether to show retry button
  final bool showRetryButton;

  /// Whether to show home button
  final bool showHomeButton;

  /// Whether to show support button
  final bool showSupportButton;

  /// Animation duration (milliseconds)
  final int animationDuration;

  /// Custom error title from config
  final String? errorTitle;

  /// Custom error description from config
  final String? errorDescription;

  /// General theme color
  final String? primaryColor;

  /// Secondary theme color
  final String? secondaryColor;

  /// Background color
  final String? backgroundColor;

  /// Text color
  final String? textColor;

  /// Whether to enable haptic feedback
  final bool enableHapticFeedback;

  /// Default error message for unknown errors
  final String defaultErrorMessage;

  /// Support email for error reporting
  final String? supportEmail;

  /// Support phone for error reporting
  final String? supportPhone;

  /// Whether to log errors automatically
  final bool enableErrorLogging;

  const ErrorHandlingConfigModel({
    required this.errorPages,
    required this.style,
    this.autoRetrySeconds,
    this.showRetryButton = true,
    this.showHomeButton = true,
    this.showSupportButton = true,
    this.animationDuration = 400,
    this.errorTitle,
    this.errorDescription,
    this.primaryColor,
    this.secondaryColor,
    this.backgroundColor,
    this.textColor,
    this.enableHapticFeedback = true,
    this.defaultErrorMessage = 'Something went wrong',
    this.supportEmail,
    this.supportPhone,
    this.enableErrorLogging = true,
  });

  /// Create ErrorHandlingConfigModel from JSON
  factory ErrorHandlingConfigModel.fromJson(Map<String, dynamic> json) {
    final errorPagesJson = json['error_pages'] as Map<String, dynamic>? ?? {};
    final errorPages = <ErrorType, ErrorPageModel>{};

    for (final entry in errorPagesJson.entries) {
      final errorType = ErrorType.values.firstWhere(
        (type) => type.name == entry.key,
        orElse: () => ErrorType.general,
      );
      errorPages[errorType] =
          ErrorPageModel.fromJson(entry.value as Map<String, dynamic>);
    }

    return ErrorHandlingConfigModel(
      errorPages: errorPages,
      style: ErrorHandlingStyle.values.firstWhere(
        (style) => style.name == (json['style'] as String? ?? 'startup'),
        orElse: () => ErrorHandlingStyle.startup,
      ),
      autoRetrySeconds: json['auto_retry_seconds'] as int?,
      showRetryButton: json['show_retry_button'] as bool? ?? true,
      showHomeButton: json['show_home_button'] as bool? ?? true,
      showSupportButton: json['show_support_button'] as bool? ?? true,
      animationDuration: json['animation_duration'] as int? ?? 300,
      errorTitle: json['errorTitle'] as String?,
      errorDescription: json['errorDescription'] as String?,
      primaryColor: json['primary_color'] as String?,
      secondaryColor: json['secondary_color'] as String?,
      backgroundColor: json['background_color'] as String?,
      textColor: json['text_color'] as String?,
      enableHapticFeedback: json['enable_haptic_feedback'] as bool? ?? false,
      defaultErrorMessage: json['default_error_message'] as String? ??
          'An unexpected error occurred',
      supportEmail: json['support_email'] as String?,
      supportPhone: json['support_phone'] as String?,
      enableErrorLogging: json['enable_error_logging'] as bool? ?? true,
    );
  }

  /// Convert ErrorHandlingConfigModel to JSON
  Map<String, dynamic> toJson() {
    return {
      'error_pages': errorPages.map(
        (key, value) => MapEntry(key.name, value.toJson()),
      ),
      'style': style.name,
      'auto_retry_seconds': autoRetrySeconds,
      'show_retry_button': showRetryButton,
      'show_home_button': showHomeButton,
      'show_support_button': showSupportButton,
      'animation_duration': animationDuration,
      'errorTitle': errorTitle,
      'errorDescription': errorDescription,
      'primary_color': primaryColor,
      'secondary_color': secondaryColor,
      'background_color': backgroundColor,
      'text_color': textColor,
      'enable_haptic_feedback': enableHapticFeedback,
      'default_error_message': defaultErrorMessage,
      'support_email': supportEmail,
      'support_phone': supportPhone,
      'enable_error_logging': enableErrorLogging,
    };
  }

  /// Get primary color as Color object
  Color? getPrimaryColor() {
    if (primaryColor == null) return null;
    return _parseColor(primaryColor!);
  }

  /// Get secondary color as Color object
  Color? getSecondaryColor() {
    if (secondaryColor == null) return null;
    return _parseColor(secondaryColor!);
  }

  /// Get background color as Color object
  Color? getBackgroundColor() {
    if (backgroundColor == null) return null;
    return _parseColor(backgroundColor!);
  }

  /// Get text color as Color object
  Color? getTextColor() {
    if (textColor == null) return null;
    return _parseColor(textColor!);
  }

  /// Convert hex color string to Color
  Color? _parseColor(String colorString) {
    try {
      String hex = colorString.replaceAll('#', '');

      // Support both 6-digit and 8-digit hex colors
      if (hex.length == 6) {
        hex = 'FF$hex'; // Add full alpha value for 6-digit colors
      } else if (hex.length == 8) {
        // 8-digit hex: RRGGBBAA format
        // Convert to Flutter's ARGB format
        String alpha = hex.substring(6, 8); // Last 2 digits are alpha
        String rgb = hex.substring(0, 6); // First 6 digits are RGB
        hex = alpha + rgb; // Reorder to ARGB
      }

      return Color(int.parse(hex, radix: 16));
    } catch (e) {
      debugPrint('❌ Error parsing color "$colorString": $e');
      return null;
    }
  }

  /// Development warning message (space widget compatibility)
  String? get devWarningMessage =>
      'This screen is for development purposes only.';

  /// Production warning message (space widget compatibility)
  String? get prodWarningMessage =>
      'Should not be displayed in production environment.';

  /// Common footer message (space widget compatibility)
  String? get commonUnderMessage => null;
}

/// 🎨 Error handling styles (simple like loading and onboarding)
enum ErrorHandlingStyle {
  startup,
  space,
  enterprise,
}

/// 🚨 Error types
enum ErrorType {
  general,
  network,
  server,
  authentication,
  authorization,
  notFound,
  timeout,
  maintenance,
  versionMismatch,
  localStorage,
  permission,
}

/// 📱 Error handling status
enum ErrorHandlingStatus {
  initial,
  loading,
  showingError,
  retrying,
  resolved,
}

/// 🎯 Error handling actions
enum ErrorHandlingAction {
  retry,
  goHome,
  contactSupport,
  dismiss,
  goBack,
}
