import 'package:skill_learn_client/content/repository/video-repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'video_event.dart';
import 'video_state.dart';

class VideoBloc extends Bloc<VideoEvent, VideoState> {
  final VideoRepository videoRepository;

  VideoBloc({required this.videoRepository}) : super(VideoLoading());

  @override
  Stream<VideoState> mapEventToState(VideoEvent event) async* {
    if (event is VideoLoad) {
      yield VideoLoading();
      try {
        final videos = await videoRepository.fetchAll();
        yield VideoOperationSuccess(videos);
      } catch (_) {
        yield VideoOperationFailure();
      }
    }

    if (event is VideoCreate) {
      try {
        await videoRepository.create(event.video);
        final videos = await videoRepository.fetchAll();
        yield VideoOperationSuccess(videos);
      } catch (_) {
        yield VideoOperationFailure();
      }
    }

    if (event is VideoUpdate) {
      try {
        await videoRepository.update(event.video.id ?? 0, event.video);
        final videos = await videoRepository.fetchAll();
        yield VideoOperationSuccess(videos);
      } catch (_) {
        yield VideoOperationFailure();
      }
    }

    if (event is VideoDelete) {
      try {
        await videoRepository.delete(event.id);
        final videos = await videoRepository.fetchAll();
        yield VideoOperationSuccess(videos);
      } catch (_) {
        yield VideoOperationFailure();
      }
    }
  }
}