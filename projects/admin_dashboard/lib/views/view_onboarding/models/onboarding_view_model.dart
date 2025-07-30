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

  // Public getters
  PageController get pageController => _pageController;
  int get currentIndex => _currentIndex;
  int get totalPages => onboardingData.length;
  bool get isFirstPage => _currentIndex == 0;
  bool get isLastPage => _currentIndex == totalPages - 1;
  double get progressValue => (currentIndex + 1) / totalPages.toDouble();

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
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      emit(OnboardingLoadedState(currentIndex: _currentIndex));
    } else {
      emit(OnboardingCompleteState());
    }
  }

  FutureOr<void> _onPrevious(
    OnboardingPreviousEvent event,
    Emitter<OnboardingState> emit,
  ) {
    if (!isFirstPage) {
      _currentIndex--;
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
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
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
    emit(OnboardingCompleteState());
  }

  FutureOr<void> _onComplete(
    OnboardingCompleteEvent event,
    Emitter<OnboardingState> emit,
  ) {
    emit(OnboardingCompleteState());
  }

  // Public methods to trigger events
  void initialize() => add(OnboardingInitialEvent());
  void nextPage() => add(OnboardingNextEvent());
  void previousPage() => add(OnboardingPreviousEvent());
  void onPageChanged(int index) => add(OnboardingPageChangedEvent(index));
  void skipToEnd() => add(OnboardingSkipEvent());
  void complete() => add(OnboardingCompleteEvent());
}
