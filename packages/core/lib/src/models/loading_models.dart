import 'package:flutter/material.dart';

/// 🔄 **OSMEA Loading Models**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// Model structures to be used in the loading system
///
/// {@category Models}
/// {@subCategory LoadingModels}

/// 🔄 Loading page model
class LoadingPageModel {
  /// Loading title
  final String title;

  /// Loading description
  final String description;

  /// Loading steps list
  final List<String>? loadingSteps;

  /// Loading icon (asset path)
  final String? iconPath;

  /// Loading image (asset path)
  final String? imagePath;

  /// Loading animation (Lottie file path)
  final String? animationPath;

  /// Page background color
  final String? backgroundColor;

  /// Text color
  final String? textColor;

  /// Progress color
  final String? progressColor;

  /// Cancel button text
  final String? cancelButtonText;

  /// Loading message when completed
  final String? completedMessage;

  /// Loading message when error
  final String? errorMessage;

  /// Loading type
  final LoadingModelType loadingType;

  /// Step duration in milliseconds
  final int stepDuration;

  /// Whether to show progress percentage
  final bool showProgress;

  /// Whether to show cancel button
  final bool showCancelButton;

  /// Whether to auto-navigate when completed
  final bool autoNavigateOnComplete;

  /// Target route after completion
  final String? targetRoute;

  const LoadingPageModel({
    required this.title,
    required this.description,
    required this.loadingType,
    this.loadingSteps,
    this.iconPath,
    this.imagePath,
    this.animationPath,
    this.backgroundColor,
    this.textColor,
    this.progressColor,
    this.cancelButtonText,
    this.completedMessage,
    this.errorMessage,
    this.stepDuration = 800,
    this.showProgress = true,
    this.showCancelButton = false,
    this.autoNavigateOnComplete = true,
    this.targetRoute,
  });

  /// Create LoadingPageModel from JSON
  factory LoadingPageModel.fromJson(Map<String, dynamic> json) {
    return LoadingPageModel(
      title: json['title'] as String,
      description: json['description'] as String,
      loadingType: LoadingModelType.values.firstWhere(
        (type) => type.name == (json['loading_type'] as String? ?? 'general'),
        orElse: () => LoadingModelType.general,
      ),
      loadingSteps: (json['loading_steps'] as List<dynamic>?)
          ?.map((step) => step as String)
          .toList(),
      iconPath: json['icon_path'] as String?,
      imagePath: json['image_path'] as String?,
      animationPath: json['animation_path'] as String?,
      backgroundColor: json['background_color'] as String?,
      textColor: json['text_color'] as String?,
      progressColor: json['progress_color'] as String?,
      cancelButtonText: json['cancel_button_text'] as String?,
      completedMessage: json['completed_message'] as String?,
      errorMessage: json['error_message'] as String?,
      stepDuration: json['step_duration'] as int? ?? 800,
      showProgress: json['show_progress'] as bool? ?? true,
      showCancelButton: json['show_cancel_button'] as bool? ?? false,
      autoNavigateOnComplete:
          json['auto_navigate_on_complete'] as bool? ?? true,
      targetRoute: json['target_route'] as String?,
    );
  }

  /// Convert LoadingPageModel to JSON
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'loading_type': loadingType.name,
      'loading_steps': loadingSteps,
      'icon_path': iconPath,
      'image_path': imagePath,
      'animation_path': animationPath,
      'background_color': backgroundColor,
      'text_color': textColor,
      'progress_color': progressColor,
      'cancel_button_text': cancelButtonText,
      'completed_message': completedMessage,
      'error_message': errorMessage,
      'step_duration': stepDuration,
      'show_progress': showProgress,
      'show_cancel_button': showCancelButton,
      'auto_navigate_on_complete': autoNavigateOnComplete,
      'target_route': targetRoute,
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

  /// Convert progress color string to Color
  Color? getProgressColor() {
    if (progressColor == null) return null;
    return _parseColor(progressColor!);
  }

  /// Convert hex color string to Color
  Color? _parseColor(String colorString) {
    try {
      String hex = colorString.replaceAll('#', '');
      if (hex.length == 6) {
        hex = 'FF$hex'; // Add alpha value
      }
      return Color(int.parse(hex, radix: 16));
    } catch (e) {
      return null;
    }
  }

  /// Get step duration as Duration object
  Duration get stepDurationObject => Duration(milliseconds: stepDuration);

  @override
  String toString() {
    return 'LoadingPageModel(title: $title, loadingType: $loadingType, steps: ${loadingSteps?.length ?? 0})';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is LoadingPageModel &&
        other.title == title &&
        other.description == description &&
        other.loadingType == loadingType &&
        other.stepDuration == stepDuration;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        description.hashCode ^
        loadingType.hashCode ^
        stepDuration.hashCode;
  }
}

/// 🎨 Loading configuration model
class LoadingConfigModel {
  /// Page configurations for different loading types
  final Map<LoadingModelType, LoadingPageModel> loadingPages;

