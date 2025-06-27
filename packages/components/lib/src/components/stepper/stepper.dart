import 'package:flutter/material.dart' hide StepState;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osmea_components/src/core/container_widget.dart';
import 'package:osmea_components/src/enums/components_enum.dart';
import 'package:osmea_components/src/components/text/text.dart';
import 'package:osmea_components/src/styles/colors.dart';

import 'cubit/stepper_cubit.dart';
import 'cubit/stepper_state.dart';
import '../../utils/stepper_extension.dart';

class OsmeaStep {
  final String label;
  final Widget content;
  final Widget? icon;
  final bool isEnabled;
  final String? description;

  OsmeaStep({
    required this.label,
    required this.content,
    this.icon,
    this.isEnabled = true,
    this.description,
  });
}

class OsmeaStepper extends CoreContainer {
  final List<OsmeaStep> steps;
  final ComponentOrientation orientation;
  final ComponentSize size;
  final ComponentState state;
  final ComponentPosition position;
  final ComponentAppearance appearance;
  final int currentStep;
  final ValueChanged<int>? onStepChanged;
  final bool allowStepTapping;
  final StepperStyle stepperStyle;

  OsmeaStepper({
    super.key,
    super.customTheme,
    super.alignment,
    super.padding,
    super.color,
    super.decoration,
    super.foregroundDecoration,
    super.width,
    super.height,
    super.constraints,
    super.margin,
    super.transform,
    super.transformAlignment,
    super.child,
    super.clipBehavior,
    required this.steps,
    this.orientation = ComponentOrientation.horizontal,
    this.size = ComponentSize.medium,
    this.state = ComponentState.idle,
    this.position = ComponentPosition.top,
    this.appearance = ComponentAppearance.filled,
    this.currentStep = 0,
    this.onStepChanged,
    this.allowStepTapping = true,
    this.stepperStyle = StepperStyle.numberedWithLinesAndLabels,
  });

