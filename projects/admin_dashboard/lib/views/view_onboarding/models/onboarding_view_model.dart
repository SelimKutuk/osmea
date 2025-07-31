/*
 * OnboardingViewModel
 * -------------------
 * ViewModel for the onboarding view following OSMEA architecture.
 * Uses BLoC pattern with events and states.
 */

import 'dart:async';
import 'package:admin_dashboard/constants/text_constants.dart';
import 'package:admin_dashboard/views/view_onboarding/models/module/events.dart';
import 'package:admin_dashboard/views/view_onboarding/models/module/states.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class OnboardingViewModel
    extends BaseViewModelBloc<OnboardingEvent, OnboardingState> {
  OnboardingViewModel() : super(OnboardingInitialState()) {
    // Initialize PageController
    _pageController = PageController(initialPage: 0);

    // Register event handlers
    on<OnboardingInitialEvent>(_onInitial);
    on<OnboardingNextEvent>(_onNext);
    on<OnboardingPreviousEvent>(_onPrevious);
    on<OnboardingPageChangedEvent>(_onPageChanged);
    on<OnboardingSkipEvent>(_onSkip);
    on<OnboardingCompleteEvent>(_onComplete);
  }

  // Private fields
  late PageController _pageController;
  int _currentIndex = 0;
  Function(String route)? _onNavigate;

  // Public getters
  PageController get pageController => _pageController;
  int get currentIndex => _currentIndex;
  int get totalPages => onboardingData.length;
  bool get isFirstPage => _currentIndex == 0;
  bool get isLastPage => _currentIndex == totalPages - 1;
  double get progressValue => (currentIndex + 1) / totalPages.toDouble();

  /// Set navigation callback from view
  void setNavigationCallback(Function(String route)? onNavigate) {
    _onNavigate = onNavigate;
  }

  @override
  Future<void> close() {
    _pageController.dispose();
    return super.close();
  }

  // Event handlers
  FutureOr<void> _onInitial(
    OnboardingInitialEvent event,
    Emitter<OnboardingState> emit,
  ) {
    _currentIndex = 0;
    emit(OnboardingLoadedState(currentIndex: _currentIndex));
  }

  FutureOr<void> _onNext(
    OnboardingNextEvent event,
    Emitter<OnboardingState> emit,
  ) {
    if (!isLastPage) {
      _currentIndex++;
      _pageController.nextPage(
        duration: event.context.animationMedium, // SizerExtensions duration
        curve: Curves.easeInOut,
      );
      emit(OnboardingLoadedState(currentIndex: _currentIndex));
    } else {
      emit(OnboardingCompleteState());
      // Navigate to home when reaching the last page
      if (_onNavigate != null) {
        _onNavigate!('/home');
      }
    }
  }

  FutureOr<void> _onPrevious(
    OnboardingPreviousEvent event,
    Emitter<OnboardingState> emit,
  ) {
    if (!isFirstPage) {
      _currentIndex--;
      _pageController.previousPage(
        duration: event.context.animationMedium, // SizerExtensions duration
        curve: Curves.easeInOut,
      );
      emit(OnboardingLoadedState(currentIndex: _currentIndex));
    }
  }

  FutureOr<void> _onPageChanged(
    OnboardingPageChangedEvent event,
    Emitter<OnboardingState> emit,
  ) {
    _currentIndex = event.index;
    emit(OnboardingLoadedState(currentIndex: _currentIndex));
  }

  FutureOr<void> _onSkip(
    OnboardingSkipEvent event,
    Emitter<OnboardingState> emit,
  ) {
    _currentIndex = totalPages - 1;
    _pageController.animateToPage(
      _currentIndex,
      duration: event.context.animationLong, // SizerExtensions duration
      curve: Curves.easeInOut,
    );
    emit(OnboardingCompleteState());
    // Navigate to home when skipping
    if (_onNavigate != null) {
      _onNavigate!('/home');
    }
  }

  FutureOr<void> _onComplete(
    OnboardingCompleteEvent event,
    Emitter<OnboardingState> emit,
  ) {
    emit(OnboardingCompleteState());
    // Navigate to home when onboarding is completed
    if (_onNavigate != null) {
      _onNavigate!('/home');
    }
  }

  // Public methods to trigger events
  void initialize() => add(OnboardingInitialEvent());
  void nextPage(BuildContext context) =>
      add(OnboardingNextEvent(context: context));
  void previousPage(BuildContext context) =>
      add(OnboardingPreviousEvent(context: context));
  void onPageChanged(int index) => add(OnboardingPageChangedEvent(index));
  void skipToEnd(BuildContext context) =>
      add(OnboardingSkipEvent(context: context));
  void complete() => add(OnboardingCompleteEvent());
}
