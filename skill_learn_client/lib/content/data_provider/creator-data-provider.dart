import 'dart:convert';

import 'package:skill_learn_client/content/models/models.dart';
import 'package:http/http.dart' as http;

class CreatorDataProvider {
  static final String _baseUrl = "http://10.0.2.2:9191/api/v1/users";

  Future<List<Creator>> fetchAll() async {
    final response = await http.get(Uri.parse(_baseUrl));
    if (response.statusCode == 200) {
      final creators = jsonDecode(response.body) as List;
      return creators.map((c) => Creator.fromJson(c)).toList();
    } else {
      throw Exception("Could not fetch creators");
    }
  }
}