  /// Loading UI style
  final LoadingStyle style;

  /// Default step duration (milliseconds)
  final int defaultStepDuration;

  /// Whether to show progress by default
  final bool defaultShowProgress;

  /// Whether to show cancel button by default
  final bool defaultShowCancelButton;

  /// Animation duration for transitions (milliseconds)
  final int animationDuration;

  /// Primary theme color
  final String? primaryColor;

  /// Secondary theme color
  final String? secondaryColor;

  /// Default background color
  final String? defaultBackgroundColor;

  /// Progress indicator type
  final ProgressIndicatorType progressIndicatorType;

  /// Whether to enable haptic feedback
  final bool enableHapticFeedback;

  /// Whether to keep screen awake during loading
  final bool keepScreenAwake;

  /// Global loading timeout (seconds) - null if no timeout
  final int? globalTimeoutSeconds;

  /// Default messages
  final LoadingMessages messages;

  const LoadingConfigModel({
    required this.loadingPages,
    this.style = LoadingStyle.startup,
    this.defaultStepDuration = 800,
    this.defaultShowProgress = true,
    this.defaultShowCancelButton = false,
    this.animationDuration = 300,
    this.primaryColor,
    this.secondaryColor,
    this.defaultBackgroundColor,
    this.progressIndicatorType = ProgressIndicatorType.circular,
    this.enableHapticFeedback = false,
    this.keepScreenAwake = false,
    this.globalTimeoutSeconds,
    this.messages = const LoadingMessages(),
  });

  /// Create LoadingConfigModel from JSON
  factory LoadingConfigModel.fromJson(Map<String, dynamic> json) {
    final loadingPagesJson =
        json['loading_pages'] as Map<String, dynamic>? ?? {};
    final loadingPages = <LoadingModelType, LoadingPageModel>{};

    for (final entry in loadingPagesJson.entries) {
      final loadingType = LoadingModelType.values.firstWhere(
        (type) => type.name == entry.key,
        orElse: () => LoadingModelType.general,
      );
      loadingPages[loadingType] =
          LoadingPageModel.fromJson(entry.value as Map<String, dynamic>);
    }

    return LoadingConfigModel(
      loadingPages: loadingPages,
      style: LoadingStyle.values.firstWhere(
        (style) => style.name == (json['style'] as String? ?? 'startup'),
        orElse: () => LoadingStyle.startup,
      ),
      defaultStepDuration: json['default_step_duration'] as int? ?? 800,
      defaultShowProgress: json['default_show_progress'] as bool? ?? true,
      defaultShowCancelButton:
          json['default_show_cancel_button'] as bool? ?? false,
      animationDuration: json['animation_duration'] as int? ?? 300,
      primaryColor: json['primary_color'] as String?,
      secondaryColor: json['secondary_color'] as String?,
      defaultBackgroundColor: json['default_background_color'] as String?,
      progressIndicatorType: ProgressIndicatorType.values.firstWhere(
        (type) =>
            type.name ==
            (json['progress_indicator_type'] as String? ?? 'circular'),
        orElse: () => ProgressIndicatorType.circular,
      ),
      enableHapticFeedback: json['enable_haptic_feedback'] as bool? ?? false,
      keepScreenAwake: json['keep_screen_awake'] as bool? ?? false,
      globalTimeoutSeconds: json['global_timeout_seconds'] as int?,
      messages: json['messages'] != null
          ? LoadingMessages.fromJson(json['messages'] as Map<String, dynamic>)
          : const LoadingMessages(),
    );
  }

  /// Convert LoadingConfigModel to JSON
  Map<String, dynamic> toJson() {
    final loadingPagesJson = <String, dynamic>{};
    for (final entry in loadingPages.entries) {
      loadingPagesJson[entry.key.name] = entry.value.toJson();
    }

    return {
      'loading_pages': loadingPagesJson,
      'style': style.name,
      'default_step_duration': defaultStepDuration,
      'default_show_progress': defaultShowProgress,
      'default_show_cancel_button': defaultShowCancelButton,
      'animation_duration': animationDuration,
      'primary_color': primaryColor,
      'secondary_color': secondaryColor,
      'default_background_color': defaultBackgroundColor,
      'progress_indicator_type': progressIndicatorType.name,
      'enable_haptic_feedback': enableHapticFeedback,
      'keep_screen_awake': keepScreenAwake,
      'global_timeout_seconds': globalTimeoutSeconds,
      'messages': messages.toJson(),
    };
  }

  /// Get loading page model for specific type
  LoadingPageModel? getLoadingPage(LoadingModelType loadingType) {
    return loadingPages[loadingType] ?? loadingPages[LoadingModelType.general];
  }

  /// Convert primary color string to Color
  Color? getPrimaryColor() {
    if (primaryColor == null) return null;
    return _parseColor(primaryColor!);
  }

