/// 🔊 OSMEA Sound Dialog Cubit
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/components
///
/// Cubit for managing sound recording dialog state, including recording,
/// pause, review, visibility, and simulated volume feedback.
///
/// {@category Cubit}
/// {@subCategory Dialog}
///
/// Example usage:
/// ```dart
/// final cubit = SoundDialogCubit(variant: SoundDialogVariant.feedbackRecorder);
/// cubit.startRecording();
/// ```

import 'dart:async';
import 'dart:math' as math;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osmea_components/osmea_components.dart';

/// Manages the state and timers for all sound dialog variants.
class SoundDialogCubit extends Cubit<SoundDialogState> {
  Timer? _volumeTimer;
  Timer? _durationTimer;
  final _random = math.Random();

  /// Creates a [SoundDialogCubit] with the given dialog [variant].
  SoundDialogCubit({required SoundDialogVariant variant})
      : super(SoundDialogState(variant: variant));

  /// Starts the recording session and begins updating duration and volume.
  void startRecording() {
    _stopAllTimers();
    emit(state.copyWith(
      isRecording: true,
      isPaused: false,
      isReviewing: false,
      recordedDuration: Duration.zero,
      volumeLevel: 0.0,
    ));
    _startVolumeSimulation();
    _startDurationTicker();
  }

  /// Pauses the current recording session.
  void pauseRecording() {
    if (!state.isRecording || state.isPaused) return;
    emit(state.copyWith(isPaused: true));
    _stopVolumeSimulation();
    _stopDurationTicker();
  }

  /// Resumes a paused recording session.
  void resumeRecording() {
    if (!state.isRecording || !state.isPaused) return;
    emit(state.copyWith(isPaused: false));
    _startVolumeSimulation();
    _startDurationTicker();
  }

  /// Stops recording and switches to review mode
  /// (used only in [SoundDialogVariant.feedbackRecorder]).
  void finishRecordingForReview(String path) {
    _stopAllTimers();
    emit(state.copyWith(
      isRecording: false,
      isPaused: false,
      isReviewing: true,
      filePath: path,
      volumeLevel: 0.0,
    ));
  }

  /// Stops the recording and finalizes the audio file.
  void stopRecording(String path) {
    _stopAllTimers();
    emit(state.copyWith(
      isRecording: false,
      isPaused: false,
      isReviewing: false,
      filePath: path,
      volumeLevel: 0.0,
    ));
  }

  /// Cancels the current recording and resets the dialog state.
  void cancelRecording() {
    _stopAllTimers();
    emit(SoundDialogState(variant: state.variant));
  }

  /// Starts the duration ticker, incrementing the recorded time each second.
  void _startDurationTicker() {
    _durationTimer?.cancel();
    _durationTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (!state.isRecording || state.isPaused) return;
      emit(state.copyWith(
        recordedDuration: state.recordedDuration + const Duration(seconds: 1),
      ));
    });
  }

  /// Stops the duration ticker.
  void _stopDurationTicker() {
    _durationTimer?.cancel();
    _durationTimer = null;
  }

  /// Starts simulating live microphone volume changes.
  void _startVolumeSimulation() {
    _volumeTimer?.cancel();
    _volumeTimer = Timer.periodic(const Duration(milliseconds: 120), (_) {
      if (!state.isRecording || state.isPaused) {
        if (state.volumeLevel != 0.0) {
          emit(state.copyWith(volumeLevel: 0.0));
        }
        return;
      }
      final randomLevel = 0.2 + _random.nextDouble() * 0.8;
      emit(state.copyWith(volumeLevel: randomLevel.clamp(0.0, 1.0)));
    });
  }

  /// Stops the volume simulation ticker.
  void _stopVolumeSimulation() {
    _volumeTimer?.cancel();
    _volumeTimer = null;
  }

  /// Stops all running timers.
  void _stopAllTimers() {
    _stopVolumeSimulation();
    _stopDurationTicker();
  }

  @override
  Future<void> close() {
    _stopAllTimers();
    return super.close();
  }
}
