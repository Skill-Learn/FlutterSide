import 'package:skill_learn_client/content/models/video.dart';
import 'package:equatable/equatable.dart';

abstract class VideoState extends Equatable {
  const VideoState();

  @override
  List<Object> get props => [];
}

class VideoLoading extends VideoState {}

class VideoOperationSuccess extends VideoState {
  final Iterable<Video> videos;

  VideoOperationSuccess([this.videos = const[]]);

  @override
  List<Object> get props => [videos];
}

class VideoOperationFailure extends VideoState {}