  /// Convert secondary color string to Color
  Color? getSecondaryColor() {
    if (secondaryColor == null) return null;
    return _parseColor(secondaryColor!);
  }

  /// Convert default background color string to Color
  Color? getDefaultBackgroundColor() {
    if (defaultBackgroundColor == null) return null;
    return _parseColor(defaultBackgroundColor!);
  }

  /// Convert hex color string to Color
  Color? _parseColor(String colorString) {
    try {
      String hex = colorString.replaceAll('#', '');
      if (hex.length == 6) {
        hex = 'FF$hex'; // Add alpha value
      }
      return Color(int.parse(hex, radix: 16));
    } catch (e) {
      return null;
    }
  }

  /// Get default step duration as Duration object
  Duration get defaultStepDurationObject =>
      Duration(milliseconds: defaultStepDuration);

  @override
  String toString() {
    return 'LoadingConfigModel(loadingPages: ${loadingPages.length}, style: $style)';
  }
}

/// 💬 Loading messages model
class LoadingMessages {
  /// Default loading title
  final String defaultTitle;

  /// Default loading description
  final String defaultDescription;

  /// Default completed message
  final String defaultCompletedMessage;

  /// Default error message
  final String defaultErrorMessage;

  /// Default cancel button text
  final String defaultCancelButtonText;

  /// Default retry button text
  final String defaultRetryButtonText;

  /// Timeout message
  final String timeoutMessage;

  const LoadingMessages({
    this.defaultTitle = 'Loading',
    this.defaultDescription = 'Please wait...',
    this.defaultCompletedMessage = 'Completed successfully!',
    this.defaultErrorMessage = 'An error occurred',
    this.defaultCancelButtonText = 'Cancel',
    this.defaultRetryButtonText = 'Retry',
    this.timeoutMessage = 'Operation timed out',
  });

  /// Create LoadingMessages from JSON
  factory LoadingMessages.fromJson(Map<String, dynamic> json) {
    return LoadingMessages(
      defaultTitle: json['default_title'] as String? ?? 'Loading',
      defaultDescription:
          json['default_description'] as String? ?? 'Please wait...',
      defaultCompletedMessage: json['default_completed_message'] as String? ??
          'Completed successfully!',
      defaultErrorMessage:
          json['default_error_message'] as String? ?? 'An error occurred',
      defaultCancelButtonText:
          json['default_cancel_button_text'] as String? ?? 'Cancel',
      defaultRetryButtonText:
          json['default_retry_button_text'] as String? ?? 'Retry',
      timeoutMessage:
          json['timeout_message'] as String? ?? 'Operation timed out',
    );
  }

  /// Convert LoadingMessages to JSON
  Map<String, dynamic> toJson() {
    return {
      'default_title': defaultTitle,
      'default_description': defaultDescription,
      'default_completed_message': defaultCompletedMessage,
      'default_error_message': defaultErrorMessage,
      'default_cancel_button_text': defaultCancelButtonText,
      'default_retry_button_text': defaultRetryButtonText,
      'timeout_message': timeoutMessage,
    };
  }
}

/// 🎨 Loading UI style options
enum LoadingStyle {
  /// Startup style - Simple and clean design
  startup,

  /// Space style - Futuristic cosmic theme
  space,

  /// Enterprise style - Professional corporate theme
  enterprise,
}

/// 🔄 Loading types
enum LoadingModelType {
  /// General loading
  general,

  /// App initialization
  initialization,

  /// Data loading
  dataLoading,

  /// File upload/download
  fileTransfer,

  /// Authentication process
  authentication,

  /// Sync operation
  synchronization,

  /// Cache building
  cacheBuilding,

  /// Update process
  updating,

  /// Configuration loading
  configuration,

  /// Network request
  networkRequest,

  /// Database operation
  databaseOperation,

  /// Image processing
  imageProcessing,

  /// App startup process
  appStartup,

  /// Data synchronization
  dataSync,

  /// File processing
  fileProcessing,
}

/// 📊 Progress indicator types
enum ProgressIndicatorType {
  /// Circular progress indicator
  circular,

  /// Linear progress indicator
  linear,

  /// Percentage text
  percentage,

  /// Step indicator
  step,

  /// Custom progress indicator
  custom,
}

/// 📱 Loading status (extends existing LoadingViewStatus)
enum LoadingModelStatus {
  /// Not started
  notStarted,

  /// Preparing
  preparing,

  /// Loading
  loading,

  /// Processing step
  processingStep,

  /// Paused
  paused,

  /// Cancelled by user
  cancelled,

  /// Completed successfully
  completed,

  /// Failed with error
  error,

  /// Timed out
  timeout,
}

/// 🎯 Loading actions
enum LoadingAction {
  /// Start loading
  start,

  /// Pause loading
  pause,

  /// Resume loading
  resume,

  /// Cancel loading
  cancel,

  /// Retry loading
  retry,

  /// Skip current step
  skipStep,

  /// Go to next step
  nextStep,

  /// Complete loading
  complete,
}
