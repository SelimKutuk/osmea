/// 🎤 OSMEA Sound Dialog Widget
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/components
///
/// A self-contained, interactive voice recording dialog with multiple variants.
/// Manages its own state via SoundDialogCubit, providing a simple "plug-and-play" API.
///
/// {@category Components}
/// {@subCategory Dialog}
///
/// ## 🎧 Key Features:
/// * Encapsulated State: Creates and manages its own SoundDialogCubit.
/// * Variants: `standard`, `expandable`, `inlineSearchBar`, and `feedbackRecorder` styles.
/// * Full recording control: start, pause, resume, stop, cancel.
///
/// Example:
/// ```dart
/// showDialog(
///   context: context,
///   builder: (_) => OsmeaSoundDialog(
///     variant: SoundDialogVariant.feedbackRecorder,
///     onConfirm: (path) => print("Saved: $path"),
///     onCancel: () => print("Canceled"),
///   ),
/// );
/// ```

import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osmea_components/osmea_components.dart';

/// The public-facing, self-contained sound dialog widget.
///
/// This widget is responsible for creating a [SoundDialogCubit] and providing
/// it to the internal [_CoreSoundDialogWidget], encapsulating all state
/// management logic.
class OsmeaSoundDialog extends StatelessWidget {
  final SoundDialogVariant variant;
  final void Function(String filePath)? onConfirm;
  final VoidCallback? onCancel;

  const OsmeaSoundDialog({
    super.key,
    this.variant = SoundDialogVariant.standard,
    this.onConfirm,
    this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    // The BlocProvider creates and manages the lifecycle of the SoundDialogCubit.
    // This is the core of the component's self-contained state management.
    return BlocProvider(
      create: (_) => SoundDialogCubit(variant: variant),
      child: _CoreSoundDialogWidget(
        onConfirm: onConfirm,
        onCancel: onCancel,
      ),
    );
  }
}

/// The internal widget that builds the UI based on the state from the Cubit.
/// It accesses the cubit via `context.watch` or `context.read`.
class _CoreSoundDialogWidget extends StatelessWidget {
  final void Function(String filePath)? onConfirm;
  final VoidCallback? onCancel;

  const _CoreSoundDialogWidget({this.onConfirm, this.onCancel});

  @override
  Widget build(BuildContext context) {
    // Watch for state changes to rebuild the UI accordingly.
    final state = context.watch<SoundDialogCubit>().state;

    switch (state.variant) {
      case SoundDialogVariant.standard:
        return _buildStandardDialog(context, state);
      case SoundDialogVariant.expandable:
        return _buildExpandableDialog(context, state);
      case SoundDialogVariant.inlineSearchBar:
        return _buildInlineSearchBar(context, state);
      case SoundDialogVariant.feedbackRecorder:
        return _buildFeedbackDialog(context, state);
    }
  }

