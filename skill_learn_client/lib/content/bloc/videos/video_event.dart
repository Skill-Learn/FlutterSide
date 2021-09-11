import 'package:skill_learn_client/content/models/video.dart';
import 'package:equatable/equatable.dart';

abstract class VideoEvent extends Equatable {
  const VideoEvent();
}

class VideoLoad extends VideoEvent {
  const VideoLoad();

  @override
  List<Object> get props => [];

}

class VideoCreate extends VideoEvent {
  final Video video;

  const VideoCreate(this.video);

   @override
  List<Object> get props => [video];

  @override
  String toString() => 'Video Uploaded {video: $video}';
}

class VideoUpdate extends VideoEvent {
  final Video video;

  const VideoUpdate(this.video);

   @override
  List<Object> get props => [video];

  @override
  String toString() => 'Video Updated {video: $video}';
}

class VideoDelete extends VideoEvent {
  final int id;

  const VideoDelete(this.id);

   @override
  List<Object> get props => [id];

  @override
  String toString() => 'Video Deleted {video: $id}';
}