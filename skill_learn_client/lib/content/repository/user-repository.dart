import 'package:skill_learn_client/content/data_provider/user-data-provider.dart';
import 'package:skill_learn_client/content/models/models.dart';

class UserRepository {
  final UserDataProvider dataProvider;
  UserRepository(this.dataProvider);

  Future<List<User>> fetchAll() async {
    return this.dataProvider.fetchAll();
  }

  Future<User> fetchById(int userId) async {
    return this.dataProvider.fetchById(userId);
  }
}