  Widget _buildStandardDialog(BuildContext context, SoundDialogState state) {
    final cubit = context.read<SoundDialogCubit>();
    return Dialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Container(
            width: 320,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withValues(alpha: 0.08),
                      blurRadius: 14,
                      offset: const Offset(0, 4))
                ],
                border: Border.all(
                    color: Colors.grey.withValues(alpha: 0.15), width: 1)),
            padding: const EdgeInsets.fromLTRB(20, 22, 20, 16),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      state.isRecording
                          ? (state.isPaused
                              ? "Recording paused"
                              : "Listening...")
                          : "I'm ready, talk!",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87)),
                  const SizedBox(height: 24),
                  _MicWithWaveEffect(
                      isActive: state.isRecording && !state.isPaused,
                      onTap: () {
                        if (!state.isRecording) {
                          cubit.startRecording();
                        } else if (state.isPaused) {
                          cubit.resumeRecording();
                        } else {
                          cubit.pauseRecording();
                        }
                      }),
                  const SizedBox(height: 16),
                  Text(_formatDuration(state.recordedDuration),
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey[600],
                          fontFeatures: const [FontFeature.tabularFigures()])),
                  const SizedBox(height: 20),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    OsmeaComponents.button(
                        text: 'Cancel',
                        variant: ButtonVariant.outlined,
                        size: ButtonSize.small,
                        onPressed: () {
                          cubit.cancelRecording();
                          Navigator.pop(context);
                          onCancel?.call();
                        }),
                    const SizedBox(width: 8),
                    OsmeaComponents.button(
                        text: 'OK',
                        variant: ButtonVariant.primary,
                        size: ButtonSize.small,
                        onPressed: () {
                          const fakePath = "voice_input.wav";
                          cubit.stopRecording(fakePath);
                          Navigator.pop(context);
                          onConfirm?.call(fakePath);
                        })
                  ])
                ])));
  }

  Widget _buildExpandableDialog(BuildContext context, SoundDialogState state) {
    final cubit = context.read<SoundDialogCubit>();
    final dialogBorderRadius = BorderRadius.circular(24);
    return Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: const EdgeInsets.all(24),
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: dialogBorderRadius),
        child: Container(
            width: 340,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: dialogBorderRadius,
                border: Border.all(
                    color: Colors.grey.withValues(alpha: 0.3), width: 1),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withValues(alpha: 0.08),
                      blurRadius: 12,
                      offset: const Offset(0, 4))
                ]),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              AnimatedSwitcher(
                  duration: const Duration(milliseconds: 400),
                  transitionBuilder: (child, anim) => FadeTransition(
                      opacity: anim,
                      child: SlideTransition(
                          position: Tween<Offset>(
                                  begin: const Offset(0, 0.2), end: Offset.zero)
                              .animate(anim),
                          child: child)),
                  child: Text(
                      state.isRecording
                          ? (state.isPaused
                              ? "Recording Paused"
                              : "Recording...")
                          : "Ready to Record",
                      key: ValueKey("${state.isRecording}-${state.isPaused}"),
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600))),
              const SizedBox(height: 16),
              Text(_formatDuration(state.recordedDuration),
                  style: TextStyle(
                      fontSize: 14,
                      color: OsmeaColors.grey,
                      fontFeatures: const [FontFeature.tabularFigures()])),
              const SizedBox(height: 16),
              AnimatedOpacity(
                  opacity: state.isRecording && !state.isPaused ? 1.0 : 0.3,
                  duration: const Duration(milliseconds: 300),
                  child: _SoundWave(volume: state.volumeLevel)),
              const SizedBox(height: 28),
              Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 14,
                  runSpacing: 10,
                  children: [
                    if (!state.isRecording)
                      OsmeaComponents.button(
                          icon: const Icon(Icons.mic),
                          iconPosition: IconPosition.only,
                          size: ButtonSize.small,
                          variant: ButtonVariant.primary,
                          onPressed: cubit.startRecording,
                          backgroundColor: OsmeaColors.nordicBlue),
                    if (state.isRecording && !state.isPaused)
                      OsmeaComponents.button(
                          icon: const Icon(Icons.pause),
                          iconPosition: IconPosition.only,
                          size: ButtonSize.small,
                          variant: ButtonVariant.outlined,
                          onPressed: cubit.pauseRecording),
                    if (state.isPaused)
                      OsmeaComponents.button(
                          icon: const Icon(Icons.play_arrow),
                          iconPosition: IconPosition.only,
                          size: ButtonSize.small,
                          variant: ButtonVariant.secondary,
                          onPressed: cubit.resumeRecording),
                    if (state.isRecording)
                      OsmeaComponents.button(
                          icon: const Icon(Icons.stop),
                          iconPosition: IconPosition.only,
                          size: ButtonSize.small,
                          variant: ButtonVariant.secondary,
                          onPressed: () {
                            const path = "fake_record.wav";
                            cubit.stopRecording(path);
                            onConfirm?.call(path);
                            Navigator.pop(context);
                          }),
                    OsmeaComponents.button(
                        icon: const Icon(Icons.close),
                        iconPosition: IconPosition.only,
                        size: ButtonSize.small,
                        variant: ButtonVariant.danger,
                        onPressed: () {
                          cubit.cancelRecording();
                          onCancel?.call();
                          Navigator.pop(context);
                        })
                  ])
            ])));
  }

  /// Builds the UI for the inline search bar variant.
  Widget _buildInlineSearchBar(BuildContext context, SoundDialogState state) {
    final cubit = context.read<SoundDialogCubit>();
    return Dialog(
      backgroundColor: Colors.white,
      alignment: Alignment.topCenter,
      insetPadding: const EdgeInsets.only(top: 60, left: 20, right: 20),
      child: Material(
        color: Colors.white,
        elevation: 4.0,
        borderRadius: BorderRadius.circular(30),
        child: Container(
          height: 52,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Icon(Icons.search,
                  color: state.isRecording
                      ? OsmeaColors.amberFlame
                      : OsmeaColors.grey),
              const SizedBox(width: 12),
              Expanded(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 200),
                  child: state.isRecording
                      ? _SoundWave(volume: state.volumeLevel, barCount: 20)
                      : Text(
                          "Listening for your search...",
                          key: const ValueKey('text'),
                          style: TextStyle(color: OsmeaColors.slate),
                        ),
                ),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: () {
                  if (state.isRecording) {
                    const searchText = "This is a voice search result";
                    cubit.stopRecording(searchText);
                    onConfirm?.call(searchText);
                    Navigator.pop(context);
                  } else {
                    cubit.startRecording();
                  }
                },
                child: Icon(
                  state.isRecording ? Icons.check_circle : Icons.mic_none,
                  color: state.isRecording
                      ? OsmeaColors.meadow
                      : OsmeaColors.thunder,
                  size: 28,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Builds the UI for the feedback recorder variant.
  Widget _buildFeedbackDialog(BuildContext context, SoundDialogState state) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: state.isReviewing
              ? _buildFeedbackReviewUI(context, state)
              : _buildFeedbackRecordingUI(context, state),
        ),
      ),
    );
  }

  /// The recording phase UI for the feedback variant.
  Widget _buildFeedbackRecordingUI(
      BuildContext context, SoundDialogState state) {
    final cubit = context.read<SoundDialogCubit>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      key: const ValueKey('recording'),
      children: [
        Text(
          state.isRecording ? 'Recording Feedback...' : 'Ready to Record',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const SizedBox(height: 16),
        Text(
          _formatDuration(state.recordedDuration),
          style: TextStyle(fontSize: 14, color: OsmeaColors.slate),
        ),
        const SizedBox(height: 24),
        GestureDetector(
          onTap: () {
            if (!state.isRecording) {
              cubit.startRecording();
            } else {
              cubit.finishRecordingForReview("feedback_review.wav");
            }
          },
          child: Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              color: state.isRecording
                  ? OsmeaColors.sunsetGlow
                  : OsmeaColors.nordicBlue,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withValues(alpha: 0.15),
                    blurRadius: 8,
                    offset: const Offset(0, 2))
              ],
            ),
            child: Icon(
              state.isRecording ? Icons.stop : Icons.mic,
              color: Colors.white,
              size: 36,
            ),
          ),
        ),
        const SizedBox(height: 24),
        OsmeaComponents.button(
          text: "Cancel",
          // ## HATA DÜZELTİLDİ: ButtonVariant.text -> ButtonVariant.outlined ##
          variant: ButtonVariant.outlined,
          onPressed: () {
            cubit.cancelRecording();
            Navigator.pop(context);
            onCancel?.call();
          },
        )
      ],
    );
  }

  /// The review phase UI for the feedback variant.
  Widget _buildFeedbackReviewUI(BuildContext context, SoundDialogState state) {
    final cubit = context.read<SoundDialogCubit>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      key: const ValueKey('reviewing'),
      children: [
        const Text(
          "Confirm Your Feedback",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: OsmeaColors.ash,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TODO: Implement audio playback functionality here.
              const Icon(Icons.play_arrow, color: Colors.black54),
              const SizedBox(width: 8),
              Text(
                "Play Recording (${_formatDuration(state.recordedDuration)})",
                style: const TextStyle(color: Colors.black54),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: OsmeaComponents.button(
                text: "Try Again",
                variant: ButtonVariant.outlined,
                onPressed:
                    cubit.cancelRecording, // Resets state for a new recording
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: OsmeaComponents.button(
                text: "Confirm",
                onPressed: () {
                  cubit.stopRecording(state.filePath!); // Finalize
                  onConfirm?.call(state.filePath!);
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// Helper widgets and functions remain unchanged but are now private.
String _formatDuration(Duration d) {
  final m = d.inMinutes.remainder(60).toString().padLeft(2, '0');
  final s = d.inSeconds.remainder(60).toString().padLeft(2, '0');
  return '$m:$s';
}

class _MicWithWaveEffect extends StatefulWidget {
  final bool isActive;
  final VoidCallback onTap;
  const _MicWithWaveEffect({required this.isActive, required this.onTap});
  @override
  State<_MicWithWaveEffect> createState() => _MicWithWaveEffectState();
}

class _MicWithWaveEffectState extends State<_MicWithWaveEffect>
    with TickerProviderStateMixin {
  late final AnimationController _micController;
  late final AnimationController _waveController;
  @override
  void initState() {
    super.initState();
    _micController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));
    _waveController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    if (widget.isActive) {
      _micController.repeat(reverse: true);
      _waveController.repeat();
    }
  }

  @override
  void didUpdateWidget(covariant _MicWithWaveEffect oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isActive && !oldWidget.isActive) {
      _micController.repeat(reverse: true);
      _waveController.repeat();
    } else if (!widget.isActive && oldWidget.isActive) {
      _micController.stop();
      _waveController.stop();
    }
  }

  @override
  void dispose() {
    _micController.dispose();
    _waveController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color micColor =
        widget.isActive ? OsmeaColors.amberFlame : OsmeaColors.nordicBlue;
    return GestureDetector(
        onTap: widget.onTap,
        child: SizedBox(
            width: 140,
            height: 140,
            child: AnimatedBuilder(
                animation: Listenable.merge([_micController, _waveController]),
                builder: (context, child) {
                  final scale = widget.isActive
                      ? 1 + 0.06 * math.sin(_micController.value * 2 * math.pi)
                      : 1.0;
                  return Stack(alignment: Alignment.center, children: [
                    if (widget.isActive)
                      CustomPaint(
                          size: const Size(140, 140),
                          painter: _WavePainter(
                              progress: _waveController.value,
                              color: micColor,
                              ringCount: 3)),
                    Transform.scale(
                        scale: scale,
                        child: Container(
                            width: 88,
                            height: 88,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: micColor,
                                boxShadow: [
                                  BoxShadow(
                                      color: micColor.withValues(alpha: 0.3),
                                      blurRadius: 12,
                                      spreadRadius: 1)
                                ]),
                            child: const Icon(Icons.mic,
                                size: 42, color: Colors.white)))
                  ]);
                })));
  }
}

class _WavePainter extends CustomPainter {
  final double progress;
  final Color color;
  final int ringCount;
  _WavePainter(
      {required this.progress, required this.color, this.ringCount = 3});
  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final maxRadius = size.width / 2;
    const micRadius = 44.0;
    const startRadius = micRadius + 6.0;
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;
    for (int i = 0; i < ringCount; i++) {
      final offset = (i / ringCount);
      double ringProgress = (progress + offset) % 1.0;
      final radius = startRadius + ringProgress * (maxRadius - startRadius);
      paint.color = color.withValues(alpha: 0.5 * (1 - ringProgress));
      paint.strokeWidth = 2.0 + 1.0 * (1.0 - ringProgress);
      canvas.drawCircle(center, radius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant _WavePainter oldDelegate) =>
      oldDelegate.progress != progress ||
      oldDelegate.color != color ||
      oldDelegate.ringCount != ringCount;
}

class _SoundWave extends StatelessWidget {
  final double volume;
  final int barCount;
  const _SoundWave({required this.volume, this.barCount = 16});
  @override
  Widget build(BuildContext context) {
    const maxHeight = 40.0;
    final bars = List.generate(barCount, (i) {
      final pos = i / (barCount - 1);
      final envelope = math.sin(pos * math.pi);
      final randomFactor =
          0.7 + (i.isEven ? 0.3 : 0.1) * math.Random().nextDouble();
      final height =
          (volume * maxHeight * envelope * randomFactor).clamp(2.0, maxHeight);
      return AnimatedContainer(
          duration: const Duration(milliseconds: 90),
          curve: Curves.easeOut,
          width: (150 / barCount), // Adjust width to fit space
          height: height,
          decoration: BoxDecoration(
              color: OsmeaColors.nordicBlue,
              borderRadius: BorderRadius.circular(3)));
    });
    return SizedBox(
        height: maxHeight,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: bars));
  }
}
