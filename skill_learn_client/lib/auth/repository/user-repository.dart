import 'package:skill_learn_client/auth/models/user.dart';
import 'package:skill_learn_client/auth/data_provider/user-data-provider.dart';

class UserRepository {
  final UserDataProvider dataProvider;
  UserRepository(this.dataProvider);

  Future<User> signup(User user) async {
    return this.dataProvider.signup(user);
  }

  Future<User> login(User user) async {
    return this.dataProvider.login(user);
  }
}
