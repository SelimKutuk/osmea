import 'package:equatable/equatable.dart';

/// 🔄 **OSMEA Loading View State**
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/core
///
/// State management for Loading View
///
/// {@category States}
/// {@subCategory LoadingViewState}

/// 📱 Loading view status enum
enum LoadingViewStatus {
  /// Initial state
  initial,

  /// Loading in progress
  loading,

  /// Loading completed successfully
  completed,

  /// Loading failed with error
  error,
}

/// 🔄 Loading view state class
class LoadingViewState extends Equatable {
  /// Current loading status
  final LoadingViewStatus status;

  /// Progress percentage (0.0 to 1.0)
  final double progress;

  /// Loading message to display
  final String? message;

  /// Error message if loading failed
  final String? errorMessage;

  /// Additional data that can be passed during loading
  final Map<String, dynamic>? data;

  const LoadingViewState({
    this.status = LoadingViewStatus.initial,
    this.progress = 0.0,
    this.message,
    this.errorMessage,
    this.data,
  });

  /// Create a copy of the current state with modified values
  LoadingViewState copyWith({
    LoadingViewStatus? status,
    double? progress,
    String? message,
    String? errorMessage,
    Map<String, dynamic>? data,
  }) {
    return LoadingViewState(
      status: status ?? this.status,
      progress: progress ?? this.progress,
      message: message ?? this.message,
      errorMessage: errorMessage ?? this.errorMessage,
      data: data ?? this.data,
    );
  }

  /// Check if currently loading
  bool get isLoading => status == LoadingViewStatus.loading;

  /// Check if loading is completed
  bool get isCompleted => status == LoadingViewStatus.completed;

  /// Check if there's an error
  bool get hasError => status == LoadingViewStatus.error;

  /// Get progress percentage as integer (0-100)
  int get progressPercentage => (progress * 100).round();

  @override
  List<Object?> get props => [
        status,
        progress,
        message,
        errorMessage,
        data,
      ];

  @override
  String toString() {
    return 'LoadingViewState(status: $status, progress: $progress, message: $message, errorMessage: $errorMessage)';
  }
}
