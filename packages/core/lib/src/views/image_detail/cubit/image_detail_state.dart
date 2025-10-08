import 'package:equatable/equatable.dart';

enum ImageDetailStatus { initial, ready, empty }

class ImageDetailState extends Equatable {
  final ImageDetailStatus status;
  final List<String> images;
  final int currentIndex;
  final String? heroTag;

  const ImageDetailState({
    this.status = ImageDetailStatus.initial,
    this.images = const [],
    this.currentIndex = 0,
    this.heroTag,
  });

  bool get hasImages => images.isNotEmpty;

  ImageDetailState copyWith({
    ImageDetailStatus? status,
    List<String>? images,
    int? currentIndex,
    String? heroTag,
  }) {
    return ImageDetailState(
      status: status ?? this.status,
      images: images ?? this.images,
      currentIndex: currentIndex ?? this.currentIndex,
      heroTag: heroTag ?? this.heroTag,
    );
  }

  @override
  List<Object?> get props => [status, images, currentIndex, heroTag];
}


