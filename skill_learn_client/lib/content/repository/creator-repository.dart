import 'package:skill_learn_client/content/data_provider/creator-data-provider.dart';
import 'package:skill_learn_client/content/models/models.dart';

class CreatorRepository {
  final CreatorDataProvider dataProvider;
  CreatorRepository(this.dataProvider);

  Future<List<Creator>> fetchAll() async {
    return this.dataProvider.fetchAll();
  }
}
