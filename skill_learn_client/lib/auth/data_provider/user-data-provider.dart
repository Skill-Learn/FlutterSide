import 'dart:convert';

import 'package:skill_learn_client/auth/models/user.dart';
import 'package:http/http.dart' as http;

class UserDataProvider {
  static final String _baseUrl = "http://10.0.2.2:3000/auth";

  Future<User> signup(User user) async {
    final http.Response response =
        await http.post(Uri.parse(_baseUrl + "/signup"),
            headers: <String, String>{"Content-Type": "application/json"},
            body: jsonEncode({
              "email": user.email,
              "password": user.password,
            }));

    if (response.statusCode == 201) {
      return User.fromJson(jsonDecode(response.body));
    }
    {
      throw Exception("Failed to create user");
    }
  }

  Future<User> login(User user) async {
    final http.Response response =
        await http.post(Uri.parse(_baseUrl + "/login"),
            headers: <String, String>{"Content-Type": "application/json"},
            body: jsonEncode({
              "email": user.email,
              "password": user.password,
            }));
    if (response.statusCode == 201) {
      return User.fromJson(jsonDecode(response.body));
    }
    throw Exception("Failed to login user");
  }
}
