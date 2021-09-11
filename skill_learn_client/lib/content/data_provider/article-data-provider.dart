import 'dart:convert';

import 'package:skill_learn_client/content/models/models.dart';
import 'package:http/http.dart' as http;

class ArticleDataProvider {
  static final String _baseURL = "http://localhost:3000/api/articles";

  Future<Article> create(Article article) async {
    final http.Response response = await http.post(Uri.parse(_baseURL),
        headers: <String, String>{"Content-Type": "application/json"},
        body: jsonEncode({
          "title": article.title,
          "desciription": article.description,
          "content": article.content,
          // "creator": article.creator,
          "date": article.date,
        }));

    if (response.statusCode == 201) {
      return Article.fromJson(json.decode(response.body));
    }
    {
      throw Exception("Failed to create article");
    }
  }

  Future<Article> fetchByTitle() async {
    final response = await http.get(Uri.parse(_baseURL));

    if (response.statusCode == 200) {
      return Article.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Could not fetch said article");
    }
  }

  Future<List<Article>> fetchAll() async {
    final http.Response response;
    try{
      response = await http.get(Uri.parse(_baseURL));
    }catch(err){
      throw Exception(err);
    }
    
    if (response.statusCode == 200) {
      
        final articles = jsonDecode(response.body) as List; 
        return articles.map((e) => Article.fromJson(e)).toList();
     
    } else {
      throw Exception("Could not fetch articles");
    }
  }

  Future<Article> update(int id, Article article) async {
    final response = await http.put(Uri.parse("$_baseURL/$id"),
        headers: <String, String>{"Content-Type": "application/json"},
        body: jsonEncode({
          "title": article.title,
          "description": article.description,
          "content": article.content,
          "creator": article.creator,
          "date": article.date,
        }));
    if (response.statusCode == 200) {
      return Article.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Could not update the course");
    }
  }

  Future<void> delete(int id) async {
    final response = await http.delete(Uri.parse("$_baseURL/$id"));
    if (response.statusCode != 204) {
      throw Exception("Failed to delete the article");
    }
  }
}
