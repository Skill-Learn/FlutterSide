import 'MyUser.dart';
import 'MyUser-data-provider.dart';

class MyUserRepository {
  final MyUserDataProvider dataProvider;
  MyUserRepository(this.dataProvider);

  Future<MyUser> update(int id, MyUser myUser) async {
    return this.dataProvider.update(id, myUser);
  }

  Future<List<MyUser>> fetchAll() async {
    return this.dataProvider.fetchAll();
  }
}
