import 'package:flutter_bloc/flutter_bloc.dart';
import 'carousel_state.dart';
import 'package:osmea_components/src/enums/carousel_enums.dart';
import 'dart:async';
import 'package:flutter/material.dart';

class CarouselCubit extends Cubit<CarouselState> {
  final PageController pageController;

  CarouselCubit(CarouselState initialState, {double viewportFraction = 1.0})
      : pageController = PageController(
          initialPage: initialState.activeIndex,
          viewportFraction: viewportFraction,
        ),
        super(initialState);

  Timer? _autoplayTimer;

  @override
  Future<void> close() {
    _autoplayTimer?.cancel();
    pageController.dispose();
    return super.close();
  }

  void next() {
    int nextIndex;
    if (state.isLooping) {
      nextIndex = (state.activeIndex + 1) % state.itemCount;
    } else if (state.activeIndex < state.itemCount - 1) {
      nextIndex = state.activeIndex + 1;
    } else if (state.isAutoPlaying && state.itemCount > 0) {
      nextIndex = 0;
    } else {
      return;
    }
    emit(state.copyWith(activeIndex: nextIndex));
    if (pageController.hasClients) {
      pageController.jumpToPage(nextIndex);
    }
  }

  void previous() {
    int prevIndex;
    if (state.isLooping) {
      prevIndex = (state.activeIndex - 1 + state.itemCount) % state.itemCount;
    } else if (state.activeIndex > 0) {
      prevIndex = state.activeIndex - 1;
    } else {
      return;
    }
    emit(state.copyWith(activeIndex: prevIndex));
    if (pageController.hasClients) {
      pageController.jumpToPage(prevIndex);
    }
  }

  void jumpTo(int index) {
    if (index >= 0 && index < state.itemCount) {
      emit(state.copyWith(activeIndex: index));
      if (pageController.hasClients) {
        pageController.jumpToPage(index);
      }
    }
  }

  void startAutoPlay() {
    emit(state.copyWith(isAutoPlaying: true));
    _autoplayTimer?.cancel();
    _autoplayTimer = Timer.periodic(state.autoPlayInterval, (_) {
      next();
    });
  }

  void stopAutoPlay() {
    emit(state.copyWith(isAutoPlaying: false));
    _autoplayTimer?.cancel();
    _autoplayTimer = null;
  }

  void setItemCount(int count) {
    emit(state.copyWith(itemCount: count));
  }

  void setLooping(bool loop) {
    emit(state.copyWith(isLooping: loop));
  }

  void setAutoPlayInterval(Duration interval) {
    emit(state.copyWith(autoPlayInterval: interval));
  }

  void setTransitionType(CarouselTransitionType type) {
    emit(state.copyWith(transitionType: type));
  }

  void setIndicatorType(CarouselIndicatorType type) {
    emit(state.copyWith(indicatorType: type));
  }

  void setNavigationType(CarouselNavigationType type) {
    emit(state.copyWith(navigationType: type));
  }

  void setEnabled(bool enabled) {
    emit(state.copyWith(enabled: enabled));
  }

  void setSelected(bool selected) {
    emit(state.copyWith(selected: selected));
  }
}
