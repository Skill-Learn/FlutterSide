import 'dart:convert';

import 'package:skill_learn_client/content/models/models.dart';
import 'package:http/http.dart' as http;

class UserDataProvider {
  static final String _baseUrl = "http://10.0.2.2:9191/api/v1/users";

  Future<List<User>> fetchAll() async {
    final response = await http.get(Uri.parse(_baseUrl));
    if (response.statusCode == 200) {
      final users = jsonDecode(response.body) as List;
      return users.map((c) => User.fromJson(c)).toList();
    } else {
      throw Exception("Could not fetch users");
    }
  }

  Future<User> fetchById(int userId) async {
    final response = await http.get(Uri.parse('$_baseUrl/$userId'));
    if (response.statusCode == 200) {
      final users = jsonDecode(response.body);
      return User.fromJson(users);
    } else {
      throw Exception("Could not fetch user");
    }
  }
}
