import 'package:skill_learn_client/content/models/video.dart';
import 'package:skill_learn_client/content/data_provider/video-data-provider.dart';

class VideoRepository {
  final VideoDataProvider dataProvider;
  VideoRepository(this.dataProvider);

  Future<Video> create(Video video) async {
    return this.dataProvider.create(video);
  }

  Future<Video> update(int id, Video video) async {
    return this.dataProvider.update(id, video);
  }
  Future<List<Video>> fetchAll() async {
    return this.dataProvider.fetchAll();
  }
  Future<void> delete(int id) async {
    return this.dataProvider.delete(id);
  }
}