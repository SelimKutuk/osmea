import 'package:core/src/base/base_view_model_cubit.dart';
import 'package:core/src/views/image_detail/cubit/image_detail_state.dart';

class ImageDetailCubit extends BaseViewModelCubit<ImageDetailState> {
  ImageDetailCubit() : super(const ImageDetailState());

  Future<void> initialize({required List<String> images, int initialIndex = 0, String? heroTag}) async {
    if (images.isEmpty) {
      stateChanger(state.copyWith(status: ImageDetailStatus.empty, images: images, currentIndex: 0, heroTag: heroTag));
      return;
    }

    final safeIndex = initialIndex.clamp(0, images.length - 1);
    stateChanger(state.copyWith(status: ImageDetailStatus.ready, images: List.unmodifiable(images), currentIndex: safeIndex, heroTag: heroTag));
  }

  void next() {
    if (state.images.isEmpty) return;
    final nextIndex = (state.currentIndex + 1).clamp(0, state.images.length - 1);
    stateChanger(state.copyWith(currentIndex: nextIndex));
  }

  void previous() {
    if (state.images.isEmpty) return;
    final prevIndex = (state.currentIndex - 1).clamp(0, state.images.length - 1);
    stateChanger(state.copyWith(currentIndex: prevIndex));
  }

  void goTo(int index) {
    if (state.images.isEmpty) return;
    final safeIndex = index.clamp(0, state.images.length - 1);
    stateChanger(state.copyWith(currentIndex: safeIndex));
  }
}


