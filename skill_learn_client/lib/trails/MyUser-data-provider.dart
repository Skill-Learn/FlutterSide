import 'dart:convert';

import 'package:http/http.dart' as http;

import 'MyUser.dart';

class MyUserDataProvider {
  static final String _baseUrl = "http://10.0.2.2:9191/api/v1/MyUsers";

  Future<MyUser> update(int id, MyUser myUser) async {
    final response = await http.put(Uri.parse("$_baseUrl/$id"),
        headers: <String, String>{"Content-Type": "application/json"},
        body: jsonEncode({
          "id": id,
          "username": myUser.username,
          "password": myUser.password,
          "profilePicture": myUser.profilePicture,
          "subscriptions": myUser.subscriptions,
        }));

    if (response.statusCode == 200) {
      return MyUser.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Could not update the myUser");
    }
  }

  Future<List<MyUser>> fetchAll() async {
    final response = await http.get(Uri.parse(_baseUrl));
    if (response.statusCode == 200) {
      final myusers = jsonDecode(response.body) as List;
      return myusers.map((mu) => MyUser.fromJson(mu)).toList();
    } else {
      throw Exception("Could not fetch myusers");
    }
  }
}