  @override
  Widget buildWidget(BuildContext context) {
    return BlocProvider<StepperCubit>(
      create: (_) => StepperCubit(
        totalSteps: steps.length,
        initialStep: currentStep,
        onStepChanged: onStepChanged,
        allowStepTapping: allowStepTapping,
      ),
      child: BlocBuilder<StepperCubit, StepperState>(
        builder: (context, stepperState) {
          if (orientation == ComponentOrientation.horizontal) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildSteps(context, stepperState),
                const SizedBox(height: 16),
                _buildStepContent(context, stepperState),
              ],
            );
          } else {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSteps(context, stepperState),
                const SizedBox(width: 16),
                Expanded(
                  child: _buildStepContent(context, stepperState),
                ),
              ],
            );
          }
        },
      ),
    );
  }

  Widget _buildStepContent(BuildContext context, StepperState stepperState) {
    if (stepperState.currentStep >= 0 &&
        stepperState.currentStep < steps.length) {
      return steps[stepperState.currentStep].content;
    }
    return const SizedBox.shrink();
  }

  Widget _buildSteps(BuildContext context, StepperState stepperState) {
    final isHorizontal = orientation == ComponentOrientation.horizontal;

    if (isHorizontal) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _buildHorizontalSteps(context, stepperState),
          ),
        ),
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: _buildVerticalSteps(context, stepperState),
      );
    }
  }

  List<Widget> _buildHorizontalSteps(
      BuildContext context, StepperState stepperState) {
    List<Widget> stepWidgets = [];

    for (int i = 0; i < steps.length; i++) {
      stepWidgets.add(_buildStep(context, i, stepperState));

      // Add connecting line if not last step and style supports lines
      if (i < steps.length - 1 && stepperStyle.hasConnectingLines) {
        stepWidgets.add(_buildConnectingLine(context, i, stepperState, true));
      }
    }

    return stepWidgets;
  }

  List<Widget> _buildVerticalSteps(
      BuildContext context, StepperState stepperState) {
    List<Widget> stepWidgets = [];

    for (int i = 0; i < steps.length; i++) {
      stepWidgets.add(_buildStep(context, i, stepperState));

      // Add connecting line if not last step and style supports lines
      if (i < steps.length - 1 && stepperStyle.hasConnectingLines) {
        stepWidgets.add(_buildConnectingLine(context, i, stepperState, false));
      }
    }

    return stepWidgets;
  }

  Widget _buildStep(BuildContext context, int i, StepperState stepperState) {
    final step = steps[i];
    final stepState = stepperState.getStepState(i);
    final isActive = stepperState.isStepActive(i);
    final isCompleted = stepperState.isStepCompleted(i);
    final hasError = stepperState.hasStepError(i);
    final hasWarning = stepperState.hasStepWarning(i);
    final canTap = stepperState.canTapStep(i, allowAllSteps: allowStepTapping);

    final color = _getStepColor(stepState);
    final double sizePx = size.stepCircleSize;

    return GestureDetector(
      onTap: canTap
          ? () {
              context.read<StepperCubit>().goToStep(i);
            }
          : null,
      child: Opacity(
        opacity: canTap ? 1.0 : 0.6,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundColor: color,
                radius: sizePx / 2,
                child: _buildStepIcon(step, i, stepState, isActive, isCompleted,
                    hasError, hasWarning),
              ),
              // Show label only if style supports it
              if (stepperStyle.hasLabels) ...[
                const SizedBox(height: 4),
                SizedBox(
                  width: 80, // Constrain width to prevent overflow
                  child: OsmeaText(
                    step.label,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight:
                          isActive ? FontWeight.bold : FontWeight.normal,
                      color: isActive ? color : Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStepIcon(
    OsmeaStep step,
    int index,
    StepState stepState,
    bool isActive,
    bool isCompleted,
    bool hasError,
    bool hasWarning,
  ) {
    // Show error icon for error state
    if (hasError) {
      return const Icon(Icons.error, color: Colors.white, size: 16);
    }

    // Show warning icon for warning state
    if (stepState == StepState.warning) {
      return const Icon(Icons.warning, color: Colors.white, size: 16);
    }

    // Show check icon for completed steps
    if (isCompleted) {
      return const Icon(Icons.check, color: Colors.white, size: 16);
    }

    // Show custom icon if provided
    if (step.icon != null) {
      return step.icon!;
    }

    // Show number or dot based on style
    if (stepperStyle.isNumbered) {
      return OsmeaText(
        '${index + 1}',
        color: Colors.white,
        fontWeight: FontWeight.bold,
      );
    } else {
      // For dot styles, show a small dot or empty circle
      return Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.transparent,
          shape: BoxShape.circle,
          border: isActive ? null : Border.all(color: Colors.white, width: 1),
        ),
      );
    }
  }

  Color _getStepColor(StepState stepState) {
    switch (stepState) {
      case StepState.completed:
        return OsmeaColors.forestHeart; // Green for completed
      case StepState.active:
        return OsmeaColors.nordicBlue; // Blue for active
      case StepState.error:
        return OsmeaColors.sunsetGlow; // Orange for error
      case StepState.warning:
        return OsmeaColors.goldenHour; // Yellow-orange for warning
      case StepState.disabled:
        return OsmeaColors.pewter; // Gray for disabled
      case StepState.skipped:
        return OsmeaColors.crystalBay; // Light blue for skipped
      case StepState.pending:
      default:
        return OsmeaColors.silver; // Light gray for pending
    }
  }

  Widget _buildConnectingLine(BuildContext context, int stepIndex,
      StepperState stepperState, bool isHorizontal) {
    // Line is completed if current step is completed
    final isCompleted = stepperState.isStepCompleted(stepIndex);
    // Also check if next step is active or completed (means we passed this connection)
    final nextStepState = stepperState.getStepState(stepIndex + 1);
    final isConnectionCompleted = isCompleted ||
        nextStepState == StepState.active ||
        nextStepState == StepState.completed;

    final lineColor = isConnectionCompleted
        ? _getStepColor(StepState.completed)
        : stepperStyle.lineColor;

    if (isHorizontal) {
      return Container(
        width: 30, // Reduced from 40
        height: stepperStyle.lineThickness,
        color: lineColor,
        margin: const EdgeInsets.symmetric(horizontal: 2), // Reduced margin
      );
    } else {
      return Container(
        width: stepperStyle.lineThickness,
        height: 30,
        color: lineColor,
        margin: const EdgeInsets.symmetric(vertical: 4),
      );
    }
  }
}
